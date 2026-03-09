package org.vaadin.demo.views.dashboard;

import com.github.appreciated.apexcharts.ApexCharts;
import com.github.appreciated.apexcharts.ApexChartsBuilder;
import com.github.appreciated.apexcharts.config.builder.*;
import com.github.appreciated.apexcharts.config.chart.Type;
import com.github.appreciated.apexcharts.config.legend.Position;
import com.github.appreciated.apexcharts.config.plotoptions.builder.BarBuilder;
import com.github.appreciated.apexcharts.helper.Series;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.Menu;
import com.vaadin.flow.router.PageTitle;
import com.vaadin.flow.router.Route;
import org.springframework.data.domain.Pageable;
import org.vaadin.demo.data.SamplePerson;
import org.vaadin.demo.data.Skill;
import org.vaadin.demo.services.SamplePersonService;
import org.vaadin.lineawesome.LineAwesomeIconUrl;

import java.time.LocalDate;
import java.time.Period;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.stream.Collectors;

@PageTitle("Person Dashboard")
@Route("persons-dashboard")
@Menu(order = 2, icon = LineAwesomeIconUrl.CHART_BAR_SOLID, title = "Person Dashboard")
public class PersonsDashboardView extends VerticalLayout {

    private static final String[] BRAND_COLORS = {
        "#056ff0", "#4b2eff", "#00ade7", "#0A3669", "#452BE7",
        "#25d8d8", "#0565DB", "#271C6F", "#3498db", "#6c5ce7"
    };

    public PersonsDashboardView(SamplePersonService service) {
        setSizeFull();
        setPadding(true);
        setSpacing(true);

        var persons = service.list(Pageable.unpaged()).getContent();

        var skillsChart = createSkillsChart(persons);
        var ageChart = createAgeChart(persons);
        var roleChart = createRoleChart(persons);

        var topRow = new HorizontalLayout(skillsChart, ageChart);
        topRow.setWidthFull();
        topRow.setHeight("50%");

        var bottomRow = new HorizontalLayout(roleChart);
        bottomRow.setWidthFull();
        bottomRow.setHeight("50%");
        bottomRow.setJustifyContentMode(JustifyContentMode.START);

        add(topRow, bottomRow);
    }

    private ApexCharts createSkillsChart(List<SamplePerson> persons) {
        Map<String, Long> skillCounts = persons.stream()
                .filter(p -> !p.getSkills().isEmpty())
                .flatMap(p -> p.getSkills().stream())
                .collect(Collectors.groupingBy(Skill::getName, Collectors.counting()));

        var sorted = skillCounts.entrySet().stream()
                .sorted(Map.Entry.<String, Long>comparingByValue().reversed())
                .collect(Collectors.toMap(Map.Entry::getKey, Map.Entry::getValue,
                        (a, b) -> a, LinkedHashMap::new));

        var chart = ApexChartsBuilder.get()
            .withChart(ChartBuilder.get().withType(Type.BAR).build())
            .withTitle(TitleSubtitleBuilder.get().withText("Team Skills").build())
            .withPlotOptions(PlotOptionsBuilder.get()
                .withBar(BarBuilder.get().withHorizontal(true).withDistributed(true).build())
                .build())
            .withColors(BRAND_COLORS)
            .withLegend(LegendBuilder.get().withShow(false).build())
            .withXaxis(XAxisBuilder.get()
                .withCategories(sorted.keySet().toArray(String[]::new))
                .build())
            .withSeries(new Series<>("Skills",
                sorted.values().stream().map(Long::doubleValue).toArray(Double[]::new)))
            .build();

        chart.setWidthFull();
        chart.setHeight("100%");
        return chart;
    }

    private ApexCharts createAgeChart(List<SamplePerson> persons) {
        var today = LocalDate.now();

        Map<String, Long> cohorts = new TreeMap<>();
        for (var person : persons) {
            if (person.getDateOfBirth() == null) continue;
            int age = Period.between(person.getDateOfBirth(), today).getYears();
            int decade = (age / 10) * 10;
            String label = decade + "\u2013" + (decade + 9);
            cohorts.merge(label, 1L, Long::sum);
        }

        var chart = ApexChartsBuilder.get()
            .withChart(ChartBuilder.get().withType(Type.BAR).build())
            .withTitle(TitleSubtitleBuilder.get().withText("Age Distribution (10-Year Cohorts)").build())
            .withPlotOptions(PlotOptionsBuilder.get()
                .withBar(BarBuilder.get().withDistributed(true).build())
                .build())
            .withColors(BRAND_COLORS)
            .withLegend(LegendBuilder.get().withShow(false).build())
            .withXaxis(XAxisBuilder.get()
                .withCategories(cohorts.keySet().toArray(String[]::new))
                .build())
            .withSeries(new Series<>("Persons",
                cohorts.values().stream().map(Long::doubleValue).toArray(Double[]::new)))
            .build();

        chart.setWidthFull();
        chart.setHeight("100%");
        return chart;
    }

    private ApexCharts createRoleChart(List<SamplePerson> persons) {
        Map<String, Long> roleCounts = persons.stream()
                .filter(p -> p.getRole() != null && !p.getRole().isBlank())
                .collect(Collectors.groupingBy(SamplePerson::getRole, Collectors.counting()));

        var chart = ApexChartsBuilder.get()
            .withChart(ChartBuilder.get().withType(Type.PIE).build())
            .withTitle(TitleSubtitleBuilder.get().withText("Role Distribution").build())
            .withLabels(roleCounts.keySet().toArray(String[]::new))
            .withSeries(roleCounts.values().stream().map(Long::doubleValue).toArray(Double[]::new))
            .withColors(BRAND_COLORS)
            .withLegend(LegendBuilder.get().withPosition(Position.BOTTOM).build())
            .build();

        chart.setWidth("75%");
        chart.setHeight("100%");

        return chart;
    }
}

package org.vaadin.demo.views.dashboard;

import com.vaadin.flow.component.charts.Chart;
import com.vaadin.flow.component.charts.model.*;
import com.vaadin.flow.component.orderedlayout.HorizontalLayout;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.Menu;
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

@Route("persons-dashboard")
@Menu(order = 2, icon = LineAwesomeIconUrl.CHART_BAR_SOLID)
public class PersonsDashboardView extends VerticalLayout {

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

        roleChart.setWidth("50%");
        roleChart.setHeight("50%");

        add(topRow, roleChart);
    }

    private Chart createSkillsChart(List<SamplePerson> persons) {
        // Count skill occurrences
        Map<String, Long> skillCounts = persons.stream()
                .filter(p -> !p.getSkills().isEmpty())
                .flatMap(p -> p.getSkills().stream())
                .collect(Collectors.groupingBy(Skill::getName, Collectors.counting()));

        // Sort by count descending
        var sorted = skillCounts.entrySet().stream()
                .sorted(Map.Entry.<String, Long>comparingByValue().reversed())
                .collect(Collectors.toMap(Map.Entry::getKey, Map.Entry::getValue,
                        (a, b) -> a, LinkedHashMap::new));

        var chart = new Chart(ChartType.BAR);
        var conf = chart.getConfiguration();
        conf.setTitle("Team Skills");

        var x = new XAxis();
        x.setCategories(sorted.keySet().toArray(String[]::new));
        conf.addxAxis(x);

        var y = new YAxis();
        y.setMin(0);
        y.setTitle("Number of Persons");
        conf.addyAxis(y);

        conf.getLegend().setEnabled(false);

        var series = new DataSeries("Skills");
        sorted.forEach((name, count) -> series.add(new DataSeriesItem(name, count)));
        conf.addSeries(series);

        chart.setWidthFull();
        chart.setHeight("100%");
        return chart;
    }

    private Chart createAgeChart(List<SamplePerson> persons) {
        var today = LocalDate.now();

        // Group by decade cohorts
        Map<String, Long> cohorts = new TreeMap<>();
        for (var person : persons) {
            if (person.getDateOfBirth() == null) continue;
            int age = Period.between(person.getDateOfBirth(), today).getYears();
            int decade = (age / 10) * 10;
            String label = decade + "–" + (decade + 9);
            cohorts.merge(label, 1L, Long::sum);
        }

        var chart = new Chart(ChartType.COLUMN);
        var conf = chart.getConfiguration();
        conf.setTitle("Age Distribution (10-Year Cohorts)");

        var x = new XAxis();
        x.setCategories(cohorts.keySet().toArray(String[]::new));
        x.setTitle("Age");
        conf.addxAxis(x);

        var y = new YAxis();
        y.setMin(0);
        y.setTitle("Number of Persons");
        conf.addyAxis(y);

        conf.getLegend().setEnabled(false);

        var series = new ListSeries("Persons",
                cohorts.values().stream().map(Long::intValue).collect(Collectors.toList()));
        conf.addSeries(series);

        chart.setWidthFull();
        chart.setHeight("100%");
        return chart;
    }

    private Chart createRoleChart(List<SamplePerson> persons) {
        Map<String, Long> roleCounts = persons.stream()
                .filter(p -> p.getRole() != null && !p.getRole().isBlank())
                .collect(Collectors.groupingBy(SamplePerson::getRole, Collectors.counting()));

        var chart = new Chart(ChartType.PIE);
        var conf = chart.getConfiguration();
        conf.setTitle("Role Distribution");

        var plotOptions = new PlotOptionsPie();
        plotOptions.setAllowPointSelect(true);
        plotOptions.setCursor(Cursor.POINTER);
        plotOptions.setShowInLegend(true);
        conf.setPlotOptions(plotOptions);

        var series = new DataSeries("Roles");
        roleCounts.forEach((role, count) -> series.add(new DataSeriesItem(role, count)));
        conf.addSeries(series);

        return chart;
    }
}

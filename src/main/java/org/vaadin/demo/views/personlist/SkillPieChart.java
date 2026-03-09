package org.vaadin.demo.views.personlist;

import com.github.appreciated.apexcharts.ApexCharts;
import com.github.appreciated.apexcharts.ApexChartsBuilder;
import com.github.appreciated.apexcharts.config.builder.ChartBuilder;
import com.github.appreciated.apexcharts.config.builder.DataLabelsBuilder;
import com.github.appreciated.apexcharts.config.builder.LegendBuilder;
import com.github.appreciated.apexcharts.config.chart.Type;
import com.vaadin.flow.component.Composite;
import com.vaadin.flow.component.dependency.NpmPackage;

import java.util.Map;

@NpmPackage(value = "@webcomponents/shadycss", version = "1.11.2")
public class SkillPieChart extends Composite<ApexCharts> {

    @Override
    protected ApexCharts initContent() {
        var chart = ApexChartsBuilder.get()
            .withChart(ChartBuilder.get().withType(Type.PIE).build())
            .withLabels("Loading...")
            .withSeries(1.0)
            .withLegend(LegendBuilder.get().withShow(false).build())
            .withDataLabels(DataLabelsBuilder.get()
                .withEnabled(true)
                .withFormatter("function(val, opts) { return opts.w.globals.labels[opts.seriesIndex]; }")
                .build())
            .build();
        chart.setHeight("300px");
        chart.setWidthFull();
        return chart;
    }

    public void refresh(Map<String, Long> skillCounts) {
        var sorted = skillCounts.entrySet().stream()
            .sorted(Map.Entry.<String, Long>comparingByValue().reversed())
            .toList();

        String[] labels = sorted.stream().map(Map.Entry::getKey).toArray(String[]::new);
        Double[] values = sorted.stream().map(e -> e.getValue().doubleValue()).toArray(Double[]::new);

        getContent().setLabels(labels);
        getContent().updateSeries(values);
    }
}

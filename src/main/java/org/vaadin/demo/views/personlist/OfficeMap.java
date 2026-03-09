package org.vaadin.demo.views.personlist;

import com.vaadin.flow.component.HasComponents;
import software.xdev.vaadin.maps.leaflet.MapContainer;
import software.xdev.vaadin.maps.leaflet.basictypes.LIcon;
import software.xdev.vaadin.maps.leaflet.basictypes.LIconOptions;
import software.xdev.vaadin.maps.leaflet.basictypes.LLatLng;
import software.xdev.vaadin.maps.leaflet.basictypes.LPoint;
import software.xdev.vaadin.maps.leaflet.layer.raster.LTileLayer;
import software.xdev.vaadin.maps.leaflet.layer.ui.LMarker;
import software.xdev.vaadin.maps.leaflet.layer.ui.LMarkerOptions;
import software.xdev.vaadin.maps.leaflet.map.LMap;
import software.xdev.vaadin.maps.leaflet.registry.LComponentManagementRegistry;
import software.xdev.vaadin.maps.leaflet.registry.LDefaultComponentManagementRegistry;
import org.vaadin.demo.data.OfficeLocation;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;

public class OfficeMap extends MapContainer {

    private static final String[] MARKER_COLORS = {
        "#056ff0", "#4b2eff", "#00ade7", "#0A3669", "#452BE7",
        "#25d8d8", "#0565DB", "#271C6F", "#3498db", "#6c5ce7",
        "#0f0f0f", "#056ff0", "#4b2eff", "#00ade7", "#0A3669"
    };

    private final LComponentManagementRegistry reg;
    private final LMap map;
    private final Map<Long, LMarker> markerCache = new HashMap<>();
    private final Map<Long, OfficeLocation> officeLocationCache = new HashMap<>();
    private final Map<Long, String> officeColorMap = new HashMap<>();

    public OfficeMap(HasComponents registryOwner, String clickTargetId, List<OfficeLocation> offices,
                     Consumer<Long> onMarkerClicked) {
        this(new LDefaultComponentManagementRegistry(registryOwner), clickTargetId, offices, onMarkerClicked);
    }

    private OfficeMap(LComponentManagementRegistry reg, String clickTargetId, List<OfficeLocation> offices,
                      Consumer<Long> onMarkerClicked) {
        super(reg);
        this.reg = reg;

        map = getlMap();
        map.addLayer(LTileLayer.createDefaultForOpenStreetMapTileServer(reg));
        resetView();

        for (int i = 0; i < offices.size(); i++) {
            OfficeLocation office = offices.get(i);
            String color = MARKER_COLORS[i % MARKER_COLORS.length];
            officeLocationCache.put(office.getId(), office);
            officeColorMap.put(office.getId(), color);

            var icon = createColoredMarkerIcon(color);
            var marker = new LMarker(reg,
                new LLatLng(reg, office.getLatitude(), office.getLongitude()),
                new LMarkerOptions().withIcon(icon));
            marker.bindTooltip(office.getName());
            marker.addTo(map);

            marker.on("click",
                "() => document.getElementById('" + clickTargetId + "').$server.onMarkerClicked("
                    + office.getId() + ")");

            markerCache.put(office.getId(), marker);
        }
    }

    public void resetView() {
        map.setView(new LLatLng(reg, 10, 30), 2);
    }

    public void zoomTo(double latitude, double longitude) {
        map.setView(new LLatLng(reg, latitude, longitude), 5);
    }

    public void refresh(Map<Long, Long> officeCounts) {
        for (var entry : markerCache.entrySet()) {
            Long officeId = entry.getKey();
            LMarker marker = entry.getValue();
            Long count = officeCounts.getOrDefault(officeId, 0L);
            OfficeLocation office = officeLocationCache.get(officeId);

            if (office != null) {
                if (count > 0) {
                    marker.bindTooltip(office.getCity() + " (" + count + ")");
                    marker.addTo(map);
                } else {
                    marker.remove();
                }
            }
        }
    }

    public Map<Long, OfficeLocation> getOfficeLocationCache() {
        return officeLocationCache;
    }

    public Map<Long, String> getOfficeColorMap() {
        return officeColorMap;
    }

    private LIcon createColoredMarkerIcon(String color) {
        var svg = """
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="36" viewBox="0 0 24 36">
                  <path d="M12 0C5.4 0 0 5.4 0 12c0 9 12 24 12 24s12-15 12-24C24 5.4 18.6 0 12 0z" fill="%s" stroke="#fff" stroke-width="3"/>
                  <circle cx="12" cy="12" r="5" fill="white"/>
                </svg>
                """.formatted(color);
        var dataUri = "data:image/svg+xml," + svg
            .replace("\n", "")
            .replace("#", "%23")
            .replace("\"", "'");

        LIconOptions lIconOptions = new LIconOptions();
        lIconOptions.setTooltipAnchor(new LPoint(reg, 0, -36));

        return new LIcon(reg, lIconOptions
                .withIconUrl(dataUri)
                .withIconSize(new LPoint(reg, 29, 43))
                .withIconAnchor(new LPoint(reg, 14, 43))
                .withPopupAnchor(new LPoint(reg, 0, -43)));
    }
}

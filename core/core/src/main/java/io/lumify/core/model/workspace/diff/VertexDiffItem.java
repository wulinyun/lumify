package io.lumify.core.model.workspace.diff;

import io.lumify.core.model.properties.LumifyProperties;
import io.lumify.core.util.JsonSerializer;
import io.lumify.web.clientapi.model.SandboxStatus;
import org.json.JSONObject;
import org.securegraph.Vertex;

public class VertexDiffItem extends DiffItem {
    private final Vertex vertex;
    private final boolean visible;

    public VertexDiffItem(Vertex vertex, SandboxStatus sandboxStatus, boolean visible) {
        super(VertexDiffItem.class.getSimpleName(), sandboxStatus);
        this.vertex = vertex;
        this.visible = visible;
    }

    @Override
    public JSONObject toJson() {
        String title = LumifyProperties.TITLE.getPropertyValue(vertex);

        JSONObject json = super.toJson();
        json.put("vertexId", vertex.getId());
        json.put("title", title);
        json.put("visible", visible);
        json.put("visibilityJson", JsonSerializer.toJsonProperty(LumifyProperties.VISIBILITY_JSON.getProperty(vertex)));
        return json;
    }
}

(function() {
    var defaultNode = "LIVE";
    var nodeId = data.getValueIfPresent('primary_external_node_key', defaultNode);
    return nodeId;
}())
(function() {
    var dept = data.getValueIfPresent('department', helper.skipAttribute());
    if (dept != helper.skipAttribute()) {
        dept = dept.toUpperCase();
        if (dept == 'P' || dept == 'S') { dept = '' }
    }
    return dept;
}());
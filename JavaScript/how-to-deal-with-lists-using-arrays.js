(function() {
    var result = new java.util.ArrayList();
    var secRoles = data.getValueIfNotEmpty('sec_roles', helper.skipAttribute());
    if (secRoles != helper.skipAttribute) {
        var secRolesList = secRoles.split(',');
        for (var i = 0; i < secRolesList.length; i++) {
            result.add(secRolesList[i]);
        }
        return result;
    } else return helper.skipAttribute();
}());
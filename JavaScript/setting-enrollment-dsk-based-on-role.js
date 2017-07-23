var courseId = data.getValue('external_course_key');
var idParts = courseId.split('-');
if (idParts.length == 1) {
    idParts = courseId.split('_');
}
var term = idParts[0];
var role = data.getValue('role');
var sRole = 'student';
if (new RegExp("p|rp|sp").test(role.toLowerCase())) {
    sRole = 'instructor';
}
return term + "-" + sRole;
}())
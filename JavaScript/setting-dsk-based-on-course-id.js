(function() {
    var dsk = '';
    var courseId = data.getValue('external_course_key');
    var idParts = courseId.split('-');
    if (idParts.length == 1) {
        idParts = courseId.split('_');
    }
    var term = idParts[0];
    if (new RegExp("-cor-|-emp-|-nfo-|-nso-|-aedp-|-ot101-").test(courseId.toLowerCase())) {
        dsk = term + "-ORIENTATION";
    } else {
        dsk = term + "-COURSE";
    }
    return dsk;
}())
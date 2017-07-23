(function() {
    var stuid = data.getValue('external_person_key');
    var newstuid = data.getValueIfNotEmpty('new_external_person_key', stuid);
    return newstuid;
}())
(function() {
    var email = data.getValueIfNotEmpty('email', helper.skipAttribute());
    var userId = data.getValue('user_id');
    if (email == helper.skipAttribute()) {
        helper.logError('ERROR: Email address not provided for user, ' + userId + '. Check SIS');
    }
    return email;
}());

/*
TIMESTAMP - Person [create/update, sisframework_script_test]
ERROR: Email address not provided for user, sisframework_script_test. Check SIS
User association from user'sisframework_script_test' to node 'LIVE' created as 'sisframework_script_test_assoc_0'.
User 'sisframework_script_test' processed successfully.
*/
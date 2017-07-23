(function() {
    var avail = data.getValueIfPresent('available_ind', 'Y');
    if (avail == 'Y') {
        return true;
    } else {
        return false;
    }
}());
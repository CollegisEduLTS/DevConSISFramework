(function() {
    var endDate = data.getValueAsCalendarIfNotEmpty('end_date', helper.skipAttribute());
    endDate.add(java.util.Calendar.DATE, 1);
    endDate.set(java.util.Calendar.HOUR_OF_DAY, 0);
    endDate.set(java.util.Calendar.MINUTE, 1);
    endDate.set(java.util.Calendar.SECOND, 0);
    return endDate;
}());
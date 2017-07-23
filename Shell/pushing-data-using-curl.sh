#Create a course or set of courses using Course.txt as the input file
curl.exe -k -u "username:password" \
-H "Content-Type:text/plain" \
--data-binary "@Course.txt" \
https://your.fqdn.tld/webapps/bb-data-integration-flatfile-BBLEARN1/endpoint/course/store

#Gives a response like this:
#Success: Feed File Uploaded.  Use the reference code 29f661966a384d958786e9affbb10a26 to track these records in the logs.

#Using the reference code from above to check the status
curl.exe -k -u "username:password" \
-H "Content-Type:text/plain" \
https://your.fqdn.tld/webapps/bb-data-integration-flatfile-BBLEARN1/endpoint/dataSetStatus/29f661966a384d958786e9affbb10a26

#Gives an XML response like this:
#<dataSetStatus>
#    <completedCount>1</completedCount>
#    <dataIntegrationId type="blackboard.platform.dataintegration.DataIntegration">_3_1</dataIntegrationId>
#    <dataSetUid>29f661966a384d958786e9affbb10a26</dataSetUid>
#    <errorCount>0</errorCount>
#    <lastEntryDate>2017-07-23T12:21:11.893-05:00</lastEntryDate>
#    <machineName>ODRCBBLWB02</machineName>
#    <queuedCount>0</queuedCount>
#    <startDate>2017-07-23T12:21:05.447-05:00</startDate>
#    <warningCount>1</warningCount>
#</dataSetStatus>





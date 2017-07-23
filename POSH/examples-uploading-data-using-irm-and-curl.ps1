Function POSHUploadData($jobendpoint, $cred, $feedfile) {
    #Send the data to the server
    Write-Host "Uploading $feedfile to $jobendpoint"
    $response = try {Invoke-RestMethod -uri $jobendpoint -Credential $cred  -Method POST -ContentType "text/plain" -InFile $feedfile -DisableKeepAlive} catch {$_.Exception.Response}
	return $response
}

Function ReadDataSetStatus($jobendpoint, $cred){
    $response = Invoke-RestMethod -uri $jobendpoint -Credential $cred  -ContentType "text/plain"
    return $response
}

$user = "USERNAME"
$password = ConvertTo-SecureString -String "PASSWORD" -AsPlainText -Force
$cred = New-Object –TypeName System.Management.Automation.PSCredential –ArgumentList $user, $password

$file = "C:\Full\Path\To\Person.txt"
$jobendpoint = "https://your.fqdn.tld/webapps/bb-data-integration-flatfile-BBLEARN1/endpoint/person/store"
$response = POSHUploadData $jobendpoint $cred $file

#gives a response like this:
#Success: Feed File Uploaded.  Use the reference code 852fcbf94d7e41c7bba643bae9b4f557 to track these records in the logs.

#using the reference code from the previous response
$refCode = "852fcbf94d7e41c7bba643bae9b4f557"
$jobendpoint = "https://your.fqdn.tld/webapps/bb-data-integration-flatfile-BBLEARN1/endpoint/dataSetStatus/$refCode"
$response = ReadDataSetStatus $jobendpoint $cred $refCode
$response.dataSetStatus

#gives a response like this:
#completedCount    : 1
#dataIntegrationId : dataIntegrationId
#dataSetUid        : 852fcbf94d7e41c7bba643bae9b4f557
#errorCount        : 0
#lastEntryDate     : 2017-07-23T12:42:28.717-05:00
#machineName       : ODRCBBLWB02
#queuedCount       : 0
#startDate         : 2017-07-23T12:42:27.663-05:00
#warningCount      : 0



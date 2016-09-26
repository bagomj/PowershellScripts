# Creator: Jahanara Bagom
# Script.ps1
# Version: 1.00

$wshell = New-Object -ComObject wscript.shell;
#If 1 is less than 2, then activate Internet explorer
#In this case, if Firefox is not found, the loop will stop once X reaches 3. 
$x = 0;
$b = 1;
$program1 = 'Firefox'
$program2 = 'Internet Explorer'

	While ($x -le $b) {
#AppActivate picks on an application to start
	$wshell.AppActivate($program2)
#Each applictaion will sleep for a given amount of time
	Sleep 4
	$wshell.AppActivate($program1)
	Sleep 4
#If a process cannot be found, it will skip to the next process 
	if((get-process $program2 -ea SilentlyContinue) -Or (get-process $program1 -ea SilentlyContinue) -eq $Null){ 
       echo "Not Running" 
       $x++ 
}
	#if((get-process $program1 -ea SilentlyContinue) -eq $Null){ 
     #  echo "Not Running" 
      # $x++ 
#}
}

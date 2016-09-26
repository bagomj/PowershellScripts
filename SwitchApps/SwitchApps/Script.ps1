# Creator: Jahanara Bagom
# Script.ps1
# Version: 1.00

$wshell = New-Object -ComObject wscript.shell;
$x = 0;# Assigns 
$b = 1;
#If 1 is less than 2, then activate Internet explorer
#In this case, if Firefox is not found, the loop will stop once X reaches 3. 
While ($x -le $b) {
$wshell.AppActivate('Internet Explorer')
Sleep 4
$wshell.AppActivate('Firefox')
Sleep 4
if((get-process "firefox" -ea SilentlyContinue) -eq $Null){ 
       echo "Not Running" 
       $x++ 
}
}

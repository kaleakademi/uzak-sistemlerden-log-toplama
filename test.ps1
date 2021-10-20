Write-Output "Log kontrol:"
Write-Output "Başarılı Giriş:"
Get-WinEvent -LogName 'Security'| Where-Object {$_.ID -eq 4624} 
Write-Output "Başarısız Login Deneme:"
Get-WinEvent -LogName 'Security'| Where-Object {$_.ID -eq 4625} 
Write-Output "Loglar temizlendi:"
Get-WinEvent -LogName 'Security'| Where-Object {$_.ID -eq 1102}
Write-Output "Program veya process calisti:"
Get-WinEvent -LogName 'Security'| Where-Object {$_.ID -eq 4688} 
Write-Output "Yeni bir servis oluşturuldu:"
Get-WinEvent -LogName 'Security'| Where-Object {$_.ID -eq 4697}
Write-Output "Yeni bir kullanıcı oluşturuldu:"
Get-WinEvent -LogName 'Security'| Where-Object {$_.ID -eq 4720}
Write-Output "Yeni bir kulalanıcı enable edildi:"
Get-WinEvent -LogName 'Security'| Where-Object {$_.ID -eq 4722}
Write-Output "Bir kullanıcı disable edildi:"
Get-WinEvent -LogName 'Security'| Where-Object {$_.ID -eq 4725}
Write-Output "Bir kullanıcı silindi:"
Get-WinEvent -LogName 'Security'| Where-Object {$_.ID -eq 4726}
Write-Output "Firewall kuralı eklendi:"
Get-WinEvent -LogName 'Security'| Where-Object {$_.ID -eq 4946}
Write-Output "Firewall kuralı modife edildi:"
Get-WinEvent -LogName 'Security'| Where-Object {$_.ID -eq 4947}
Write-Output "Firewall kuralı silindi:"
Get-WinEvent -LogName 'Security'| Where-Object {$_.ID -eq 4948}
Write-Output "Servis yüklendi:"
Get-WinEvent -LogName 'System'| Where-Object {$_.ID -eq 7045}
Write-Output "Duran bir servis başlatıldı:"
Get-WinEvent -LogName 'System'| Where-Object {$_.ID -eq 7035}
Write-Output "Kullanıcı parola sıfırlama denemesi:"
Get-WinEvent -LogName 'Security'| Where-Object {$_.ID -eq 4724}
Write-Output "Kullanıcı grubu üyeliği eklendi:"
Get-WinEvent -LogName 'Security'| Where-Object {$_.ID -eq 4732}
Write-Output "Sistem bir host ile etkileşim kurdu:"
Get-WinEvent -LogName 'Security'| Where-Object {$_.ID -eq 5156}
Write-Output "Powershellde bir komut çalıştı:"
Get-WinEvent -FilterHashtable @{LogName='Microsoft-Windows-PowerShell/Operational'; ID=4104} | Select-Object -Property Message | Select-String -Pattern 'SecureString'
Write-Output "Dosyaya veya bir diğer objeye erişim:"
Get-WinEvent -LogName 'Security'| Where-Object {$_.ID -eq 4656}
Write-Output "Dosyaya veya bir diğer objeye erişim denemesi:"
Get-WinEvent -LogName 'Security'| Where-Object {$_.ID -eq 4663}
Write-Output "Bir hesabın parola özetine erişilmesi:"
Get-WinEvent -LogName 'Security'| Where-Object {$_.ID -eq 4782}
Write-Output "Ağ paylaşımına erişim erişim:"
Get-WinEvent -LogName 'Security'| Where-Object {$_.ID -eq 5140}
Write-Output "Oturum kapatılması:"
Get-WinEvent -LogName 'Security'| Where-Object {$_.ID -eq 4634}
Write-Output "Yöneticinin oturum açması:"
Get-WinEvent -LogName 'Security'| Where-Object {$_.ID -eq 4672}
Write-Output "Password Policy Checking API çağrıldı:"
Get-WinEvent -LogName 'Security'| Where-Object {$_.ID -eq 4793}
Write-Output "Kerberos ticket yenilendi:"
Get-WinEvent -LogName 'Security'| Where-Object {$_.ID -eq 4770}
Write-Output "Hesap yerel güncelik grubundan kaldırıldı:"
Get-WinEvent -LogName 'Security'| Where-Object {$_.ID -eq 4733}
Write-Output "Yerel grup değiştirildi:"
Get-WinEvent -LogName 'Security'| Where-Object {$_.ID -eq 4735}
Write-Output "Kullanıcı hesabı unlocked edildi:"
Get-WinEvent -LogName 'Security'| Where-Object {$_.ID -eq 4767}
Write-Output "Hesap adı değişti:"
Get-WinEvent -LogName 'Security'| Where-Object {$_.ID -eq 4781}
Write-Output "Pipeline çalıştırma:"
Get-WinEvent -FilterHashtable @{ID=800} | Select-Object -Property Message | Select-String -Pattern 'SecureString'

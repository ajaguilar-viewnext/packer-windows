:: infinityuser public key
if exist a:\infinityuser.pub (
  copy a:\infinityuser.pub C:\Users\infinityuser\.ssh\authorized_keys
) else (
  powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub', 'C:\Users\infinityuser\.ssh\authorized_keys')" <NUL
)

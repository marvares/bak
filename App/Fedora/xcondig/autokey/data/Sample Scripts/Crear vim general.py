keyboard.send_keys("ve ~/Documentos/Nts/Generales/" )
output = system.exec_command("date +%Y_%m_%d_%H_%M_%S.md")
keyboard.send_keys(output)
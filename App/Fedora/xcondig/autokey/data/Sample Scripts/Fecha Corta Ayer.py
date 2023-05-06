output = system.exec_command("date +%x -d 'now - 1 day'")  
keyboard.send_keys(output)
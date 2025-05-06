#!/bin/bash


Bl='\033[30m'
Re='\033[1;31m'
Gr='\033[1;32m'
Ye='\033[1;33m'
Blu='\033[1;34m'
Mage='\033[1;35m'
Cy='\033[1;36m'
Wh='\033[1;37m'

echo -ne """$Re
     .... NO! ...                  ... MNO! ...
   ..... MNO!! ...................... MNNOO! ...
 ..... MMNO! ......................... MNNOO!! .
.... MNOONNOO!   MMMMMMMMMMPPPOII!   MNNO!!!! .
 ... !O! NNO! MMMMMMMMMMMMMPPPOOOII!! NO! ....
    ...... ! MMMMMMMMMMMMMPPPPOOOOIII! ! ...
   ........ MMMMMMMMMMMMPPPPPOOOOOOII!! .....
   ........ MMMMMOOOOOOPPPPPPPPOOOOMII! ...  
    ....... MMMMM..    OPPMMP    .,OMI! ....
     ...... MMMM::   o.,OPMP,.o   ::I!! ...
         .... NNM:::.,,OOPM!P,.::::!! ....
          .. MMNNNNNOOOOPMO!!IIPPO!!O! .....
         ... MMMMMNNNNOO:!!:!!IPPPPOO! ....
           .. MMMMMNNOOMMNNIIIPPPOO!! ......
          ...... MMMONNMMNNNIIIOO!..........
       ....... MN MOMMMNNNIIIIIO! OO ..........
    ......... MNO! IiiiiiiiiiiiI OOOO ...........
  ...... NNN.MNO! . O!!!!!!!!!O . OONO NO! ........
   .... MNNNNNO! ...OOOOOOOOOOO .  MMNNON!........
   ...... MNNNNO! .. PPPPPPPPP .. MMNON!........
      ...... OO! ................. ON! .......
         ................................$Wh
"""

echo -ne "$Wh============================================\n"
echo -ne "$Wh||  $Cy AUTO DETEK ANOMALI SERVER WEB BY K1  $Wh||\n"
echo -ne "============================================\n\n"

echo -ne "$Wh[$Re ➤ $Wh] Mengecek Daftar User di System!\n"
echo -ne "───────────────────────────────────────────────────────────────────────────────────────────────────\n"
awk -F: '{print $1}' /etc/passwd
echo -ne "───────────────────────────────────────────────────────────────────────────────────────────────────\n"
echo -ne "$Wh[$Re ➤ $Wh] Mengecek User Aktif di System!\n"
echo -ne "───────────────────────────────────────────────────────────────────────────────────────────────────\n\n"
w
echo -ne "───────────────────────────────────────────────────────────────────────────────────────────────────\n"
echo -ne "$Wh[$Re ➤ $Wh] Mengecek Port Aktif di System!\n"
echo -ne "───────────────────────────────────────────────────────────────────────────────────────────────────\n\n"
ss -tulnp
echo -ne "───────────────────────────────────────────────────────────────────────────────────────────────────\n"
echo -ne "$Wh[$Re ➤ $Wh] Mengecek Proses Berjalan di System!\n"
echo -ne "───────────────────────────────────────────────────────────────────────────────────────────────────\n\n"
ps aux --sort=-%cpu | head -10
echo -ne "───────────────────────────────────────────────────────────────────────────────────────────────────\n"
echo -ne "$Wh[$Re ➤ $Wh] Mengecek Folder/File yang Aktif di System!\n"
echo -ne "───────────────────────────────────────────────────────────────────────────────────────────────────\n\n"
find {PWD} -type f,d \( -ctime -4 -o -mtime -4 \) -exec stat --format="%y %n" {} \;
echo -ne "───────────────────────────────────────────────────────────────────────────────────────────────────\n"
echo -ne "$Wh[$Re ➤ $Wh] Mengecek Shell Backdoor di System!\n"
echo -ne "$Wh───────────────────────────────────────────────────────────────────────────────────────────────────$Re\n\n"
grep -RIn --include="*.php" -E "shell_exec|exec\(|system\(|passthru\(|cmd\(|getcwd\(|_alfa_php_cmd\(|sh ell_exec\(|proc_open\(|popen\(|base64_decode\(|curl_exec\(|66696c655f6765745f636f6e74656e7473\(" "/home/k1llu/SEIM"
echo -ne "$Wh───────────────────────────────────────────────────────────────────────────────────────────────────\n"
echo -ne "$Wh[$Re ➤ $Wh] Mengecek Corntab Aktif di System!\n"
echo -ne "───────────────────────────────────────────────────────────────────────────────────────────────────\n\n"
cat /etc/crontab
ls -lah /var/spool/cron/crontabs
echo -ne "───────────────────────────────────────────────────────────────────────────────────────────────────\n"

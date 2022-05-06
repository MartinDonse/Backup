Creas el backup en este caso con el nombre scrip-t5.sh
en la terminal pones touch o directamente nano script-tp5.sh
una vez abiero el nano dentro escribis esto
#!/bin/bash

fecha=$(date +%y-%m-%d)
hora=$(date +%H:%M)

fecha ejecuta date muestra el año mes y el dia 
la hora ejecuta la hora y minutos

tar -cvf /home/usuario/backup_$fecha'_'$home/usuario

el -cvf la c significa muestra el proceso de archivo la v se comprime como gzip y la f es que todo se envia a ese archivo

/home/usuario esto es lo que dice en tu terminal por ejemplo el mio dice /home/lnogales el tuyo tendiras que reemplazarlo por el tuyo

esto ya tenes el backup ahora para programar que a las 00:01 hs se cree un backup automaticamente 

crontab -e
te va a aparecer que selecciones un editor le das al que dice /bin/Nano
en el editor pones

01 12 * * * /home/usuario/script-tp5.sh gales
en tu caso cambias por el tuyo reemplazas el usuario y el nombre 

lo guardas y a esa hora se haria una copia
pero podes probar poniendo * * * * * /home/usuari.....
te explico que significa cada * * * * * 
el primero esta diciendo los minutos el segundo la hora el tercero los dias 4 mes 5 año

con esto ya se estaria ejecutando el contrab que seria el backup 

para ver si funciono apreta ls y te va a aparecer backup con la fecha hora actual del backup

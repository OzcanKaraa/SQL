Tarih Formatlari :
-------------------
Select SYSDATE from dual                                                  =>Simdiki zaman
Select SYSDATE TO_CHAR(SYSDATE,'D')    from dual                          =>Haftanin Kacinci Gunu 
Select SYSDATE TO_CHAR(SYSDATE,'DD')   from dual                          =>Ayin Kacinci Gunu 
Select SYSDATE TO_CHAR(SYSDATE,'DDD')  from dual 	                  =>Yilin Kacinci Gunu										
Select SYSDATE TO_CHAR(SYSDATE,'DAY')  from dual 	             	  =>Gun Ismi 
Select SYSDATE TO_CHAR(SYSDATE,'Dy')   from dual 		           =>Gun Ismi (Kisaltilmis)
Select SYSDATE TO_CHAR(SYSDATE,'w')    from dual                          => Ayin Kacinci Haftasi
Select SYSDATE TO_CHAR(SYSDATE,'ww')   from dual                          => Yilin Kacinci Haftasi
Select SYSDATE TO_CHAR(SYSDATE,'mm')   from dual                          => Hangi Ay (no)
Select SYSDATE TO_CHAR(SYSDATE,'MON')  from dual                          => Ay isim (Kisaltilmis)
Select SYSDATE TO_CHAR(SYSDATE,'YYYY') from dual                          => yil
Select SYSDATE TO_CHAR(SYSDATE,'YEAR') from dual                          => yil EN okunusu
Select SYSDATE TO_CHAR(SYSDATE,'HH')   from dual                          =>12 Saatlik format
Select SYSDATE TO_CHAR(SYSDATE,'HH12') from dual                          =>12 Saatlik format
Select SYSDATE TO_CHAR(SYSDATE,'HH24') from dual                          =>24 Saatlik format
Select SYSDATE TO_CHAR(SYSDATE,'HH24:MI:SS')  from dual                   =>24 Saatlik format Dakika Saniye
Select SYSDATE TO_CHAR(SYSDATE,'DD/MM/YYYY HH24:MI:SS') from dual         =>Tarih Saat

--------------------------------------------------------------------------------------------------------------------------------------








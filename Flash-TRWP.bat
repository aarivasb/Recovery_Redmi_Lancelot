@title Recovery TRWP Redmi 9 Lancelot - by Alfredo Rivas - @aarivasb
@color 4f
@echo INFORMACION IMPORTANTE:
@echo Tener Instalada ROM Stock MIUI 12.0.1 A10.
@echo Si no tienes la ROM Stock Instalarla en MODO FASTBOOT.
@echo Presione tecla para empezar...
@pause>nul
@echo [Verficando Telefono]
@fastboot devices
@timeout /t 3
@echo [Instalando Archivo Recovery]
@echo Presione tecla para continuar...
@pause>nul
@fastboot flash recovery lancelot_recovery.img
@timeout /t 3
@echo [Instalando Archivo Misc]
@echo Presione tecla para continuar...
@pause>nul
@fastboot flash misc misc.bin
@timeout /t 3
@echo [Instalando Archivo VBmeta]
@echo Presione tecla para continuar...
@pause>nul
@fastboot --disable-verity --disable-verification flash vbmeta vbmeta.img
@timeout /t 3
@echo [Reiniciando Telefono Modo Recovery]
@echo Presione tecla para continuar...
@pause>nul
@fastboot boot lancelot_recovery.img
@timeout /t 3
@echo Creado por Alfredo Rivas - @aarivasb
@timeout /t 30
@echo Presione tecla para Finalizar...
@pause
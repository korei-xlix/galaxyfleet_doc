#! /bin/sh
#####################################################
# ::Project  : Galaxy Fleet
# ::Admin    : Korei (@korei-xlix)
# ::github   : https://github.com/korei-xlix/galaxyfleet/
# ::Class    : Setup
#####################################################

###function testa () {
###	aav="a"
###}
###testa
###echo $aav

#############################
# Load Function
source server_ctrl/server_ctrl_function.sh

#############################
# global
gDirPath_DataHome="/var/galaxyfleet"
gStr_DataFolderName="galaxyfleet_data"
gDirPath_DstDataFolder="$gDirPath_DataHome/$gStr_DataFolderName"
gDirPath_BackupFolder="$gDirPath_DataHome/galaxyfleet_back"



#####################################################
# Setup
#####################################################
function Setup () {
	#############################
	# Copy Server Control
	
	echo "#############################"
	echo "# Copy Server Control"
	echo "#############################"
	
	wCommand="cp -f server_ctrl/server_ctrl.sh .."
	RunCommand "$wCommand"
	
	echo "success : shortcut file copy"
	echo ""
	
	#############################
	# Backup Galaxy Fleet Data
	
	echo "#############################"
	echo "# Backup Galaxy Fleet Data"
	echo "#############################"
	
	gStr_Date=`date '+%Y%m%d_%H%M%S'`
	gFilePath_Backup="$gDirPath_BackupFolder/back$gStr_Date.tar.gz"
	
	if [ ! -d $gDirPath_DataHome ]; then
		wCommand="mkdir $gDirPath_DataHome"
		RunCommand "$wCommand"
	fi
	
	if [ ! -d $gDirPath_BackupFolder ]; then
		wCommand="mkdir $gDirPath_BackupFolder"
		RunCommand "$wCommand"
	fi
	
	wCommand="tar -zcvf $gFilePath_Backup $gDirPath_DstDataFolder"
	RunCommand "$wCommand"
	
	echo "success : data backup : $gFilePath_Backup"
	echo ""

# 圧縮
# tar -zcvf xxxx.tar.gz directory
# 解凍
# tar -zxvf xxxx.tar.gz

	
	#############################
	# Copy Galaxy Fleet Data
	
	echo "#############################"
	echo "# Copy Galaxy Fleet Data"
	echo "#############################"
	
	wCommand="cp -rf $gStr_DataFolderName $gDirPath_DataHome"
	RunCommand "$wCommand"
	
	echo "success : data folder copy"
	echo ""
	
	#############################
	# Call setup script
	
	echo "#############################"
	echo "# Call setup script"
	echo "#############################"
	
###	python3 galaxyfleet_uwsgi/setup.py
	python3 galaxyfleet_uwsgi/setup.py main
	
	echo ""
	
	#############################
	# service start
###	cd
	bash ../server_ctrl.sh fstart
	
	echo ""
	





	return
}



#####################################################
# Main
#####################################################
Setup

exit 0




#! /bin/sh
#####################################################
# ::Project  : Galaxy Fleet
# ::Admin    : Korei (@korei-xlix)
# ::github   : https://github.com/korei-xlix/galaxyfleet/
# ::Class    : Server Control Function
#####################################################

# sleep 10秒
G_Sleep=10



#####################################################
# Server Start
#####################################################
function ServerStart () {
	echo "#############################"
	echo "# Start cygwin server"
	echo "#############################"
	/usr/sbin/cygserver.exe &
	
	sleep $G_Sleep
	echo ""
	echo "#############################"
	echo "# Start poatgreSQL"
	echo "#############################"
	/usr/local/pgsql/bin/pg_ctl -D /var/postgresql/data -l /var/log/postmaster.log start
	
	sleep $G_Sleep
	ServerStatus
	
	return
}



#####################################################
# Game Start
#####################################################
function GameStart () {


	
	return
}



#####################################################
# Game Restart
#####################################################
function Restart () {


	
	return
}



#####################################################
# Game Stop
#####################################################
function GameStop () {


	
	return
}



#####################################################
# Server Stop
#####################################################
function ServerStop () {
	echo "#############################"
	echo "# Stop poatgreSQL"
	echo "#############################"
	pg_ctl stop
	
	sleep $G_Sleep
	echo ""
	echo "#############################"
	echo "# Stop cygwin server"
	echo "#############################"
	/usr/sbin/cygserver --shutdown
	
	sleep $G_Sleep
	ServerStatus
	
	return
}



#####################################################
# Server Status
#####################################################
function ServerStatus () {
	echo "#############################"
	echo "# view status"
	echo "#############################"
	echo ""
	
	echo "### IPCS ####################"
	ipcs
	echo ""
	
	echo "### PORT ####################"
	netstat -a -n | grep 5432
	echo ""
	
	echo "### JOBS ####################"
	jobs
	echo ""
	
	echo "### PostgreSQL ##############"
	pg_ctl status
	echo ""
	
	return
}



#####################################################
# Run Command
#####################################################
function RunCommand () {
	#############################
	# 引数取得
	wCommand=$1
	
	#############################
	# コマンド表示
	echo $wCommand
	echo ""
	
	#############################
	# コマンド実行
	$wCommand
	
	return
}




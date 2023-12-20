#! /bin/sh
#####################################################
# ::Project  : Galaxy Fleet
# ::Admin    : Korei (@korei-xlix)
# ::github   : https://github.com/korei-xlix/galaxyfleet/
# ::Class    : Server Control
#####################################################

#############################
# Load Function
source galaxyfleet/server_ctrl/server_ctrl_function.sh



#####################################################
# main
#####################################################
if [ $1 == "fstart" ]; then
	#############################
	# Server Start
	ServerStart
elif [ $1 == "start" ]; then
	#############################
	# Game Start
	GameStart
elif [ $1 == "restart" ]; then
	#############################
	# Game Restart
	Restart
elif [ $1 == "stop" ]; then
	#############################
	# Game Stop
	GameStop
else
	#############################
	# Server Status
	ServerStatus

fi

exit 0


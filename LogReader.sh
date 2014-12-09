#!/bin/bash
#Using tail for continuing read log file.

defaultLogPath="/media/BRT_Data/Log/EMM_LOG"

if [[ -z $1 ]]; then
	tail -f $defaultLogPath
else
	tail -f $1
fi

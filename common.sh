#!/bin/bash
#
#	do the live build
#

TITLE="DartScorer"
IGNERR=0

#
#	error handler
#
trap 'error_handler $? $LINENO' ERR

error_handler()
{
	[ $IGNERR ] && return
	echo "ERROR: ($1) occurred on line $2"
	exit 1
}

#
#	EOF
#

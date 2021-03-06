#!/bin/bash
if [ "$#" -ne 0 ]; then
    echo "Illegal number of parameters (zero)"
	exit 0
fi
filebot -script fn:amc --output "/mnt/magneto/videoclub/Film" --log-file amc.log --action move "/mnt/magneto/videoclub/_Complet" -non-strict --def movieFormat="/mnt/magneto/videoclub/Film/{n.replaceAll(/[:]/,'')} ({y})/{n.replaceAll(/[:]/,'')} ({y}, {director}) {vf} {af}" --def subtitles=en,fr --def ut_label=movie --def clean=y --def artwork=y 	
filebot -get-missing-subtitles "$1"
filebot -get-missing-subtitles "$1" --lang fr

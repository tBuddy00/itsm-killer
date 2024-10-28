#!/bin/bash

    # Check if "docker --version" is in the history
#    if history | grep "docker --version" | grep -v 'history' | wc -l -gt 0; then
#        echo "done"
#        break
#    else
#        echo "Please enter 'docker --version' to continue."
#    fi
    # Optional: Sleep to avoid tight loop, uncomment if needed
    # sleep 5

#current version of check
#Check if "docker --version" is in the history
#if [ $(history | grep "docker --version" | grep -v 'history' | wc -l) -gt 0 ]; then
#    echo "done"
#    break
#else
#    echo "Please enter 'docker --version' to continue."
#fi
# Optional: Sleep to avoid tight loop, uncomment if needed
# sleep 5

#Was ich bisher probiert habe:
#1.) history | grep -q "docker --version" && echo "done" || echo "Bitte geben Sie 'docker --version' ein, um fortzufahren."
# -> Fazit: Es lässt mich zum nächsten Kursabschnitt, ohne Eingabe -> Fehler!

#2.) if history | grep -q "docker --version"; then echo "done"; else echo "Bitte geben Sie 'docker --version' ein, um fortzufahren."; fi
# -> Fazit: Einfach grundlegend kein Zugang zum nächsten Kursabschnitt

#!/bin/bash

LOGFILE=docker/basics/step1_version
set -e # exit once any command fails

{

    date

    # Prüfen, ob "docker --version" in der History vorhanden ist
    #if history | grep -q "docker --version"; then
    #    echo "done" # Erfolgsausgabe für den Validator
    #else
    #    echo "Bitte geben Sie 'docker --version' ein, um fortzufahren." >> ${LOGFILE}
    #    exit 1 # Fehlercode bei fehlendem Kommando
    #fi

    docker --version | grep 'docker --version'



} >> ${LOGFILE} 2>&1

echo "done"

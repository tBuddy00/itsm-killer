if ! history | grep -q "cd /itsm; ls -la"; then
    echo "Error: 'cd /itsm; ls -la' has not been executed."
    exit 1
fi

exit 0;
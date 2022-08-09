# Download YT APK from static.titivoot.com

echo "Downloading Youtube APK..."
curl -sLo com.google.android.youtube.apk https://data.titivoot.workers.dev/com.google.android.youtube.apk -H "authorization: $DW_KEY"

checksum_hash=$(curl -s "https://data.titivoot.workers.dev/hash" -H "authorization: $DW_KEY")

if ! echo "$checksum_hash com.google.android.youtube.apk" | sha1sum -c -; then
    echo "Checksum failed" >&2
    exit 1
fi


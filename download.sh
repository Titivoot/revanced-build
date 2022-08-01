# Download YT APK from static.titivoot.com

echo "Downloading Youtube APK..."
curl -sLo com.google.android.youtube.apk https://static.titivoot.com/others/com.google.android.youtube.apk

if ! echo "1ae72c1ff60c98138b84cc463c2a799ed8c59642 com.google.android.youtube.apk" | sha1sum -c -; then
    echo "Checksum failed" >&2
    exit 1
fi


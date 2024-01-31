jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore release-key.jks platforms/android/app/build/outputs/apk/release/app-release-unsigned.apk zticket
zipalign -v 4 platforms/android/app/build/outputs/apk/release/app-release-unsigned.apk platforms/android/app/build/outputs/apk/release/ZTicket.apk
apksigner verify platforms/android/app/build/outputs/apk/release/ZTicket.apk

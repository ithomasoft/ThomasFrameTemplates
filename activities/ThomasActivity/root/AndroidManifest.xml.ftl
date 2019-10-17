<manifest xmlns:android="http://schemas.android.com/apk/res/android"
	package="${packageName}">

    <application>
        <activity android:name="${packageName}.ui.${activityClass}"
		    android:configChanges="keyboard|keyboardHidden|orientation|screenLayout|screenSize|smallestScreenSize|layoutDirection" 
			android:windowSoftInputMode="adjustPan|stateHidden"
			android:screenOrientation="portrait"
            />
       
    </application>
</manifest>
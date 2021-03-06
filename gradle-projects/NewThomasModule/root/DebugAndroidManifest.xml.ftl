<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="${packageName}">

    <uses-permission android:name="android.permission.INTERNET"/>
    <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>
    <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"/>
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>
    <uses-permission android:name="android.permission.ACCESS_WIFI_STATE"/>
    <uses-permission android:name="android.permission.CHANGE_WIFI_STATE"/>
    <uses-permission android:name="android.permission.READ_PHONE_STATE"/>

    <application
        android:name="com.thomas.sdk.Thomas"
        android:allowBackup="false"
     android:icon="@mipmap/ic_launcher"
       android:roundIcon="@mipmap/ic_launcher_round"
        android:supportsRtl="true"
        android:theme="@style/thomas_AppTheme">
		
		<!-- 在单独运行的业务Module的时候需要配置 测试 的BASE_URL -->
		<!-- 在集成业务Module的时候去使用宿主配置的BASE_URL -->
		<meta-data
            android:name="base_url"
            android:value=""/>
		
        <meta-data
            android:name="${packageName}.app.ModuleConfiguration"
            android:value="ModuleConfig"/>		
			
	</application>

</manifest>
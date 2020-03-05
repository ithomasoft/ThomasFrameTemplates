<?xml version="1.0"?>
<recipe>
    <mkdir at="${escapeXmlAttribute(projectOut)}/libs" />
	<mkdir at="${escapeXmlAttribute(resOut)}/anim" />
    <mkdir at="${escapeXmlAttribute(resOut)}/drawable" />
	 <mkdir at="${escapeXmlAttribute(resOut)}/layout" />
	<mkdir at="${escapeXmlAttribute(resOut)}/mipmap-hdpi" />
	<mkdir at="${escapeXmlAttribute(resOut)}/mipmap-xhdpi" />
	<mkdir at="${escapeXmlAttribute(resOut)}/mipmap-xxhdpi" />
	<mkdir at="${projectOut}/src/main/java/${slashedPackageName(packageName)}/adapter" />
    <mkdir at="${projectOut}/src/main/java/${slashedPackageName(packageName)}/app" />
    <mkdir at="${projectOut}/src/main/java/${slashedPackageName(packageName)}/bean" />
    <mkdir at="${projectOut}/src/main/java/${slashedPackageName(packageName)}/fragment" />
    <mkdir at="${projectOut}/src/main/java/${slashedPackageName(packageName)}/helper" />
    <mkdir at="${projectOut}/src/main/java/${slashedPackageName(packageName)}/ui" />
	<mkdir at="${projectOut}/src/main/java/${slashedPackageName(packageName)}/widget" />
	<mkdir at="${projectOut}/src/main/java/${slashedPackageName(packageName)}/event" />
		<mkdir at="${projectOut}/src/main/java/${slashedPackageName(packageName)}/entity" />


    <merge from="root/settings.gradle.ftl"
             to="${escapeXmlAttribute(topOut)}/settings.gradle" />

    <instantiate from="root/build.gradle.ftl"
                   to="${escapeXmlAttribute(projectOut)}/build.gradle" />

	<instantiate from="root/ReleaseAndroidManifest.xml.ftl"
                   to="${escapeXmlAttribute(manifestOut)}/release/AndroidManifest.xml" />
    <instantiate from="root/DebugAndroidManifest.xml.ftl"
                   to="${escapeXmlAttribute(manifestOut)}/debug/AndroidManifest.xml" />
				   			   
	<instantiate from="root/src/ApiConstant.java.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(packageName)}/ApiConstant.java" />
    <instantiate from="root/src/ConstantValues.java.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(packageName)}/ConstantValues.java" />
    <instantiate from="root/src/ModuleParams.java.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(packageName)}/ModuleParams.java" />
				   
	<instantiate from="root/src/ModuleConfiguration.java.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(packageName)}/app/ModuleConfiguration.java" />
	
	<instantiate from="root/src/AppLifecyclesImpl.java.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(packageName)}/app/AppLifecyclesImpl.java" />

    <instantiate from="root/res/values/strings.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/values/strings.xml" />
				   
	<instantiate from="root/res/values/styles.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/values/styles.xml" />
  
    <copy from="root/res/values/colors.xml"
                to="${escapeXmlAttribute(resOut)}/values/colors.xml" />

    <copy from="root://gradle-projects/common/gitignore"
            to="${escapeXmlAttribute(projectOut)}/.gitignore" />

    <#include "root://gradle-projects/common/proguard_recipe.xml.ftl"/>







</recipe>

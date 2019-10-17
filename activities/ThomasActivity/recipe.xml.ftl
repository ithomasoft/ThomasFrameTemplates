<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
 
    <merge from="root/AndroidManifest.xml.ftl"
           to="${projectOut}/src/main/debug/AndroidManifest.xml" />   
	<merge from="root/AndroidManifest.xml.ftl"
           to="${projectOut}/src/main/release/AndroidManifest.xml" />   

<#if needMVP>

<instantiate from="root/src/app_package/SimpleMvpActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/ui/${pageName}Activity.java" />
		   
	<instantiate from="root/src/app_package/SimplePresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/ui/presenter/${pageName}Presenter.java" />

	<instantiate from="root/src/app_package/SimpleModel.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/ui/model/${pageName}Model.java" />
	
	<instantiate from="root/src/app_package/SimpleContract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/ui/contract/${pageName}Contract.java" />

<#else>
<instantiate from="root/src/app_package/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/ui/${pageName}Activity.java" />
</#if>
				   
	<instantiate from="root/res/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${activityToLayout(pageName)}.xml" />
				 
    <open file="${escapeXmlAttribute(resOut)}/layout/${activityToLayout(pageName)}.xml" />
	<open file="${escapeXmlAttribute(srcOut)}/ui/${pageName}Activity.java" />
	<#if needMVP>
	<open file="${escapeXmlAttribute(srcOut)}/ui/contract/${pageName}Contract.java" />
	</#if>
</recipe>

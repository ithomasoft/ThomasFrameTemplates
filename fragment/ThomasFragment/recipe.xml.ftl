<?xml version="1.0"?>
<recipe>
<#if needMVP>

<instantiate from="root/src/app_package/SimpleMvpFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/fragment/${pageName}Fragment.java" />
		   
	<instantiate from="root/src/app_package/SimplePresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/fragment/presenter/${pageName}Presenter.java" />

	<instantiate from="root/src/app_package/SimpleModel.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/fragment/model/${pageName}Model.java" />
	
	<instantiate from="root/src/app_package/SimpleContract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/fragment/contract/${pageName}Contract.java" />

<#else>
<instantiate from="root/src/app_package/SimpleFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/fragment/${pageName}Fragment.java" />
</#if>

 <instantiate from="root/res/layout/fragment_blank.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/fragment_${classToResource(pageName)}.xml" />
	
	<open file="${escapeXmlAttribute(srcOut)}/fragment/${pageName}Fragment.java" />
	<#if needMVP>
	<open file="${escapeXmlAttribute(srcOut)}/fragment/contract/${pageName}Contract.java" />
	</#if>
</recipe>

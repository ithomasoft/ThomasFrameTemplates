<?xml version="1.0"?>
<globals>
    <#include "root://gradle-projects/common/globals.xml.ftl" />
    <#include "root://gradle-projects/common/globals_android_module.xml.ftl" />

    <global id="isLibraryProject" type="boolean" value="${(!(isInstantApp!false) && (isLibraryProject!false))?string}" />
    <global id="isApplicationProject" type="boolean" value="${(!(isInstantApp!false) && !(isLibraryProject!false))?string}" />

    <#include "root://activities/common/kotlin_globals.xml.ftl" />
</globals>

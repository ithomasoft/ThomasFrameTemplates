if (${projectName}_is_module.toBoolean()) {
    apply plugin: 'com.android.library'
} else {
    apply plugin: 'com.android.application'
}
apply from: "../../common_build.gradle"

android {
    defaultConfig {
        if (!${projectName}_is_module.toBoolean()) {
            applicationId "${packageName}"
        }
        versionCode 1
        versionName "1.0.0"

    }

    //resourcePrefix "${projectName}_" //给 Module 内的资源名增加前缀, 避免资源名冲突


    sourceSets {
        main {
            if (${projectName}_is_module.toBoolean()) {
                manifest.srcFile 'src/main/release/AndroidManifest.xml'
            } else {
                manifest.srcFile 'src/main/debug/AndroidManifest.xml'
            }
            jniLibs.srcDirs = ['libs']
        }
    }

}

dependencies {
    implementation fileTree(dir: 'libs', include: ['*.jar'])
	implementation project(path: ':thomas:ThomasSDK')	
}

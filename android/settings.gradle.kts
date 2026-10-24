run {
    try {
        val processEnvClass = Class.forName("java.lang.ProcessEnvironment")
        val theEnvField = processEnvClass.getDeclaredField("theEnvironment")
        theEnvField.isAccessible = true
        (theEnvField.get(null) as? MutableMap<*, *>)?.keys?.removeIf { it.toString() == "ANDROID_PREFS_ROOT" }

        val theCaseInsensitiveEnvField = processEnvClass.getDeclaredField("theCaseInsensitiveEnvironment")
        theCaseInsensitiveEnvField.isAccessible = true
        (theCaseInsensitiveEnvField.get(null) as? MutableMap<*, *>)?.keys?.removeIf { it.toString() == "ANDROID_PREFS_ROOT" }
    } catch (e: Throwable) {
    }
    try {
        val env = System.getenv()
        val field = env.javaClass.getDeclaredField("m")
        field.isAccessible = true
        (field.get(env) as? MutableMap<*, *>)?.keys?.removeIf { it.toString() == "ANDROID_PREFS_ROOT" }
    } catch (e: Throwable) {
    }
    System.clearProperty("ANDROID_PREFS_ROOT")
}

pluginManagement {
    val flutterSdkPath =
        run {
            val properties = java.util.Properties()
            file("local.properties").inputStream().use { properties.load(it) }
            val flutterSdkPath = properties.getProperty("flutter.sdk")
            require(flutterSdkPath != null) { "flutter.sdk not set in local.properties" }
            flutterSdkPath
        }

    includeBuild("$flutterSdkPath/packages/flutter_tools/gradle")

    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
    }
}

plugins {
    id("dev.flutter.flutter-plugin-loader") version "1.0.0"
    id("com.android.application") version "9.1.0" apply false
    id("org.jetbrains.kotlin.android") version "2.1.0" apply false
}

include(":app")


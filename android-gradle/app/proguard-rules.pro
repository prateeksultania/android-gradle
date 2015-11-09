-dontoptimize
-dontobfuscate
-dontskipnonpubliclibraryclasses
-dontskipnonpubliclibraryclassmembers
-dontpreverify
-verbose

# If decide to turn optimization on, use following config:
# -optimizations !code/simplification/arithmetic,!field/*,!class/merging/*
# -optimizationpasses 5
#
# If decide to turn obfuscation on, use the following config:
# -dontusemixedcaseclassnames
# -printmapping mapping.txt
# -keepparameternames
# -keepattributes *

# For our own modules
-dontwarn to.**
-keep class to.** { *; }
-keep interface to.** { *; }

-dontwarn olympus.**
-keep class olympus.** { *; }
-keep interface olympus.** { *; }

-dontwarn arda.**
-keep class arda.** { *; }
-keep interface arda.** { *; }

# For guava
#-dontwarn com.google.common.**
#-keep class com.google.common.** { *; }
#-keep interface com.google.common.** { *; }

# Rules from: https://github.com/google/guava/wiki/UsingProGuardWithGuava

-dontwarn sun.misc.Unsafe
-dontwarn com.google.common.collect.MinMaxPriorityQueue

-keepclasseswithmembers public class com.google.common.** {
    public static void main(java.lang.String[]);
}

-keepclasseswithmembers public class com.google.thirdparty.** {
    public static void main(java.lang.String[]);
}

# For play services
#-dontwarn com.google.android.**
#-keep class com.google.android.** { *; }
#-keep interface com.google.android.** { *; }

-keep class * extends java.util.ListResourceBundle {
    protected java.lang.Object[][] getContents();
}

-keep public class com.google.android.gms.common.internal.safeparcel.SafeParcelable {
    public static final *** NULL;
}

-keepnames @com.google.android.gms.common.annotation.KeepName class *
-keepclassmembernames class * {
    @com.google.android.gms.common.annotation.KeepName *;
}

-keepnames class * implements android.os.Parcelable {
    public static final ** CREATOR;
}

-dontwarn android.app.Notification

# For myjson
-dontwarn com.google.myjson.**
-keep class com.google.myjson.** { *; }
-keep interface com.google.myjson.** { *; }

# For named-regexp
-dontwarn com.google.code.regexp.**
-keep class com.google.code.myjson.** { *; }
-keep interface com.google.code.myjson.** { *; }

# For facebook
-dontwarn com.facebook.**
-keep class com.facebook.** { *; }
-keep interface com.facebook.** { *; }

# For square libraries
-dontwarn com.squareup.**
-dontwarn okio.**
-dontwarn java.nio.file.Files
-dontwarn java.nio.file.Path
-dontwarn java.nio.file.OpenOption
-dontwarn org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement
-keep class com.squareup.** { *; }
-keep interface com.squareup.** { *; }

# For crashlytics
-dontwarn com.crashlytics.**
-keep class com.crashlytics.** { *; }
-keep interface com.crashlytics.** { *; }

# For asynchttp library
-dontwarn com.loopj.android.**
-keep class com.loopj.android.** { *; }
-keep interface com.loopj.android.** { *; }
-keep class dalvik.system.** { *; }
-keep class libcore.** { *; }

# For appsflyer
-dontwarn com.appsflyer.**
-keep class com.appsflyer.** { *; }
-keep interface com.appsflyer.** { *; }

# For crittercism
-dontwarn com.crittercism.**
-keep class com.crittercism.** { *; }
-keep interface com.crittercism.** { *; }

-dontwarn crittercism.android.**
-keep class crittercism.android.** { *; }
-keep interface crittercism.android.** { *; }

# For LEDataStream
-dontwarn com.mindprod.**
-keep class com.mindprod.** { *; }
-keep interface com.mindprod.** { *; }

# For android support libs
#-dontwarn android.support.**
#-keep class android.support.** { *; }
#-keep interface android.support.** { *; }

# For org.apache libs
-dontwarn org.apache.**
-keep class org.apache.** { *; }
-keep interface org.apache.** { *; }

# For joda-time
-dontwarn org.joda.**
-keep class org.joda.** { *; }
-keep interface org.joda.** { *; }

# For slf4j
-dontwarn org.slf4j.**
-keep class org.slf4j.** { *; }
-keep interface org.slf4j.* { *; }

# For json
-dontwarn org.json.**
-keep class org.json.** { *; }
-keep interface org.json.** { *; }

# For logback
-dontwarn ch.qos.**
-keep class ch.qos.** { *; }
-keep interface ch.qos.** { *; }

# For crop-image lib
-dontwarn eu.**
-keep class eu.** { *; }
-keep interface eu.** { *; }

# For jcip annotations lib
-dontwarn net.jcip.**
-keep class net.jcip.** { *; }
-keep interface net.jcip.** { *; }

# For brut
-dontwarn brut.**
-keep class brut.** { *; }
-keep interface brut.** { *; }
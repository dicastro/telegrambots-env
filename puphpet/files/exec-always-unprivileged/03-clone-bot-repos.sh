#!/bin/bash

mkdir -p ~/repos

git clone git@github.com:dicastro/idealistabot.git ~/repos/idealistabot
mkdir ~/workspaces/idealistabot-wksp

git clone git@github.com:dicastro/basicfitbot.git ~/repos/basicfitbot
mkdir ~/workspaces/basicfitbot-wksp

cat <<EOT > ~/workspaces/repos/basicfitbot/basicfitbot [install].launch
<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<launchConfiguration type="org.eclipse.m2e.Maven2LaunchConfigurationType">
<booleanAttribute key="M2_DEBUG_OUTPUT" value="false"/>
<stringAttribute key="M2_GOALS" value="clean dependency:list install"/>
<booleanAttribute key="M2_NON_RECURSIVE" value="false"/>
<booleanAttribute key="M2_OFFLINE" value="false"/>
<stringAttribute key="M2_PROFILES" value=""/>
<listAttribute key="M2_PROPERTIES"/>
<stringAttribute key="M2_RUNTIME" value="EMBEDDED"/>
<booleanAttribute key="M2_SKIP_TESTS" value="true"/>
<intAttribute key="M2_THREADS" value="1"/>
<booleanAttribute key="M2_UPDATE_SNAPSHOTS" value="false"/>
<stringAttribute key="M2_USER_SETTINGS" value=""/>
<booleanAttribute key="M2_WORKSPACE_RESOLUTION" value="false"/>
<stringAttribute key="org.eclipse.jdt.launching.WORKING_DIRECTORY" value="${workspace_loc:/basicfitbot-parent}"/>
</launchConfiguration>
EOT

cat <<EOT > ~/workspaces/repos/basicfitbot/basicfitbot-bot/basicfitbot [run].launch
<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<launchConfiguration type="org.eclipse.jdt.launching.localJavaApplication">
<listAttribute key="org.eclipse.debug.core.MAPPED_RESOURCE_PATHS">
<listEntry value="/basicfitbot-bot/src/main/java/es/qopuir/basicfitbot/Application.java"/>
</listAttribute>
<listAttribute key="org.eclipse.debug.core.MAPPED_RESOURCE_TYPES">
<listEntry value="1"/>
</listAttribute>
<booleanAttribute key="org.eclipse.jdt.launching.ATTR_USE_START_ON_FIRST_THREAD" value="true"/>
<stringAttribute key="org.eclipse.jdt.launching.CLASSPATH_PROVIDER" value="org.eclipse.m2e.launchconfig.classpathProvider"/>
<stringAttribute key="org.eclipse.jdt.launching.MAIN_TYPE" value="es.qopuir.basicfitbot.Application"/>
<stringAttribute key="org.eclipse.jdt.launching.PROJECT_ATTR" value="basicfitbot-bot"/>
<stringAttribute key="org.eclipse.jdt.launching.SOURCE_PATH_PROVIDER" value="org.eclipse.m2e.launchconfig.sourcepathProvider"/>
<stringAttribute key="org.eclipse.jdt.launching.VM_ARGUMENTS" value="-Dserver.port=8080 -Dspring.profiles.active=sopra"/>
</launchConfiguration>
EOT
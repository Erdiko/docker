# Docker
Docker images and container scripts

### XDebug configuration
Into this branch has been installed and enabled XDebug.

Before to start make sure if is enabled XDebug into the PHP container:

```
$ php -i | grep xdebug
```

The remote_host value is setup dinamically, so only is necessary set in your IDE  the remote folders, (e.g. PHPStorm).

Go to "Run -> Edit Configurations", then select the green plus icon and select "PHP Web Application"

![alt text](/images/create_web_application.png "Create Debug Config")

Create a new Server e.g. for user-admin:

IMPORTANT: Check "User Path Mappings"

![alt text](/images/path_mappings.png "Set Path Mappings")


To use XDebug on CLI:

Make sure that you have this ENV var into the PHP container:

```
$ echo XDEBUG_CONFIG
```

Then create a new Debug Configuration:

Go to "Run -> Edit Configurations", then select the green plus icon and select "PHP Remote Debug"

![alt text](/images/cli.png "CLI Config")

Then just you need start the cli debug and execute something into the console, for example a PHPUnitTests
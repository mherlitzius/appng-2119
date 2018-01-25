# appng-2119

This application is used for testing the issue described in https://appng.org/jira/browse/APPNG-2119.

It is based on the `appng-maven-archetype` and contains in addition:
* a [custom.xsl](https://github.com/mherlitzius/appng-2119/blob/master/application-home/xsl/custom.xsl)
* the custom XSL is referenced in the [action](https://github.com/mherlitzius/appng-2119/blob/master/application-home/conf/actions.xml#L9)
* the custom XSL renders an `<img>`-Tag, which draws an [image, located in the resources folder](https://github.com/mherlitzius/appng-2119/blob/master/application-home/resources/Darth-Vader-icon_34501.png)

This application can be used to test the usage of
* custom XSL stylesheets
* custom resources

Custom XSL stylesheets should be working in both Linux and Windows environments, while referencing custom resources has not been working in Windows environments. This has been resolved in above mentioned ticket.

(The Darth Vader icon has been found at https://icon-icons.com/icon/darth-vader-star-wars/34501)

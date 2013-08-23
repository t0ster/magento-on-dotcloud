Magento on dotCloud
==================

This is the easiest way to launch a Magento website on dotCloud.
Just follow these easy steps and in the end you'll have your Magento site running on dotCloud.

To run this code on dotCloud, you need a FREE `dotCloud account
<https://www.dotcloud.com/register.html>`_ .

More info on installing Magento can also be found `HERE
<http://www.magentocommerce.com/knowledge-base/entry/magento-installation-guide>`_

Install the `CLI
<http://docs.dotcloud.com/0.9/firststeps/install/>`_
(Command Line Interface)
Then clone this repository, and push it to dotCloud::

  git clone git://github.com/Donaldd/magento-on-dotcloud.git
  cd magento-on-dotcloud
  dotcloud create mymagentoapp
  dotcloud push

This can take up to 10 minutes, but in the end your Magento site will be running on dotCloud, to finalize your magento setup simply run::

  dotcloud open

You can then continue until you reach the configuration page. Here you'll need to enter your database credentials for your MySQL database. Your Database Name is "magento" and your User Name is "root". The other credentials you can get from the dashboard or with the following command::

  dotcloud env list

Everything you need is in here. You need to look for a line similar to this one::

  DOTCLOUD_DB_MYSQL_URL=mysql://root:A5TH84K6WAsxGDxmJD8H@mymagentoapp-donaldd.azva.dotcloud.net:47418

In this case Host is "mymagentoapp-donaldd.azva.dotcloud.net:47418" and User Password is "A5TH84K6WAsxGDxmJD8H".
Tables Prefix should be left empty.

Check the checkbox for "Skip Base URL Validation Before the Next Step", leave everything else the way it is and click continue.

Your browser might time out and give you the following error::

  Error 324 (net::ERR_EMPTY_RESPONSE): The server closed the connection without sending any data.

To solve this just reload your browser after of couple seconds.

Happy hacking!

You can also learn more by diving into `dotCloud documentations
<http://docs.dotcloud.com/>`_, especially the two for the `PHP service
<http://docs.dotcloud.com/services/php/>`_ and `MySQL service
<http://docs.dotcloud.com/0.9/services/mysql/>`_ which is used by this app.

Feel free to also check out my `Blog
<http://www.donckers.co/>`_


Files to Link
=============

var
media
app/etc/local.xml
downloader/cache.cfg
downloader/connect.cfg
downloader/.cache

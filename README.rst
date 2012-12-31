Magento on dotCloud
==================

This is the easiest way to launch a Magento website on dotCloud, it takes less than 2 minutes to get your Magento site in the Cloud.
It works out of the box, just follow these easy steps and in the end you'll have our Magento site running on dotCloud.

To run this code on dotCloud, you need a FREE `dotCloud account
<https://www.dotcloud.com/register.html>`_ .

Install the `CLI
<http://docs.dotcloud.com/0.9/firststeps/install/>`_ 
(Command Line Interface)
Then clone this repository, and push it to dotCloud::

  git clone git://github.com/Donaldd/magento-on-dotcloud.git
  cd magento-on-dotcloud
  echo "<?php" > magento/wp-salt.php ; curl https://api.magento.org/secret-key/1.1/salt/ >> magento/wp-salt.php
  dotcloud create mymagentoapp 
  dotcloud push

Your Magento site is now running on dotCloud, to finalize your magento setup 
simply run::
  dotcloud open

Happy hacking!

You can also learn more by diving into `dotCloud documentations
<http://docs.dotcloud.com/>`_, especially the two for the `PHP service
<http://docs.dotcloud.com/services/php/>`_ and `MySQL service 
<http://docs.dotcloud.com/0.9/services/mysql/>`_ which is used by this app.
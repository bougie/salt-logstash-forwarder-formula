salt-logstash-forwarder-formula
=====================

Please use salt-filebeat-formula instead if you are on a supported OS. This
formula is only made cause filebeat is not currently in FreeBSD 10 ports tree.

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``logstash-forwarder``
------------

Runs the state to install logstash-forwarder and configure the common files.

``logstash-forwarder.install``
--------------------

Install logstash-forwarder

``logstash-forwarder.config``
-------------------

Manage logstash-forwarder configuration file.

``logstash-forwarder.service``
---------------------

Manage the startup and running state of logstash-forwarder.

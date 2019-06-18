#!/bin/bash

puppet module install puppet-collectd --version 10.1.0
puppet module install puppet-prometheus --version 6.4.0
puppet apply /puppet/install.collectd.yml
puppet apply /puppet/install.node.exporter.yml

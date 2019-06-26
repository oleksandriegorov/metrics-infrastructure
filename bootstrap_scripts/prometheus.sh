#!/bin/bash

puppet module install puppet-prometheus --version 6.4.0
puppet apply /puppet/install.prometheus.yml
puppet apply /puppet/install.node.exporter.infra.yml

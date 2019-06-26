#!/bin/bash

puppet module install puppet-grafana --version 6.0.0
puppet module install puppet-prometheus --version 6.4.0
puppet apply /puppet/install.grafana.yml
puppet apply /puppet/install.node.exporter.infra.ym

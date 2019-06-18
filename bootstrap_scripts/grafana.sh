#!/bin/bash

puppet module install puppet-grafana --version 6.0.0
puppet apply /puppet/install.grafana.yml

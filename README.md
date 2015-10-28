# vmware_dem_worker

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with vmware_dem_worker](#setup)
    * [What vmware_dem_worker affects](#what-vmware_dem_worker-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with vmware_dem_worker](#beginning-with-vmware_dem_worker)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

This Module manage the VMware DEM-Worker service within a vRealize automation center environment. It will make sure that the service is enabled and up and running.

## Module Description

The name of the VMware DEM-Worker service is different on every Node used within vRealize Automation Center. The module creates a custom fact with the current name of the DEM-Worker service inside so it can be used within the init.pp of the module to manage the service.

## Usage

You only have to use the vmware_dem_worker class. There are no parameters to define.

## Reference

Facter vmwaredem = Name of the Service that will be managed with the module.
Manifest init.pp = Used to manage the Service "VMware DEM-Worker..."

## Limitations

Only tested with Windows 2008 R2 and 2012 R2

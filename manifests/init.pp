# == Class: vmware_dem_worker

class vmware_dem_worker {
  service { $vmwaredem:
    ensure => 'running',
    enable => true,
  }
}

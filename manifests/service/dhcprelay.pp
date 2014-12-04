define vyatta::service::dhcprelay (
  $ensure = present,
  $configuration = {},
  $dhcprelay = $name,
) {
  concat::fragment { "dhcprelay_${dhcprelay}":
    target  => "${vyatta::configuration_file}",
    content => template('vyatta/dhcprelay.erb'),
    order   => 401,
  }
}

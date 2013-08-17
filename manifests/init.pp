class matplotlib (
  $provider      = $matplotlib::params::provider,
  $install_latex = $matplotlib::params::install_latex,
) inherits matplotlib::params {

  case $provider {
    "pip":   {
      class { "matplotlib::pip":
        install_latex => $install_latex,
      }
    }
    default: {
      fail("non-pip installation not supported yet")
    }
  }
  
}

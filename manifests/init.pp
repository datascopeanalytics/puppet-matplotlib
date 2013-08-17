class matplotlib (
  $install_latex = $matplotlib::params::install_latex,
) inherits matplotlib::params {

  # install whatever requirements are necessary
  class { "matplotlib::requirements":
    install_latex => $install_latex,
  }
  
  # install matplotlib via pip
  package { "matplotlib":
    ensure   => installed,
    provider => pip,
    require  => Class["Matplotlib::Requirements"],
  }
  
}

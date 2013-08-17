# install the latest version of matplot lib with pip. make sure to get
# all of the system dependencies first, though!
class matplotlib::pip ( $install_latex ) {
  
  class { "matplotlib::pip_requirements":
    install_latex => $install_latex,
  }

  package { "matplotlib":
    ensure   => installed,
    provider => pip,
    require  => Class["Matplotlib::Pip_requirements"],
  }

}

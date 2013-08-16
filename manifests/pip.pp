# install the latest version of matplot lib with pip. make sure to get
# all of the system dependencies first, though!
class matplotlib::pip inherits matplotlib::params {
  require matplotlib::pip_requirements

  package { "matplotlib":
    ensure   => installed,
    provider => pip,
  }

}

# all requirements come from
# http://matplotlib.org/users/installing.html#build-requirements
#
# Only things that are not already shipped with matplotlib and are not
# required by the GUI are included here. The goal is for this to be as
# lightweight as possible by default.
class matplotlib::pip_requirements (
  $install_latex = $matplotlib::params::install_latex,
) inherits matplotlib::params {

  if ! defined( Package[$numpy] ) {
    package { $numpy:
      ensure => installed,
    }
  }
  
  if ! defined( Package["python-dateutil"] ) {
    package { "python-dateutil":
      ensure   => installed,
      provider => pip,
    }
  }
  
  # # REQUIRED FOR GUI
  # if ! defined( Package["tornado"] ) {
  #   package { "tornado":
  #     ensure   => installed,
  #     provider => pip,
  #   }
  # }

  if ! defined( Package["pyparsing"] ) {
    package { "pyparsing":
      ensure   => installed,
      provider => pip,
    }
  }
  
  # # LOCAL VERSION INCLUDED WITH MATPLOTLIB
  # if ! defined( Package["pycxx"] ) {
  #   package { "pycxx":
  #     ensure   => installed,
  #     provider => pip,
  #   }
  # }

  # # REQUIRED FOR GUI
  # if ! defined( Package["libagg"] ) {
  #   package { "libagg":
  #     ensure   => installed,
  #     provider => pip,
  #   }
  # }

  if ! defined( Package[$freetype] ) {
    package { $freetype:
      ensure => installed,
    }
  }
  
  if ! defined( Package[$png] ) {
    package { $png:
      ensure => installed,
    }
  }
  
  if ! defined( Package["distribute"] ) {
    package { "distribute":
      ensure   => latest,
      provider => pip,
    }
  }

  if $install_latex {
    if ! defined( Package[$latex] ) {
      package { $latex:
        ensure   => installed,
      }
    }
    if ! defined( Package[$dvipng] ) {
      package { $dvipng:
        ensure   => installed,
      }
    }
  }
  
}

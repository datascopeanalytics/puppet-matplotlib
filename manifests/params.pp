class matplotlib::params {
  $_os_failure = "operating stystem ${operatingsystem} not yet supported"
  
  # use pip by default to get the latest and greatest version
  $provider = "pip"

  $numpy = $operatingsystem ? {
    /(?i-mx:ubuntu|debian)/ => 'python-numpy',
    default                 => fail($_os_failure),
  }

  # whatever package provides freetype2 + freetype-config command
  $freetype = $operatingsystem ? {
    /(?i-mx:ubuntu|debian)/ => 'libfreetype6-dev',
    default                 => fail($_os_failure),
  }
  
  $png = $operatingsystem ? {
    /(?i-mx:ubuntu|debian)/ => 'libpng12-dev',
    default                 => fail($_os_failure),
  }

  # latex package name for particular system
  $install_latex = false
  $latex = $operatingsystem ? {
    /(?i-mx:ubuntu|debian)/ => 'texlive',
    default                 => fail($_os_failure),
  }
  $dvipng = $operatingsystem ? {
    /(?i-mx:ubuntu|debian)/ => 'dvipng',
    default                 => fail($_os_failure),
  }
  
}

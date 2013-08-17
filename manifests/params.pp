class matplotlib::params {
  
  # use pip by default to get the latest and greatest version
  $provider = "pip"

  # by default, do not install latex as it takes quite a long time
  $install_latex = false
  
  case $operatingsystem {
    /(?i-mx:ubuntu|debian)/:   {
      $numpy    = 'python-numpy'
      $freetype = 'libfreetype6-dev'
      $png      = 'libpng12-dev'
      $latex    = 'texlive'
      $dvipng   = 'dvipng'
    }
    default: {
      fail("operating stystem ${operatingsystem} not yet supported")
    }
  }

}

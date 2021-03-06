class matplotlib::params {
  
  # by default, do not install latex as it takes quite a long time
  $install_latex = false
  
  case $operatingsystem {
    /(?i-mx:ubuntu|debian)/:   {

      # tested on Ubuntu 12.04
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

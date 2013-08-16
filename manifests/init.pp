class matplotlib (
  $provider = $matplotlib::params::provider,
  $install_latex = $matplotlib::params::include_latex,
) inherits matplotlib::params {

  case $provider {
    "pip":   { include matplotlib::pip }
    default: { fail("non-pip installation not supported yet") }
  }
  
}

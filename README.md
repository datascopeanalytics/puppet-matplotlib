puppet-matplotlib
=================

Puppet scripts for
[installing matplotlib](http://matplotlib.org/users/installing.html)
via pip. This currently supports installation via pip on Debian/Ubuntu
so that GUI is not required (e.g., avoid installing X11). Basic usage:

    class { 'matplotlib': }

Want to use LaTeX to manage all of the
[text layout in matplotlib](http://matplotlib.org/users/usetex.html)?

    class { 'matplotlib':
      install_latex => true,
    }

Note that the goal of this module is to provide a GUI-less version of
matplotlib (which is useful for headless virtual machines, for
example). If you want to install matplotlib, GUI and all, it is fairly
straightforward to do so with
[any standard package manager](http://matplotlib.org/users/installing.html#build-requirements).

Please feel free to contribute installation capability for other linux
distributions and issue a pull request!

puppet-matplotlib
=================

Puppet scripts for
[installing matplotlib](http://matplotlib.org/users/installing.html). This
currently supports installation via pip on Debian/Ubuntu so that GUI
is not required (e.g., avoid installing X11). Basic usage:

```ruby
class { 'matplotlib': }
```

Want to use LaTeX to manage all of the
[text layout in matplotlib](http://matplotlib.org/users/usetex.html)?

```ruby
class { 'matplotlib':
  install_latex => true,
}
```

If you want to install matplotlib, GUI and all, it is fairly
straightforward to do so with
[any standard linux package manager](http://matplotlib.org/users/installing.html#build-requirements).

Please feel free to contribute installation capability for other linux
distributions and issue a pull request!

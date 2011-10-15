# Symphony Bootstrap Ensemble

## A Responsive Development Toolkit

- Version: 0.1
- Release Date: October 15, 2011
- Repository URL: <https://github.com/builders/sym-bootstrap>
- Demo: <http://sym.domain7.com/demo/bootstrap/>
- Download: <https://github.com/downloads/builders/sym-bootstrap/bootstrap-ensemble.zip>

Bootstrap is Twitter's toolkit for kickstarting CSS for websites, apps, and more. It includes base CSS styles for typography, forms, buttons, tables, grids, navigation, alerts, and more.

To view the original -- checkout <http://twitter.github.com/bootstrap>!

For this ensemble, the original has been modified to use the [Sections Grid](http://markuplibrary.org/templates/grids/) from the [Markup Library](http://markuplibrary.org/) to enable the markup and styles from the Bootstrap toolkit to be used in [responsive web design](http://www.abookapart.com/products/responsive-web-design).

The ensemble demonstrates the possibility of using two sections in Symphony to manage snippets of HTML and dynamically arrange the content of a complex page layout, using a fluid grid system. The layout is based on modifications to [Bootstrap, from Twitter](http://twitter.github.com/bootstrap/) to create a [responsive version of Bootstrap](http://domain7.com/mobile/tools/bootstrap/responsive/), as [a fork](https://github.com/domain7/bootstrap/tree/responsive) of the [original repository](https://github.com/twitter/bootstrap/) on GitHub.

### Clone the Git Repository for the Ensemble

The ensemble pulls the [responsive branch](https://github.com/domain7/bootstrap/tree/responsive) of the Domain7 fork into the workspace as a submodule. To clone the ensemble repository, use the following command:

	git clone --recursive git://github.com/builders/sym-bootstrap.git bootstrap

This will clone version 2.2.3 of the Symphony core and recursively clone all submodules, including extensions and the workspace, to be able to install [Symphony with the responsive version of Bootstrap](http://sym.domain7.com/demo/bootstrap/).

### Download the Ensemble

Or, if you don't want to use Git, just [download the complete ensemble](https://github.com/builders/sym-bootstrap/downloads) from GitHub as a [ZIP archive](https://github.com/downloads/builders/sym-bootstrap/bootstrap-ensemble.zip).

### Installing Symphony

For instructions on installing Symphony, refer to the README file in the [master branch of this ensemble](https://github.com/builders/sym-bootstrap/tree/master), which is a fork of the master branch of the [Symphony CMS repository](https://github.com/symphonycms/symphony-2/), modified to include submodules for additional extensions and the workspace. You can also find guides for [installing](http://symphony-cms.com/learn/tutorials/view/install-symphony/) and [using](http://symphony-cms.com/learn/beginners/) Symphony on the Symphony CMS site.

### Just the HTML and CSS

Or, if you just want the [HTML and CSS](http://domain7.com/mobile/tools/bootstrap/responsive/), just clone the [responsive branch](https://github.com/domain7/bootstrap/tree/responsive) of the Domain7 fork of the Bootstrap toolkit.

	git clone --branch responsive git://github.com/domain7/bootstrap.git

All changes have been added to the [css](https://github.com/domain7/bootstrap/tree/responsive/css) directory, and are demonstrated by the [index.html](https://github.com/domain7/bootstrap/blob/responsive/responsive/index.html) in the [responsive](https://github.com/domain7/bootstrap/tree/responsive/responsive) directory. A [responsive page template example](http://domain7.com/mobile/tools/bootstrap/examples/responsive.html) has also been added to the [examples](https://github.com/domain7/bootstrap/tree/responsive/examples) directory.

### A Work in Progress

The responsive version is still a work in progress and the CSS has not been optimized or minimized. There is still work to be done on the form fields, navigation and other design patterns to optimize them for use in responsive web design.

As always, feel free to fork the repository, make changes and submit a pull request to improve on this first attempt at a responsive version of Bootstrap.

### Issues

Please log any issues you find for the responsive version of Bootstrap using the [issues tracker](https://github.com/domain7/bootstrap/issues) on GitHub.

Please log any issues you find for the Symphony Bootstrap Ensemble using the [issues tracker](https://github.com/builders/sym-bootstrap/issues) on GitHub.

Please log any issues you find for Symphony CMS using the [issues tracker](https://github.com/symphonycms/symphony-2/issues) on GitHub.


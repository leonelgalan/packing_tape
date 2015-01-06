name 'packing_tape'
maintainer 'Leonel Galán'
maintainer_email 'leonel@smashingboxes.com'
license 'All rights reserved'
description 'Installs/Configures packing_tape'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.0'

depends 'apt'
depends 'user'
depends 'ruby_build'
depends 'rbenv'
depends 'nginx'
depends 'database'
depends 'postgresql'
depends 'hello_world'

supports 'ubuntu'

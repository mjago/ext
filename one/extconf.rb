# Loads mkmf which is used to make makefiles for Ruby extensions
require 'mkmf'

# Give it a name
extension_name = 'my_test'

# The destination
dir_config(extension_name)

#create_header
# Do the work
create_makefile(extension_name)

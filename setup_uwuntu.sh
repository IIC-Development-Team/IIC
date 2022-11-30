#SCRIPT SHOULD WORK ON:
#   -Ubuntu
#   -Debian
#   -ZorinOS
#   -Mint

#INSTALL CLANG LIBRARY SO GEMS CAN BUILD THEIR NATIVE EXTENSIONS
sudo apt install clang
#INSTALL RUBY + DEVELOPMENT TOOLS
sudo apt install ruby ruby-dev ruby-bundler
#INSTALL ROR
sudo gem install rails --no-document
#BUNDLE GEMS
sudo bundle install
#MIGRATE DATABASE
rake db:migrate
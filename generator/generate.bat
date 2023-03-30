vagrant up --provider virtualbox

vagrant package --output bolt_slave.box slave
vagrant box remove bolt/slave
vagrant box add bolt/slave bolt_slave.box
del bolt_slave.box

vagrant package --output bolt_master.box master
vagrant box remove bolt/master
vagrant box add bolt/master bolt_master.box
del bolt_master.box

vagrant destroy --force
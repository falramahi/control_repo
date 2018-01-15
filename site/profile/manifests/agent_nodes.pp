class profile::agent_nodes {
  include dockeragent
  dockeragent::node { 'web.puppet.vm': }
  dockeragent::node { 'db.puppet.vm': }
  host {'web.pupep.vm':
    ensure => present,
    ip     => '172.18.0.3',
  }
  host {'db.pupep.vm':
    ensure => present,
    ip     => '172.18.0.3',
  }
}

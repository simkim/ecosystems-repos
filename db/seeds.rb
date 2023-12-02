default_hosts = [
  {name: 'GitHub', url: 'https://github.com', kind: 'github'},
  {name: 'GitLab.com', url: 'https://gitlab.com', kind: 'gitlab'},
  {name: 'Bitbucket.org', url: 'https://bitbucket.org', kind: 'bitbucket'},
  {name: 'SourceHut', url: 'https://sr.ht', kind: 'sourcehut'},
  {name: 'Gitea.com', url: 'https://gitea.com', kind: 'gitea'},
  {name: "Codeberg.org", url: "https://codeberg.org", kind: "gitea", org: 'Codeberg-org'},
  {name: "git.fsfe.org", url: "https://git.fsfe.org", kind: "gitea", org: 'fsfe'},
  {name: "opendev.org", url: "https://opendev.org", kind: "gitea", org: 'openstack-infra'},
  {name: "code-repo.d4science.org", url: "https://code-repo.d4science.org", kind: "gitea", org: 'd4science'},
  {name: "salsa.debian.org", url: "https://salsa.debian.org", kind: "gitlab", org: 'debian'},
  {name: "gitlab.haskell.org", url: "https://gitlab.haskell.org", kind: "gitlab", org: 'haskell'},
  {name: "framagit.org", url: "https://framagit.org", kind: "gitlab", org: 'framasoft'},
  {name: "gitlab.gentoo.org", url: "https://gitlab.gentoo.org", kind: "gitlab", org: 'gentoo'},
  {name: "gitlab.freedesktop.org", url: "https://gitlab.freedesktop.org", kind: "gitlab", org: 'freedesktop'},
  {name: "gitlab.arm.com", url: "https://gitlab.arm.com", kind: "gitlab", org: 'ARM-software'},
  {name: "invent.kde.org", url: "https://invent.kde.org", kind: "gitlab", org: 'kde'},
  {name: "gitlab.xfce.org", url: "https://gitlab.xfce.org", kind: "gitlab", org: 'xfce-mirror'},
  {name: "gitlab.alpinelinux.org", url: "https://gitlab.alpinelinux.org", kind: "gitlab", org: 'alpinelinux'},
  {name: "git.pleroma.social", url: "https://git.pleroma.social", kind: "gitlab", org: 'pleroma-social'},
  {name: "git.gusted.xyz", url: "https://git.gusted.xyz/", kind: "forgejo"},
  {name: "git.tubul.net", url: "https://git.tubul.net", kind: "forgejo"},
  {name: "git.batsense.net", url: "https://git.batsense.net", kind: "forgejo"},
  {name: "code.forgejo.org", url: "https://code.forgejo.org", kind: "forgejo"},
  {name: "git.feldspaten.org", url: "https://git.feldspaten.org", kind: "forgejo"},
  {name: "git.berlin.ccc.de", url: "https://git.berlin.ccc.de", kind: "forgejo"},
  {name: "git.freetards.xyz", url: "https://git.freetards.xyz", kind: "forgejo"},
  {name: "git.tecosaur.net", url: "https://git.tecosaur.net", kind: "forgejo"},
  {name: "source.mcwhirter.io", url: "https://source.mcwhirter.io", kind: "forgejo"},
  {name: "git.leafee98.com", url: "https://git.leafee98.com", kind: "forgejo"},
  {name: "git.systemausfall.org", url: "https://git.systemausfall.org", kind: "forgejo"},
  {name: "git.mastodont.cat", url: "https://git.mastodont.cat", kind: "forgejo"},
  {name: "forgejo.sny.sh", url: "https://forgejo.sny.sh", kind: "forgejo"},
  {name: "git.joinplu.me", url: "https://git.joinplu.me", kind: "forgejo"},
  {name: "git.gmem.ca", url: "https://git.gmem.ca", kind: "forgejo"},
  {name: "gitea.jotoho.de", url: "https://gitea.jotoho.de", kind: "forgejo"},
  {name: "git.trwnh.com", url: "https://git.trwnh.com", kind: "forgejo"},
  {name: "git.woodbine.nyc", url: "https://git.woodbine.nyc", kind: "forgejo"},
  {name: "git.kabelsalat.ch", url: "https://git.kabelsalat.ch", kind: "forgejo"},
  {name: "git.friendi.ca", url: "https://git.friendi.ca", kind: "forgejo"},
  {name: "git.chinwag.org", url: "https://git.chinwag.org", kind: "forgejo"},
  {name: "git.proyectozero.org", url: "https://git.proyectozero.org", kind: "forgejo"},
  {name: "git.nold.in", url: "https://git.nold.in", kind: "forgejo"},
  {name: "repo.prod.meissa.de", url: "https://repo.prod.meissa.de", kind: "forgejo"},
  {name: "eugit.opencloud.lu", url: "https://eugit.opencloud.lu", kind: "forgejo"},
  {name: "forgejo.praxis.red", url: "https://forgejo.praxis.red", kind: "forgejo"},
  {name: "git.lain.faith", url: "https://git.lain.faith", kind: "gitea"},
]

default_hosts.each do |host|
  h = Host.find_or_initialize_by(url: host[:url])
  h.assign_attributes(host)
  h.save
end
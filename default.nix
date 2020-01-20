{ pkgs ? import ./pinned.nix {} }:

let
  python = pkgs.python3.override {
    packageOverrides = self: super: {

      # # awsebcli = super.awsebcli.overridePythonAttrs (
      # #   oldAttrs: rec {
      # #     version = "3.17.0";
      # #     src = oldAttrs.src.override {
      # #       inherit version;
      # #       sha256 = "0000000000000000000000000000000000000000000000000000";
      # #     };
      # #   }
      # # );

      # # backports.functools-lru-cache = super.backports.functools-lru-cache.overridePythonAttrs (
      # #   oldAttrs: rec {
      # #     version = "1.6.1";
      # #     src = oldAttrs.src.override {
      # #       inherit version;
      # #       sha256 = "0000000000000000000000000000000000000000000000000000";
      # #     };
      # #   }
      # # );

      # # backports.ssl-match-hostname = super.backports.ssl-match-hostname.overridePythonAttrs (
      # #   oldAttrs: rec {
      # #     version = "3.7.0.1";
      # #     src = oldAttrs.src.override {
      # #       inherit version;
      # #       sha256 = "0000000000000000000000000000000000000000000000000000";
      # #     };
      # #   }
      # # );

      # # blessed = super.blessed.overridePythonAttrs (
      # #   oldAttrs: rec {
      # #     version = "1.17.0";
      # #     src = oldAttrs.src.override {
      # #       inherit version;
      # #       sha256 = "0000000000000000000000000000000000000000000000000000";
      # #     };
      # #   }
      # # );

      # botocore = super.botocore.overridePythonAttrs (
      #   oldAttrs: rec {
      #     version = "1.13.50";
      #     src = oldAttrs.src.override {
      #       inherit version;
      #       sha256 = "1m3lbi13d9gcp6wfhv0pkwg8akasxlhv49y34ybj74ppgximqnkn";
      #     };
      #   }
      # );

      # # cached-property = super.cached-property.overridePythonAttrs (
      # #   oldAttrs: rec {
      # #     version = "1.5.1";
      # #     src = oldAttrs.src.override {
      # #       inherit version;
      # #       sha256 = "0000000000000000000000000000000000000000000000000000";
      # #     };
      # #   }
      # # );

      # # cement = super.cement.overridePythonAttrs (
      # #   oldAttrs: rec {
      # #     version = "2.8.2";
      # #     src = oldAttrs.src.override {
      # #       inherit version;
      # #       sha256 = "0000000000000000000000000000000000000000000000000000";
      # #     };
      # #   }
      # # );

      # certifi = super.certifi.overridePythonAttrs (
      #   oldAttrs: rec {
      #     version = "2019.11.28";
      #     src = oldAttrs.src.override {
      #       inherit version;
      #       sha256 = "07qg6864bk4qxa8akr967amlmsq9v310hp039mcpjx6dliylrdi5";
      #     };
      #   }
      # );

      # # chardet = super.chardet.overridePythonAttrs (
      # #   oldAttrs: rec {
      # #     version = "3.0.4";
      # #     src = oldAttrs.src.override {
      # #       inherit version;
      # #       sha256 = "0000000000000000000000000000000000000000000000000000";
      # #     };
      # #   }
      # # );

      # # colorama = super.colorama.overridePythonAttrs (
      # #   oldAttrs: rec {
      # #     version = "0.3.9";
      # #     src = oldAttrs.src.override {
      # #       inherit version;
      # #       sha256 = "0000000000000000000000000000000000000000000000000000";
      # #     };
      # #   }
      # # );

      docker_pycreds = super.docker_pycreds.overridePythonAttrs (
        oldAttrs: rec {
          version = "0.4.0";
          src = oldAttrs.src.override {
            inherit version;
            sha256 = "1m44smrggnqghxkqfl7vhapdw89m1p3vdr177r6cq17lr85jgqvc";
          };
        }
      );

      # # dockerpty = super.dockerpty.overridePythonAttrs (
      # #   oldAttrs: rec {
      # #     version = "0.4.1";
      # #     src = oldAttrs.src.override {
      # #       inherit version;
      # #       sha256 = "0000000000000000000000000000000000000000000000000000";
      # #     };
      # #   }
      # # );

      # # docopt = super.docopt.overridePythonAttrs (
      # #   oldAttrs: rec {
      # #     version = "0.6.2";
      # #     src = oldAttrs.src.override {
      # #       inherit version;
      # #       sha256 = "0000000000000000000000000000000000000000000000000000";
      # #     };
      # #   }
      # # );

      # # docutils = super.docutils.overridePythonAttrs (
      # #   oldAttrs: rec {
      # #     version = "0.15.2";
      # #     src = oldAttrs.src.override {
      # #       inherit version;
      # #       sha256 = "0000000000000000000000000000000000000000000000000000";
      # #     };
      # #   }
      # # );

      # # enum34 = super.enum34.overridePythonAttrs (
      # #   oldAttrs: rec {
      # #     version = "1.1.6";
      # #     src = oldAttrs.src.override {
      # #       inherit version;
      # #       sha256 = "0000000000000000000000000000000000000000000000000000";
      # #     };
      # #   }
      # # );

      # # functools32 = super.functools32.overridePythonAttrs (
      # #   oldAttrs: rec {
      # #     version = "3.2.3.post2";
      # #     src = oldAttrs.src.override {
      # #       inherit version;
      # #       sha256 = "0000000000000000000000000000000000000000000000000000";
      # #     };
      # #   }
      # # );

      # # future = super.future.overridePythonAttrs (
      # #   oldAttrs: rec {
      # #     version = "0.16.0";
      # #     src = oldAttrs.src.override {
      # #       inherit version;
      # #       sha256 = "0000000000000000000000000000000000000000000000000000";
      # #     };
      # #   }
      # # );

      idna = super.idna.overridePythonAttrs (
        oldAttrs: rec {
          version = "2.7";
          src = oldAttrs.src.override {
            inherit version;
            sha256 = "05jam7d31767dr12x0rbvvs8lxnpb1mhdb2zdlfxgh83z6k3hjk8";
          };
        }
      );

      # # ipaddress = pypkgs.buildPythonPackage rec {
      # #   pname = "ipaddress";
      # #   version = "1.0.23";
      # #   src = pypkgs.fetchPypi {
      # #     inherit pname version;
      # #     sha256 = "0000000000000000000000000000000000000000000000000000";
      # #   };
      # #   propagatedBuildInputs = with pypkgs; [];
      # # };

      # # jmespath = super.jmespath.overridePythonAttrs (
      # #   oldAttrs: rec {
      # #     version = "0.9.4";
      # #     src = oldAttrs.src.override {
      # #       inherit version;
      # #       sha256 = "0000000000000000000000000000000000000000000000000000";
      # #     };
      # #   }
      # # );



      # # pathspec = super.pathspec.overridePythonAttrs (
      # #   oldAttrs: rec {
      # #     version = "0.5.9";
      # #     src = oldAttrs.src.override {
      # #       inherit version;
      # #       sha256 = "0000000000000000000000000000000000000000000000000000";
      # #     };
      # #   }
      # # );

      # # python-dateutil = super.python-dateutil.overridePythonAttrs (
      # #   oldAttrs: rec {
      # #     version = "2.8.0";
      # #     src = oldAttrs.src.override {
      # #       inherit version;
      # #       sha256 = "0000000000000000000000000000000000000000000000000000";
      # #     };
      # #   }
      # # );

      # # pyyaml = super.pyyaml.overridePythonAttrs (
      # #   oldAttrs: rec {
      # #     version = "3.13";
      # #     src = oldAttrs.src.override {
      # #       inherit version;
      # #       sha256 = "0000000000000000000000000000000000000000000000000000";
      # #     };
      # #   }
      # # );

      # # semantic_version = super.semantic_version.overridePythonAttrs (
      # #   oldAttrs: rec {
      # #     version = "2.5.0";
      # #     src = oldAttrs.src.override {
      # #       inherit version;
      # #       sha256 = "0000000000000000000000000000000000000000000000000000";
      # #     };
      # #   }
      # # );

      # # six = super.six.overridePythonAttrs (
      # #   oldAttrs: rec {
      # #     version = "1.11.0";
      # #     src = oldAttrs.src.override {
      # #       inherit version;
      # #       sha256 = "0000000000000000000000000000000000000000000000000000";
      # #     };
      # #   }
      # # );

      # # termcolor = super.termcolor.overridePythonAttrs (
      # #   oldAttrs: rec {
      # #     version = "1.1.0";
      # #     src = oldAttrs.src.override {
      # #       inherit version;
      # #       sha256 = "0000000000000000000000000000000000000000000000000000";
      # #     };
      # #   }
      # # );

      # # wcwidth = super.wcwidth.overridePythonAttrs (
      # #   oldAttrs: rec {
      # #     version = "0.1.8";
      # #     src = oldAttrs.src.override {
      # #       inherit version;
      # #       sha256 = "0000000000000000000000000000000000000000000000000000";
      # #     };
      # #   }
      # # );

      # # websocket-client = super.websocket-client.overridePythonAttrs (
      # #   oldAttrs: rec {
      # #     version = "0.57.0";
      # #     src = oldAttrs.src.override {
      # #       inherit version;
      # #       sha256 = "0000000000000000000000000000000000000000000000000000";
      # #     };
      # #   }
      # # );

      jsonschema = super.jsonschema.overridePythonAttrs (
        oldAttrs: rec {
          version = "2.6.0";
          src = oldAttrs.src.override {
            inherit version;
            sha256 = "00kf3zmpp9ya4sydffpifn0j0mzm342a2vzh82p6r0vh10cg7xbg";
          };
        }
      );

      texttable = super.texttable.overridePythonAttrs (
        oldAttrs: rec {
          version = "0.9.1";
          src = oldAttrs.src.override {
            inherit version;
            sha256 = "0yawv64c0zbawwv6zz84whb32fnb2n9jylwjcfsrcdgh7xvl340i";
          };
        }
      );

      docker = super.docker.overridePythonAttrs (
        oldAttrs: rec {
          version = "3.7.3";
          src = oldAttrs.src.override {
            inherit version;
            sha256 = "0qmrcvpaz37p85hfddsd4yc8hgqlkzs4cz09q9wmy0pz5pwajqm0";
          };
          propagatedBuildInputs = with pypkgs; [
            paramiko requests six websocket_client docker_pycreds
          ];
        }
      );

      requests = super.requests.overridePythonAttrs (
        oldAttrs: rec {
          version = "2.20.1";
          src = oldAttrs.src.override {
            inherit version;
            sha256 = "0qzj6cgv3k9wyj7wlxgz7xq0cfg4jbbkfm24pp8dnhczwl31527a";
          };
        }
      );

      docker-compose = pypkgs.buildPythonPackage rec {
        pname = "docker-compose";
        version = "1.23.2";
        src = pypkgs.fetchPypi {
          inherit pname version;
          sha256 = "1x2jlh7z2znvyz2pqcpn0gigfiqnx8s59pc7xlvy9ryd76g9w1zz";
        };
        propagatedBuildInputs = with pypkgs; [
          backports_shutil_get_terminal_size
          backports_ssl_match_hostname
          cached-property
          certifi
          chardet
          colorama
          docker
          docker_pycreds
          dockerpty
          docopt
          enum34
          functools32
          idna
          ipaddress
          jsonschema
          paramiko
          pysocks
          pyyaml_3
          requests
          six
          texttable
          urllib3
          websocket_client
        ];
      };

      urllib3 = super.urllib3.overridePythonAttrs (
        oldAttrs: rec {
          version = "1.24.3";
          src = oldAttrs.src.override {
            inherit version;
            sha256 = "1x0slqrv6kixkbcdnxbglvjliwhc1payavxjvk8fvbqjrnasd4r3";
          };
        }
      );

    };
  };

  pypkgs = python.pkgs;

in
pypkgs.buildPythonApplication rec {
  pname = "awsebcli";
  version = "3.17.0";

  src = pypkgs.fetchPypi {
    inherit pname version;
    sha256 = "14g1y26xglnv1d3q4lg73ki73qp5a7lfrzz9hw8c0v37x7ykwv0f";
  };

  propagatedBuildInputs = with pypkgs;
    [
      backports_functools_lru_cache
      backports_ssl_match_hostname
      blessed
      botocore
      cached-property
      cement
      certifi
      chardet
      colorama
      docker-compose
      docker_pycreds
      docker
      dockerpty
      docopt
      docutils
      enum34
      functools32
      future
      idna
      ipaddress
      jmespath
      jsonschema
      pathspec
      python-dateutil
      pyyaml
      requests
      semantic-version
      six
      termcolor
      texttable
      urllib3
      wcwidth
      websocket_client
    ];
}

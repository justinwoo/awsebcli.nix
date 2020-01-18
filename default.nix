{ pkgs ? import ./pinned.nix {} }:

let
  python = pkgs.python3.override {
    packageOverrides = self: super: {

      jsonschema = super.jsonschema.overridePythonAttrs (
        oldAttrs: rec {
          version = "2.5.1";
          src = oldAttrs.src.override {
            inherit version;
            sha256 = "0hddbqjm4jq63y8jf44nswina1crjs16l9snb6m3vvgyg31klrrn";
          };
        }
      );

      texttable = super.texttable.overridePythonAttrs (
        oldAttrs: rec {
          version = "0.9.0";
          src = oldAttrs.src.override {
            inherit version;
            sha256 = "08353848k7j5rsa6wq4casg7243db76lvval134q2f8w0wvw4wza";
          };
        }
      );

      docker = super.docker.overridePythonAttrs (
        oldAttrs: rec {
          version = "3.6.0";
          src = oldAttrs.src.override {
            inherit version;
            sha256 = "13pxl73mr7q2pm5yd87gap6nndjszi4vq7mxaylp5xqxacznfp0l";
          };
        }
      );

      requests = super.requests.overridePythonAttrs (
        oldAttrs: rec {
          version = "2.14.2";
          src = oldAttrs.src.override {
            inherit version;
            sha256 = "0lyi82a0ijs1m7k9w1mqwbmq1qjsac35fazx7xqyh8ws76xanx52";
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
          version = "1.24.1";
          src = oldAttrs.src.override {
            inherit version;
            sha256 = "08lwd9f3hqznyf32vnzwvp87pchx062nkbgyrf67rwlkgj0jk5fy";
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
      botocore
      docker-compose
      pyyaml_3
      urllib3
    ];
}

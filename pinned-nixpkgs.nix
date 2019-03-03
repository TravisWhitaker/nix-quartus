let fetcher = { owner
              , repo
              , rev
              , sha256
              }:
    builtins.fetchTarball
    {
        inherit sha256;
        url = "https://github.com/${owner}/${repo}/archive/${rev}.tar.gz";
    };
    nixpkgs-src = fetcher
    {
        owner = "nixos";
        repo = "nixpkgs-channels";
        rev = "cb0e20d6db96fe09a501076c7a2c265359982814";
        sha256 = "0d9pkbax0phh392j6pzkn365wbsgd0h1cmm58rwq8zf9lb0pgkg2";
    };
in import nixpkgs-src {}

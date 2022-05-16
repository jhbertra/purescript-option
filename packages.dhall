let mkPackage =
      https://raw.githubusercontent.com/purescript/package-sets/psc-0.13.0-20190626/src/mkPackage.dhall sha256:0b197efa1d397ace6eb46b243ff2d73a3da5638d8d0ac8473e8e4a8fc528cf57

let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.15.0-20220515/packages.dhall sha256:6d7cde12a37db772a5fb78a1d8877481445abfd3351d57605e2ceb5e66892022

in  upstream
  with simple-json =
      mkPackage
        [ "arrays"
        , "exceptions"
        , "foreign"
        , "foreign-object"
        , "nullable"
        , "prelude"
        , "record"
        , "typelevel-prelude"
        , "variant"
        ]
        "https://git@github.com/justinwoo/purescript-simple-json"
        "v9.0.0"

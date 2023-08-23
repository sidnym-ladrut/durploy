# source: https://github.com/j3-productions/quorum
desk_init quorum
# v2.0.X:
desk_cpgit quorum git@github.com:j3-productions/quorum.git "next/version" "desk/full/*"
# v1.0.7:
# desk_cpgit quorum git@github.com:j3-productions/quorum.git "v1.0.7" "desk/past/v1.X/*"
# local:
# desk_cpdir quorum "/path/to/quorum/desk/full/*"
desk_inst quorum

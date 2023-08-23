# original: https://github.com/tloncorp/landscape-apps/blob/da0e9f1fb1fd90e8aec026b04a3422dd4c3fbe0b/ops/bounce.yml
for desk in garden groups talk; do
	desk_init "$desk"
	desk_cpgit "$desk" git@github.com:urbit/urbit.git "" "pkg/base-dev/*"
done

desk_cpgit garden git@github.com:tloncorp/landscape.git "" "desk/*"
desk_cpgit groups git@github.com:tloncorp/landscape.git "" "desk-dev/*"
desk_cpgit groups git@github.com:tloncorp/landscape-apps.git "" "landscape-dev/*" "desk/*"
desk_cpgit talk git@github.com:tloncorp/landscape.git "" "desk-dev/*"
desk_cpgit talk git@github.com:tloncorp/landscape-apps.git "" "landscape-dev/*" "talk/*"

for desk in garden groups talk; do
	desk_inst "$desk"
done

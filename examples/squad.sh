_durploy__desk_init squad "$durploy_ship_pier"

_durploy__desk_cgit squad "$durploy_ship_pier" \
	git@github.com:urbit/docs-examples.git "" \
	"groups-app/full-desk/ ./"
_durploy__desk_cgit squad "$durploy_ship_pier" \
	git@github.com:urbit/urbit.git "" \
	"pkg/arvo/mar/{bill*,hoon*,json*,kelvin*,mime*,noun*,ship*,txt*} mar/" \
	"pkg/arvo/lib/{agentio*,dbug*,default-agent*,skeleton*} lib/"
_durploy__desk_cgit squad "$durploy_ship_pier" \
	git@github.com:tloncorp/landscape.git "" \
	"desk/mar/docket* mar/" \
	"desk/lib/docket* lib/" \
	"desk/sur/docket* sur/"

_durploy__desk_wrap squad "$durploy_ship_pier"

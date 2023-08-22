# original: https://github.com/urbit/developers.urbit.org/blob/a13e84815f50ee8c1dec9f861d0e75dac25e5041/content/guides/quickstart/groups-guide.md
desk_init squad
desk_cpgit squad git@github.com:urbit/docs-examples.git "" \
	"groups-app/full-desk/ ./"
desk_cpgit squad git@github.com:urbit/urbit.git "" \
	"pkg/arvo/mar/{bill*,hoon*,json*,kelvin*,mime*,noun*,ship*,txt*} mar/" \
	"pkg/arvo/lib/{agentio*,dbug*,default-agent*,skeleton*} lib/"
desk_cpgit squad git@github.com:tloncorp/landscape.git "" \
	"desk/mar/docket* mar/" \
	"desk/lib/docket* lib/" \
	"desk/sur/docket* sur/"
desk_inst squad

@STATIC;1.0;i;7;sha1.jst;2073;
objj_executeFile("sha1.js",YES);
var _1=objj_allocateClassPair(CPObject,"YModel"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_url"),new objj_ivar("_masterPassword"),new objj_ivar("_length"),new objj_ivar("_uid"),new objj_ivar("_hashType"),new objj_ivar("domainRegexp")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("init"),function(_3,_4){
with(_3){
objj_msgSend(_3,"setUrl:","");
objj_msgSend(_3,"setLength:",27);
objj_msgSend(_3,"setUid:",0);
objj_msgSend(_3,"setType:","base64");
objj_msgSend(_3,"setMasterPassword:","|\\/|4573R");
domainRegexp=new RegExp("^(.*://)?([^/]*?\\.)?([^/.]*\\.[^/.]*)(/.*?)?$");
return _3;
}
}),new objj_method(sel_getUid("setMasterPassword:"),function(_5,_6,_7){
with(_5){
_masterPassword=_7;
}
}),new objj_method(sel_getUid("masterPassword"),function(_8,_9){
with(_8){
return _masterPassword;
}
}),new objj_method(sel_getUid("setType:"),function(_a,_b,_c){
with(_a){
_hashType=_c;
}
}),new objj_method(sel_getUid("type"),function(_d,_e){
with(_d){
return _hashType;
}
}),new objj_method(sel_getUid("setUrl:"),function(_f,_10,_11){
with(_f){
_url=_11;
}
}),new objj_method(sel_getUid("url"),function(_12,_13){
with(_12){
return _url;
}
}),new objj_method(sel_getUid("setLength:"),function(_14,_15,_16){
with(_14){
_16=parseInt(_16);
_length=_16;
}
}),new objj_method(sel_getUid("length"),function(_17,_18){
with(_17){
return _length;
}
}),new objj_method(sel_getUid("setUid:"),function(_19,_1a,_1b){
with(_19){
uid=parseInt(_1b);
_uid=_1b;
}
}),new objj_method(sel_getUid("uid"),function(_1c,_1d){
with(_1c){
return _uid;
}
}),new objj_method(sel_getUid("domain"),function(_1e,_1f){
with(_1e){
return _url.replace(domainRegexp,"$3");
}
}),new objj_method(sel_getUid("password"),function(_20,_21){
with(_20){
var _22=objj_msgSend(_20,"masterPassword");
var _23;
if(_uid>0){
_22=_22+objj_msgSend(_20,"uid");
}
_22=_22+objj_msgSend(_20,"domain");
if(_hashType=="base64"){
_23=b64_sha1(_22);
}else{
if(_hashType=="hexa"){
_23=hex_sha1(_22);
}else{
}
}
return _23.substr(0,objj_msgSend(_20,"length"));
}
})]);

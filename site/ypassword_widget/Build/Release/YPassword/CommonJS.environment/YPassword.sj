@STATIC;1.0;p;15;AppController.jt;9218;@STATIC;1.0;I;21;Foundation/CPObject.ji;8;YModel.jt;9161;
objj_executeFile("Foundation/CPObject.j",NO);
objj_executeFile("YModel.j",YES);
var _1=objj_allocateClassPair(CPObject,"AppController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_column"),new objj_ivar("_line"),new objj_ivar("vspace"),new objj_ivar("hspace"),new objj_ivar("lengthValue"),new objj_ivar("slider"),new objj_ivar("hashType"),new objj_ivar("model"),new objj_ivar("uid"),new objj_ivar("password"),new objj_ivar("masterPasswordTextField")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("init_layout"),function(_3,_4){
with(_3){
var _5=objj_msgSend(objj_msgSend(CPMutableArray,"alloc"),"init");
var _6=objj_msgSend(objj_msgSend(CPMutableArray,"alloc"),"init");
var _7=27;
var _8=20;
vspace=3;
hspace=3;
for(var i=0;i<=960;i+=_7){
objj_msgSend(_6,"addObject:",i);
}
for(var i=0;i<=960;i+=_8){
objj_msgSend(_5,"addObject:",i);
}
_column=objj_msgSend(objj_msgSend(CPArray,"alloc"),"initWithArray:",_5);
_line=objj_msgSend(objj_msgSend(CPArray,"alloc"),"initWithArray:",_6);
}
}),new objj_method(sel_getUid("rectForColumn:line:width:height:"),function(_9,_a,_b,_c,_d,_e){
with(_9){
return CGRectMake(_column[_b],_line[_c],_column[_b+_d]-_column[_b]-hspace,_line[_c+_e]-_line[_c]-vspace);
}
}),new objj_method(sel_getUid("rectForTextfieldColumn:line:width:"),function(_f,_10,_11,_12,_13){
with(_f){
return CGRectMake(_column[_11],_line[_12]-1,_column[_11+_13]-_column[_11]-hspace,30);
}
}),new objj_method(sel_getUid("updatePassword"),function(_14,_15){
with(_14){
objj_msgSend(password,"setStringValue:",objj_msgSend(model,"password"));
}
}),new objj_method(sel_getUid("masterPasswordChanged:"),function(_16,_17,_18){
with(_16){
objj_msgSend(model,"setMasterPassword:",objj_msgSend(_18,"objectValue"));
objj_msgSend(_16,"updatePassword");
}
}),new objj_method(sel_getUid("urlChanged:"),function(_19,_1a,_1b){
with(_19){
objj_msgSend(model,"setUrl:",objj_msgSend(_1b,"objectValue"));
objj_msgSend(_19,"updatePassword");
}
}),new objj_method(sel_getUid("sliderChangedValue:"),function(_1c,_1d,_1e){
with(_1c){
objj_msgSend(lengthValue,"setObjectValue:",objj_msgSend(CPString,"stringWithFormat:","%d",objj_msgSend(_1e,"objectValue")));
objj_msgSend(model,"setLength:",objj_msgSend(_1e,"objectValue"));
objj_msgSend(_1c,"updatePassword");
}
}),new objj_method(sel_getUid("textLengthChanged:"),function(_1f,_20,_21){
with(_1f){
objj_msgSend(slider,"setObjectValue:",objj_msgSend(_21,"objectValue"));
objj_msgSend(model,"setLength:",objj_msgSend(_21,"objectValue"));
objj_msgSend(_1f,"updatePassword");
}
}),new objj_method(sel_getUid("typeChanged:"),function(_22,_23,_24){
with(_22){
objj_msgSend(model,"setType:",objj_msgSend(objj_msgSend(_24,"selectedItem"),"title"));
objj_msgSend(_22,"updatePassword");
}
}),new objj_method(sel_getUid("changePassword:"),function(_25,_26,_27){
with(_25){
uid+=1;
objj_msgSend(model,"setUid:",uid);
objj_msgSend(_25,"updatePassword");
}
}),new objj_method(sel_getUid("resetPassword:"),function(_28,_29,_2a){
with(_28){
uid=0;
objj_msgSend(model,"setUid:",uid);
objj_msgSend(_28,"updatePassword");
}
}),new objj_method(sel_getUid("controlTextDidEndEditing:"),function(_2b,_2c,_2d){
with(_2b){
var tf=objj_msgSend(_2d,"object");
if(tf==masterPasswordTextField){
objj_msgSend(_2b,"masterPasswordChanged:",tf);
}else{
if(tf==urlTextField){
objj_msgSend(_2b,"urlChanged:",tf);
}else{
console.log("ERROR: YPassword: controlTextDidEndEditing: cannot find textfield");
}
}
}
}),new objj_method(sel_getUid("applicationDidFinishLaunching:"),function(_2e,_2f,_30){
with(_2e){
var _31=objj_msgSend(objj_msgSend(CPWindow,"alloc"),"initWithContentRect:styleMask:",CGRectMakeZero(),CPBorderlessBridgeWindowMask),_32=objj_msgSend(_31,"contentView");
var _33=24*20-3;
var _34=6*27-3;
var _35=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,_33,_34));
objj_msgSend(_35,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithHexString:","eeeeee"));
objj_msgSend(_2e,"init_layout");
model=objj_msgSend(objj_msgSend(YModel,"alloc"),"init");
uid=0;
var _36=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",objj_msgSend(_2e,"rectForColumn:line:width:height:",1,0,23,1));
objj_msgSend(_36,"setStringValue:","YPassword");
objj_msgSend(_36,"setVerticalAlignment:",CPCenterTextAlignment);
objj_msgSend(_36,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",16));
objj_msgSend(_36,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(_35,"addSubview:",_36);
var _37=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",objj_msgSend(_2e,"rectForColumn:line:width:height:",1,1,5,1));
objj_msgSend(_37,"setStringValue:","Master Pass");
objj_msgSend(_37,"setVerticalAlignment:",CPCenterTextAlignment);
objj_msgSend(_35,"addSubview:",_37);
masterPasswordTextField=objj_msgSend(objj_msgSend(CPSecureTextField,"alloc"),"initWithFrame:",objj_msgSend(_2e,"rectForTextfieldColumn:line:width:",5,1,18));
objj_msgSend(masterPasswordTextField,"setVerticalAlignment:",CPCenterTextAlignment);
objj_msgSend(masterPasswordTextField,"setEditable:",true);
objj_msgSend(masterPasswordTextField,"setBezeled:",true);
objj_msgSend(masterPasswordTextField,"setDelegate:",_2e);
objj_msgSend(_35,"addSubview:",masterPasswordTextField);
urlLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",objj_msgSend(_2e,"rectForColumn:line:width:height:",1,2,4,1));
objj_msgSend(urlLabel,"setStringValue:","URL");
objj_msgSend(urlLabel,"setVerticalAlignment:",CPCenterTextAlignment);
objj_msgSend(_35,"addSubview:",urlLabel);
urlTextField=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",objj_msgSend(_2e,"rectForTextfieldColumn:line:width:",5,2,18));
objj_msgSend(urlTextField,"setVerticalAlignment:",CPCenterTextAlignment);
objj_msgSend(urlTextField,"setEditable:",true);
objj_msgSend(urlTextField,"setBezeled:",true);
objj_msgSend(urlTextField,"setDelegate:",_2e);
objj_msgSend(_35,"addSubview:",urlTextField);
var _38=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",objj_msgSend(_2e,"rectForColumn:line:width:height:",1,3,4,1));
objj_msgSend(_38,"setVerticalAlignment:",CPCenterVerticalTextAlignment);
objj_msgSend(_38,"setStringValue:","length");
objj_msgSend(_35,"addSubview:",_38);
slider=objj_msgSend(objj_msgSend(CPSlider,"alloc"),"initWithFrame:",objj_msgSend(_2e,"rectForColumn:line:width:height:",5,3,15,1));
objj_msgSend(slider,"setMinValue:",8);
objj_msgSend(slider,"setMaxValue:",40);
objj_msgSend(slider,"setAltIncrementValue:",1);
objj_msgSend(slider,"setContinuous:",true);
objj_msgSend(slider,"setTarget:",_2e);
objj_msgSend(slider,"setAction:",sel_getUid("sliderChangedValue:"));
objj_msgSend(slider,"setDoubleValue:",20);
objj_msgSend(_35,"addSubview:",slider);
lengthValue=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",objj_msgSend(_2e,"rectForTextfieldColumn:line:width:",20,3,3));
objj_msgSend(lengthValue,"setVerticalAlignment:",CPCenterVerticalTextAlignment);
objj_msgSend(lengthValue,"setIntValue:",objj_msgSend(slider,"objectValue"));
objj_msgSend(lengthValue,"setEditable:",true);
objj_msgSend(lengthValue,"setBezeled:",true);
objj_msgSend(lengthValue,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(lengthValue,"setVerticalAlignment:",CPCenterTextAlignment);
objj_msgSend(lengthValue,"setTarget:",_2e);
objj_msgSend(lengthValue,"setAction:",sel_getUid("textLengthChanged:"));
objj_msgSend(_35,"addSubview:",lengthValue);
hashType=objj_msgSend(objj_msgSend(CPPopUpButton,"alloc"),"initWithFrame:",objj_msgSend(_2e,"rectForColumn:line:width:height:",1,4,10,1));
objj_msgSend(hashType,"addItemWithTitle:","base64");
objj_msgSend(hashType,"addItemWithTitle:","hexa");
objj_msgSend(hashType,"setTarget:",_2e);
objj_msgSend(hashType,"setAction:",sel_getUid("typeChanged:"));
objj_msgSend(_35,"addSubview:",hashType);
changePasswordButton=objj_msgSend(objj_msgSend(CPButton,"alloc"),"initWithFrame:",objj_msgSend(_2e,"rectForColumn:line:width:height:",11,4,6,1));
objj_msgSend(changePasswordButton,"setTitle:","Change");
objj_msgSend(changePasswordButton,"setTarget:",_2e);
objj_msgSend(changePasswordButton,"setAction:",sel_getUid("changePassword:"));
objj_msgSend(_35,"addSubview:",changePasswordButton);
resetPasswordButton=objj_msgSend(objj_msgSend(CPButton,"alloc"),"initWithFrame:",objj_msgSend(_2e,"rectForColumn:line:width:height:",17,4,6,1));
objj_msgSend(resetPasswordButton,"setTitle:","Reset");
objj_msgSend(resetPasswordButton,"setTarget:",_2e);
objj_msgSend(resetPasswordButton,"setAction:",sel_getUid("resetPassword:"));
objj_msgSend(_35,"addSubview:",resetPasswordButton);
password=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",objj_msgSend(_2e,"rectForColumn:line:width:height:",1,5,23,1));
objj_msgSend(password,"setStringValue:","Password");
objj_msgSend(password,"setVerticalAlignment:",CPCenterTextAlignment);
objj_msgSend(password,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",16));
objj_msgSend(password,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(password,"setEditable:",YES);
objj_msgSend(password,"setSelectable:",YES);
objj_msgSend(_35,"addSubview:",password);
objj_msgSend(_32,"addSubview:",_35);
objj_msgSend(_31,"orderFront:",_2e);
}
})]);
p;6;main.jt;267;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/AppKit.ji;15;AppController.jt;181;
objj_executeFile("Foundation/Foundation.j",NO);
objj_executeFile("AppKit/AppKit.j",NO);
objj_executeFile("AppController.j",YES);
main=function(_1,_2){
CPApplicationMain(_1,_2);
};
p;8;YModel.jt;2103;@STATIC;1.0;i;7;sha1.jst;2073;
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
e;
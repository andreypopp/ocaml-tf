(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_custom_ip_prefix__timeouts
type azurerm_custom_ip_prefix

type t = private {
  cidr : string prop;
  commissioning_enabled : bool prop;
  id : string prop;
  internet_advertising_disabled : bool prop;
  location : string prop;
  name : string prop;
  parent_custom_ip_prefix_id : string prop;
  resource_group_name : string prop;
  roa_validity_end_date : string prop;
  tags : (string * string) list prop;
  wan_validation_signed_message : string prop;
  zones : string list prop;
}

val azurerm_custom_ip_prefix :
  ?commissioning_enabled:bool prop ->
  ?id:string prop ->
  ?internet_advertising_disabled:bool prop ->
  ?parent_custom_ip_prefix_id:string prop ->
  ?roa_validity_end_date:string prop ->
  ?tags:(string * string prop) list ->
  ?wan_validation_signed_message:string prop ->
  ?zones:string prop list ->
  ?timeouts:azurerm_custom_ip_prefix__timeouts ->
  cidr:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

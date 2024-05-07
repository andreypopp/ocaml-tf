(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_custom_ip_prefix

val azurerm_custom_ip_prefix :
  ?commissioning_enabled:bool prop ->
  ?id:string prop ->
  ?internet_advertising_disabled:bool prop ->
  ?parent_custom_ip_prefix_id:string prop ->
  ?roa_validity_end_date:string prop ->
  ?tags:(string * string prop) list ->
  ?wan_validation_signed_message:string prop ->
  ?zones:string prop list ->
  ?timeouts:timeouts ->
  cidr:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_custom_ip_prefix

val yojson_of_azurerm_custom_ip_prefix :
  azurerm_custom_ip_prefix -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?commissioning_enabled:bool prop ->
  ?id:string prop ->
  ?internet_advertising_disabled:bool prop ->
  ?parent_custom_ip_prefix_id:string prop ->
  ?roa_validity_end_date:string prop ->
  ?tags:(string * string prop) list ->
  ?wan_validation_signed_message:string prop ->
  ?zones:string prop list ->
  ?timeouts:timeouts ->
  cidr:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?commissioning_enabled:bool prop ->
  ?id:string prop ->
  ?internet_advertising_disabled:bool prop ->
  ?parent_custom_ip_prefix_id:string prop ->
  ?roa_validity_end_date:string prop ->
  ?tags:(string * string prop) list ->
  ?wan_validation_signed_message:string prop ->
  ?zones:string prop list ->
  ?timeouts:timeouts ->
  cidr:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type allow_rule

val allow_rule :
  ?connection_from_ips_not_allowed:string prop list ->
  ?connection_to_ips_not_allowed:string prop list ->
  ?local_users_not_allowed:string prop list ->
  ?processes_not_allowed:string prop list ->
  unit ->
  allow_rule

type range_rule

val range_rule :
  duration:string prop ->
  max:float prop ->
  min:float prop ->
  type_:string prop ->
  unit ->
  range_rule

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_iot_security_device_group

val azurerm_iot_security_device_group :
  ?id:string prop ->
  ?allow_rule:allow_rule list ->
  ?timeouts:timeouts ->
  iothub_id:string prop ->
  name:string prop ->
  range_rule:range_rule list ->
  unit ->
  azurerm_iot_security_device_group

val yojson_of_azurerm_iot_security_device_group :
  azurerm_iot_security_device_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  iothub_id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?allow_rule:allow_rule list ->
  ?timeouts:timeouts ->
  iothub_id:string prop ->
  name:string prop ->
  range_rule:range_rule list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?allow_rule:allow_rule list ->
  ?timeouts:timeouts ->
  iothub_id:string prop ->
  name:string prop ->
  range_rule:range_rule list ->
  string ->
  t Tf_core.resource

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

type user

val user :
  email:string prop ->
  first_name:string prop ->
  last_name:string prop ->
  phone_number:string prop ->
  unit ->
  user

type azurerm_logz_sub_account

val azurerm_logz_sub_account :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  logz_monitor_id:string prop ->
  name:string prop ->
  user:user list ->
  unit ->
  azurerm_logz_sub_account

val yojson_of_azurerm_logz_sub_account :
  azurerm_logz_sub_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  enabled : bool prop;
  id : string prop;
  logz_monitor_id : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  logz_monitor_id:string prop ->
  name:string prop ->
  user:user list ->
  string ->
  t

val make :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  logz_monitor_id:string prop ->
  name:string prop ->
  user:user list ->
  string ->
  t Tf_core.resource

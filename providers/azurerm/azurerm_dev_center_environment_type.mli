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

type azurerm_dev_center_environment_type

val azurerm_dev_center_environment_type :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  dev_center_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_dev_center_environment_type

val yojson_of_azurerm_dev_center_environment_type :
  azurerm_dev_center_environment_type -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  dev_center_id : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  dev_center_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  dev_center_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource

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

type azurerm_api_connection

val azurerm_api_connection :
  ?display_name:string prop ->
  ?id:string prop ->
  ?parameter_values:(string * string prop) list ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  managed_api_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_api_connection

val yojson_of_azurerm_api_connection : azurerm_api_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  display_name : string prop;
  id : string prop;
  managed_api_id : string prop;
  name : string prop;
  parameter_values : (string * string) list prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?parameter_values:(string * string prop) list ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  managed_api_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?display_name:string prop ->
  ?id:string prop ->
  ?parameter_values:(string * string prop) list ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  managed_api_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource

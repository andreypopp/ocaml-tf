(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_automation_python3_package

val azurerm_automation_python3_package :
  ?content_version:string prop ->
  ?hash_algorithm:string prop ->
  ?hash_value:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  content_uri:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_automation_python3_package

val yojson_of_azurerm_automation_python3_package :
  azurerm_automation_python3_package -> json

(** RESOURCE REGISTRATION *)

type t = private {
  automation_account_name : string prop;
  content_uri : string prop;
  content_version : string prop;
  hash_algorithm : string prop;
  hash_value : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?content_version:string prop ->
  ?hash_algorithm:string prop ->
  ?hash_value:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  automation_account_name:string prop ->
  content_uri:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_application_insights_api_key

val azurerm_application_insights_api_key :
  ?id:string prop ->
  ?read_permissions:string prop list ->
  ?write_permissions:string prop list ->
  ?timeouts:timeouts ->
  application_insights_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_application_insights_api_key

val yojson_of_azurerm_application_insights_api_key :
  azurerm_application_insights_api_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  api_key : string prop;
  application_insights_id : string prop;
  id : string prop;
  name : string prop;
  read_permissions : string list prop;
  write_permissions : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?read_permissions:string prop list ->
  ?write_permissions:string prop list ->
  ?timeouts:timeouts ->
  application_insights_id:string prop ->
  name:string prop ->
  string ->
  t

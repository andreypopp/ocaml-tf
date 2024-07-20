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

type azurerm_api_management_policy_fragment

val azurerm_api_management_policy_fragment :
  ?description:string prop ->
  ?format:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_id:string prop ->
  name:string prop ->
  value:string prop ->
  unit ->
  azurerm_api_management_policy_fragment

val yojson_of_azurerm_api_management_policy_fragment :
  azurerm_api_management_policy_fragment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_management_id : string prop;
  description : string prop;
  format : string prop;
  id : string prop;
  name : string prop;
  value : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?format:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_id:string prop ->
  name:string prop ->
  value:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?format:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  api_management_id:string prop ->
  name:string prop ->
  value:string prop ->
  string ->
  t Tf_core.resource

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

type azurerm_api_management_group

val azurerm_api_management_group :
  ?description:string prop ->
  ?external_id:string prop ->
  ?id:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  display_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_api_management_group

val yojson_of_azurerm_api_management_group :
  azurerm_api_management_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_management_name : string prop;
  description : string prop;
  display_name : string prop;
  external_id : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?external_id:string prop ->
  ?id:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  display_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?external_id:string prop ->
  ?id:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  api_management_name:string prop ->
  display_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource

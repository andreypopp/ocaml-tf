(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type input_asset

val input_asset :
  ?label:string prop -> name:string prop -> unit -> input_asset

type output_asset

val output_asset :
  ?label:string prop -> name:string prop -> unit -> output_asset

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_media_job

val azurerm_media_job :
  ?description:string prop ->
  ?id:string prop ->
  ?priority:string prop ->
  ?timeouts:timeouts ->
  media_services_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  transform_name:string prop ->
  input_asset:input_asset list ->
  output_asset:output_asset list ->
  unit ->
  azurerm_media_job

val yojson_of_azurerm_media_job : azurerm_media_job -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  id : string prop;
  media_services_account_name : string prop;
  name : string prop;
  priority : string prop;
  resource_group_name : string prop;
  transform_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?priority:string prop ->
  ?timeouts:timeouts ->
  media_services_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  transform_name:string prop ->
  input_asset:input_asset list ->
  output_asset:output_asset list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?priority:string prop ->
  ?timeouts:timeouts ->
  media_services_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  transform_name:string prop ->
  input_asset:input_asset list ->
  output_asset:output_asset list ->
  string ->
  t Tf_core.resource

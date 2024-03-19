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

type azurerm_media_asset

val azurerm_media_asset :
  ?alternate_id:string prop ->
  ?container:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?storage_account_name:string prop ->
  ?timeouts:timeouts ->
  media_services_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_media_asset

val yojson_of_azurerm_media_asset : azurerm_media_asset -> json

(** RESOURCE REGISTRATION *)

type t = private {
  alternate_id : string prop;
  container : string prop;
  description : string prop;
  id : string prop;
  media_services_account_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  storage_account_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?alternate_id:string prop ->
  ?container:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?storage_account_name:string prop ->
  ?timeouts:timeouts ->
  media_services_account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

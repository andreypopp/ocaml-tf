(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type catalog_adogit

val catalog_adogit :
  branch:string prop ->
  key_vault_key_url:string prop ->
  path:string prop ->
  uri:string prop ->
  unit ->
  catalog_adogit

type catalog_github

val catalog_github :
  branch:string prop ->
  key_vault_key_url:string prop ->
  path:string prop ->
  uri:string prop ->
  unit ->
  catalog_github

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_dev_center_catalog

val azurerm_dev_center_catalog :
  ?id:string prop ->
  ?timeouts:timeouts ->
  dev_center_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  catalog_adogit:catalog_adogit list ->
  catalog_github:catalog_github list ->
  unit ->
  azurerm_dev_center_catalog

val yojson_of_azurerm_dev_center_catalog :
  azurerm_dev_center_catalog -> json

(** RESOURCE REGISTRATION *)

type t = private {
  dev_center_id : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  dev_center_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  catalog_adogit:catalog_adogit list ->
  catalog_github:catalog_github list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  dev_center_id:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  catalog_adogit:catalog_adogit list ->
  catalog_github:catalog_github list ->
  string ->
  t Tf_core.resource

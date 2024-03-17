(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_spring_cloud_storage__timeouts
type azurerm_spring_cloud_storage

type t = private {
  id : string prop;
  name : string prop;
  spring_cloud_service_id : string prop;
  storage_account_key : string prop;
  storage_account_name : string prop;
}

val azurerm_spring_cloud_storage :
  ?id:string prop ->
  ?timeouts:azurerm_spring_cloud_storage__timeouts ->
  name:string prop ->
  spring_cloud_service_id:string prop ->
  storage_account_key:string prop ->
  storage_account_name:string prop ->
  string ->
  t

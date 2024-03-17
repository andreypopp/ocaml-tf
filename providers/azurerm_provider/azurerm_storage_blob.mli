(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_blob__timeouts
type azurerm_storage_blob

val azurerm_storage_blob :
  ?cache_control:string ->
  ?content_md5:string ->
  ?content_type:string ->
  ?parallelism:float ->
  ?size:float ->
  ?source:string ->
  ?source_content:string ->
  ?source_uri:string ->
  ?timeouts:azurerm_storage_blob__timeouts ->
  name:string ->
  storage_account_name:string ->
  storage_container_name:string ->
  type_:string ->
  string ->
  unit

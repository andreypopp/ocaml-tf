(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_share_file__timeouts
type azurerm_storage_share_file

val azurerm_storage_share_file :
  ?content_disposition:string ->
  ?content_encoding:string ->
  ?content_md5:string ->
  ?content_type:string ->
  ?id:string ->
  ?metadata:(string * string) list ->
  ?path:string ->
  ?source:string ->
  ?timeouts:azurerm_storage_share_file__timeouts ->
  name:string ->
  storage_share_id:string ->
  string ->
  unit

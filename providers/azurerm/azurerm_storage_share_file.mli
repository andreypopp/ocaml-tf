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

type azurerm_storage_share_file

val azurerm_storage_share_file :
  ?content_disposition:string prop ->
  ?content_encoding:string prop ->
  ?content_md5:string prop ->
  ?content_type:string prop ->
  ?id:string prop ->
  ?metadata:string prop Tf_core.assoc ->
  ?path:string prop ->
  ?source:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_share_id:string prop ->
  unit ->
  azurerm_storage_share_file

val yojson_of_azurerm_storage_share_file :
  azurerm_storage_share_file -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  content_disposition : string prop;
  content_encoding : string prop;
  content_length : float prop;
  content_md5 : string prop;
  content_type : string prop;
  id : string prop;
  metadata : string Tf_core.assoc prop;
  name : string prop;
  path : string prop;
  source : string prop;
  storage_share_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?content_disposition:string prop ->
  ?content_encoding:string prop ->
  ?content_md5:string prop ->
  ?content_type:string prop ->
  ?id:string prop ->
  ?metadata:string prop Tf_core.assoc ->
  ?path:string prop ->
  ?source:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_share_id:string prop ->
  string ->
  t

val make :
  ?content_disposition:string prop ->
  ?content_encoding:string prop ->
  ?content_md5:string prop ->
  ?content_type:string prop ->
  ?id:string prop ->
  ?metadata:string prop Tf_core.assoc ->
  ?path:string prop ->
  ?source:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_share_id:string prop ->
  string ->
  t Tf_core.resource

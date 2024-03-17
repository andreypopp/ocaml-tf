(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_storage_blob__timeouts
type azurerm_storage_blob

type t = private {
  access_tier : string prop;
  cache_control : string prop;
  content_md5 : string prop;
  content_type : string prop;
  id : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  parallelism : float prop;
  size : float prop;
  source : string prop;
  source_content : string prop;
  source_uri : string prop;
  storage_account_name : string prop;
  storage_container_name : string prop;
  type_ : string prop;
  url : string prop;
}

val azurerm_storage_blob :
  ?access_tier:string prop ->
  ?cache_control:string prop ->
  ?content_md5:string prop ->
  ?content_type:string prop ->
  ?id:string prop ->
  ?metadata:(string * string prop) list ->
  ?parallelism:float prop ->
  ?size:float prop ->
  ?source:string prop ->
  ?source_content:string prop ->
  ?source_uri:string prop ->
  ?timeouts:azurerm_storage_blob__timeouts ->
  name:string prop ->
  storage_account_name:string prop ->
  storage_container_name:string prop ->
  type_:string prop ->
  string ->
  t

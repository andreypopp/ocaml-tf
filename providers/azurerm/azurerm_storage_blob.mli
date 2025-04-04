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

type azurerm_storage_blob

val azurerm_storage_blob :
  ?access_tier:string prop ->
  ?cache_control:string prop ->
  ?content_md5:string prop ->
  ?content_type:string prop ->
  ?encryption_scope:string prop ->
  ?id:string prop ->
  ?metadata:string prop Tf_core.assoc ->
  ?parallelism:float prop ->
  ?size:float prop ->
  ?source:string prop ->
  ?source_content:string prop ->
  ?source_uri:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_account_name:string prop ->
  storage_container_name:string prop ->
  type_:string prop ->
  unit ->
  azurerm_storage_blob

val yojson_of_azurerm_storage_blob : azurerm_storage_blob -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_tier : string prop;
  cache_control : string prop;
  content_md5 : string prop;
  content_type : string prop;
  encryption_scope : string prop;
  id : string prop;
  metadata : string Tf_core.assoc prop;
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

val register :
  ?tf_module:tf_module ->
  ?access_tier:string prop ->
  ?cache_control:string prop ->
  ?content_md5:string prop ->
  ?content_type:string prop ->
  ?encryption_scope:string prop ->
  ?id:string prop ->
  ?metadata:string prop Tf_core.assoc ->
  ?parallelism:float prop ->
  ?size:float prop ->
  ?source:string prop ->
  ?source_content:string prop ->
  ?source_uri:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_account_name:string prop ->
  storage_container_name:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?access_tier:string prop ->
  ?cache_control:string prop ->
  ?content_md5:string prop ->
  ?content_type:string prop ->
  ?encryption_scope:string prop ->
  ?id:string prop ->
  ?metadata:string prop Tf_core.assoc ->
  ?parallelism:float prop ->
  ?size:float prop ->
  ?source:string prop ->
  ?source_content:string prop ->
  ?source_uri:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  storage_account_name:string prop ->
  storage_container_name:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource

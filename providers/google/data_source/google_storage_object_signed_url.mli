(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_storage_object_signed_url

val google_storage_object_signed_url :
  ?content_md5:string prop ->
  ?content_type:string prop ->
  ?credentials:string prop ->
  ?duration:string prop ->
  ?extension_headers:(string * string prop) list ->
  ?http_method:string prop ->
  ?id:string prop ->
  bucket:string prop ->
  path:string prop ->
  unit ->
  google_storage_object_signed_url

val yojson_of_google_storage_object_signed_url :
  google_storage_object_signed_url -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  bucket : string prop;
  content_md5 : string prop;
  content_type : string prop;
  credentials : string prop;
  duration : string prop;
  extension_headers : (string * string) list prop;
  http_method : string prop;
  id : string prop;
  path : string prop;
  signed_url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?content_md5:string prop ->
  ?content_type:string prop ->
  ?credentials:string prop ->
  ?duration:string prop ->
  ?extension_headers:(string * string prop) list ->
  ?http_method:string prop ->
  ?id:string prop ->
  bucket:string prop ->
  path:string prop ->
  string ->
  t

val make :
  ?content_md5:string prop ->
  ?content_type:string prop ->
  ?credentials:string prop ->
  ?duration:string prop ->
  ?extension_headers:(string * string prop) list ->
  ?http_method:string prop ->
  ?id:string prop ->
  bucket:string prop ->
  path:string prop ->
  string ->
  t Tf_core.resource

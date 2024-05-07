(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_vmwareengine_external_address

val google_vmwareengine_external_address :
  ?id:string prop ->
  name:string prop ->
  parent:string prop ->
  unit ->
  google_vmwareengine_external_address

val yojson_of_google_vmwareengine_external_address :
  google_vmwareengine_external_address -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  external_ip : string prop;
  id : string prop;
  internal_ip : string prop;
  name : string prop;
  parent : string prop;
  state : string prop;
  uid : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  parent:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  name:string prop ->
  parent:string prop ->
  string ->
  t Tf_core.resource

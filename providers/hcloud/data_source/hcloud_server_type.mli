(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hcloud_server_type

val hcloud_server_type :
  ?deprecation_announced:string prop ->
  ?id:float prop ->
  ?name:string prop ->
  ?unavailable_after:string prop ->
  unit ->
  hcloud_server_type

val yojson_of_hcloud_server_type : hcloud_server_type -> json

(** RESOURCE REGISTRATION *)

type t = private {
  architecture : string prop;
  cores : float prop;
  cpu_type : string prop;
  deprecation_announced : string prop;
  description : string prop;
  disk : float prop;
  id : float prop;
  included_traffic : float prop;
  is_deprecated : bool prop;
  memory : float prop;
  name : string prop;
  storage_type : string prop;
  unavailable_after : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?deprecation_announced:string prop ->
  ?id:float prop ->
  ?name:string prop ->
  ?unavailable_after:string prop ->
  string ->
  t

val make :
  ?deprecation_announced:string prop ->
  ?id:float prop ->
  ?name:string prop ->
  ?unavailable_after:string prop ->
  string ->
  t Tf_core.resource

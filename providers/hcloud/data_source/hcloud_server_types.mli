(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type server_types = {
  architecture : string prop;  (** architecture *)
  cores : float prop;  (** cores *)
  cpu_type : string prop;  (** cpu_type *)
  deprecation_announced : string prop;  (** deprecation_announced *)
  description : string prop;  (** description *)
  disk : float prop;  (** disk *)
  id : float prop;  (** id *)
  included_traffic : float prop;  (** included_traffic *)
  is_deprecated : bool prop;  (** is_deprecated *)
  memory : float prop;  (** memory *)
  name : string prop;  (** name *)
  storage_type : string prop;  (** storage_type *)
  unavailable_after : string prop;  (** unavailable_after *)
}

type hcloud_server_types

val hcloud_server_types :
  ?id:string prop ->
  ?server_type_ids:string prop list ->
  unit ->
  hcloud_server_types

val yojson_of_hcloud_server_types : hcloud_server_types -> json

(** RESOURCE REGISTRATION *)

type t = private {
  descriptions : string list prop;
  id : string prop;
  names : string list prop;
  server_type_ids : string list prop;
  server_types : server_types list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?server_type_ids:string prop list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?server_type_ids:string prop list ->
  string ->
  t Tf_core.resource

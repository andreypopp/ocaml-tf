(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type digitalocean_project

val digitalocean_project :
  ?id:string prop ->
  ?name:string prop ->
  unit ->
  digitalocean_project

val yojson_of_digitalocean_project : digitalocean_project -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  created_at : string prop;
  description : string prop;
  environment : string prop;
  id : string prop;
  is_default : bool prop;
  name : string prop;
  owner_id : float prop;
  owner_uuid : string prop;
  purpose : string prop;
  resources : string list prop;
  updated_at : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  string ->
  t Tf_core.resource

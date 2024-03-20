(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type projects = {
  created_at : string prop;  (** created_at *)
  description : string prop;  (** description *)
  environment : string prop;  (** environment *)
  id : string prop;  (** id *)
  is_default : bool prop;  (** is_default *)
  name : string prop;  (** name *)
  owner_id : float prop;  (** owner_id *)
  owner_uuid : string prop;  (** owner_uuid *)
  purpose : string prop;  (** purpose *)
  resources : string prop list;  (** resources *)
  updated_at : string prop;  (** updated_at *)
}

type filter

val filter :
  ?all:bool prop ->
  ?match_by:string prop ->
  key:string prop ->
  values:string prop list ->
  unit ->
  filter

type sort

val sort : ?direction:string prop -> key:string prop -> unit -> sort

type digitalocean_projects

val digitalocean_projects :
  ?id:string prop ->
  filter:filter list ->
  sort:sort list ->
  unit ->
  digitalocean_projects

val yojson_of_digitalocean_projects : digitalocean_projects -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; projects : projects list prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  filter:filter list ->
  sort:sort list ->
  string ->
  t

val make :
  ?id:string prop ->
  filter:filter list ->
  sort:sort list ->
  string ->
  t Tf_core.resource

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type digitalocean_volume

val digitalocean_volume :
  ?description:string prop ->
  ?id:string prop ->
  ?region:string prop ->
  name:string prop ->
  unit ->
  digitalocean_volume

val yojson_of_digitalocean_volume : digitalocean_volume -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  droplet_ids : float list prop;
  filesystem_label : string prop;
  filesystem_type : string prop;
  id : string prop;
  name : string prop;
  region : string prop;
  size : float prop;
  tags : string list prop;
  urn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?region:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?region:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource

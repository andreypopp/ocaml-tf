(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type digitalocean_image

val digitalocean_image :
  ?id:float prop ->
  ?name:string prop ->
  ?slug:string prop ->
  ?source:string prop ->
  unit ->
  digitalocean_image

val yojson_of_digitalocean_image : digitalocean_image -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  created : string prop;
  description : string prop;
  distribution : string prop;
  error_message : string prop;
  id : float prop;
  image : string prop;
  min_disk_size : float prop;
  name : string prop;
  private_ : bool prop;
  regions : string list prop;
  size_gigabytes : float prop;
  slug : string prop;
  source : string prop;
  status : string prop;
  tags : string list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:float prop ->
  ?name:string prop ->
  ?slug:string prop ->
  ?source:string prop ->
  string ->
  t

val make :
  ?id:float prop ->
  ?name:string prop ->
  ?slug:string prop ->
  ?source:string prop ->
  string ->
  t Tf_core.resource

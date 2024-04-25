(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type images = {
  created : string prop;  (** created *)
  description : string prop;  (** description *)
  distribution : string prop;  (** distribution *)
  error_message : string prop;  (** error_message *)
  id : float prop;  (** id *)
  image : string prop;  (** image *)
  min_disk_size : float prop;  (** min_disk_size *)
  name : string prop;  (** name *)
  private_ : bool prop; [@key "private"]  (** private *)
  regions : string prop list;  (** regions *)
  size_gigabytes : float prop;  (** size_gigabytes *)
  slug : string prop;  (** slug *)
  status : string prop;  (** status *)
  tags : string prop list;  (** tags *)
  type_ : string prop; [@key "type"]  (** type *)
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

type digitalocean_images

val digitalocean_images :
  ?id:string prop ->
  ?sort:sort list ->
  filter:filter list ->
  unit ->
  digitalocean_images

val yojson_of_digitalocean_images : digitalocean_images -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; images : images list prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?sort:sort list ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?sort:sort list ->
  filter:filter list ->
  string ->
  t Tf_core.resource

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type regions = {
  available : bool prop;  (** available *)
  features : string prop list;  (** features *)
  name : string prop;  (** name *)
  sizes : string prop list;  (** sizes *)
  slug : string prop;  (** slug *)
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

type digitalocean_regions

val digitalocean_regions :
  ?id:string prop ->
  ?sort:sort list ->
  filter:filter list ->
  unit ->
  digitalocean_regions

val yojson_of_digitalocean_regions : digitalocean_regions -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  regions : regions list prop;
}

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

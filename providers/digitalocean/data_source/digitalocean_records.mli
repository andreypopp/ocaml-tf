(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type records = {
  domain : string prop;  (** domain *)
  flags : float prop;  (** flags *)
  id : float prop;  (** id *)
  name : string prop;  (** name *)
  port : float prop;  (** port *)
  priority : float prop;  (** priority *)
  tag : string prop;  (** tag *)
  ttl : float prop;  (** ttl *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
  weight : float prop;  (** weight *)
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

type digitalocean_records

val digitalocean_records :
  ?id:string prop ->
  ?sort:sort list ->
  domain:string prop ->
  filter:filter list ->
  unit ->
  digitalocean_records

val yojson_of_digitalocean_records : digitalocean_records -> json

(** RESOURCE REGISTRATION *)

type t = private {
  domain : string prop;
  id : string prop;
  records : records list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?sort:sort list ->
  domain:string prop ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?sort:sort list ->
  domain:string prop ->
  filter:filter list ->
  string ->
  t Tf_core.resource

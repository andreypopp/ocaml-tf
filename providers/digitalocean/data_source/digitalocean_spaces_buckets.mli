(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type buckets = {
  bucket_domain_name : string prop;  (** bucket_domain_name *)
  endpoint : string prop;  (** endpoint *)
  name : string prop;  (** name *)
  region : string prop;  (** region *)
  urn : string prop;  (** urn *)
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

type digitalocean_spaces_buckets

val digitalocean_spaces_buckets :
  ?id:string prop ->
  ?sort:sort list ->
  filter:filter list ->
  unit ->
  digitalocean_spaces_buckets

val yojson_of_digitalocean_spaces_buckets :
  digitalocean_spaces_buckets -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  buckets : buckets list prop;
  id : string prop;
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

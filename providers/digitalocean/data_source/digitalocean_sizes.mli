(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type sizes = {
  available : bool prop;  (** available *)
  disk : float prop;  (** disk *)
  memory : float prop;  (** memory *)
  price_hourly : float prop;  (** price_hourly *)
  price_monthly : float prop;  (** price_monthly *)
  regions : string prop list;  (** regions *)
  slug : string prop;  (** slug *)
  transfer : float prop;  (** transfer *)
  vcpus : float prop;  (** vcpus *)
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

type digitalocean_sizes

val digitalocean_sizes :
  ?id:string prop ->
  ?sort:sort list ->
  filter:filter list ->
  unit ->
  digitalocean_sizes

val yojson_of_digitalocean_sizes : digitalocean_sizes -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; sizes : sizes list prop }

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

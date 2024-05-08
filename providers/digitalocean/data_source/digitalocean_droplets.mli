(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type droplets = {
  backups : bool prop;  (** backups *)
  created_at : string prop;  (** created_at *)
  disk : float prop;  (** disk *)
  id : float prop;  (** id *)
  image : string prop;  (** image *)
  ipv4_address : string prop;  (** ipv4_address *)
  ipv4_address_private : string prop;  (** ipv4_address_private *)
  ipv6 : bool prop;  (** ipv6 *)
  ipv6_address : string prop;  (** ipv6_address *)
  ipv6_address_private : string prop;  (** ipv6_address_private *)
  locked : bool prop;  (** locked *)
  memory : float prop;  (** memory *)
  monitoring : bool prop;  (** monitoring *)
  name : string prop;  (** name *)
  price_hourly : float prop;  (** price_hourly *)
  price_monthly : float prop;  (** price_monthly *)
  private_networking : bool prop;  (** private_networking *)
  region : string prop;  (** region *)
  size : string prop;  (** size *)
  status : string prop;  (** status *)
  tags : string prop list; [@default []] [@yojson_drop_default ( = )]
      (** tags *)
  urn : string prop;  (** urn *)
  vcpus : float prop;  (** vcpus *)
  volume_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** volume_ids *)
  vpc_uuid : string prop;  (** vpc_uuid *)
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

type digitalocean_droplets

val digitalocean_droplets :
  ?id:string prop ->
  ?sort:sort list ->
  filter:filter list ->
  unit ->
  digitalocean_droplets

val yojson_of_digitalocean_droplets : digitalocean_droplets -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  droplets : droplets list prop;
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

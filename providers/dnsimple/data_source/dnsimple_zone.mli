(** DNSimple zone data source *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dnsimple_zone

val dnsimple_zone : name:string prop -> unit -> dnsimple_zone
val yojson_of_dnsimple_zone : dnsimple_zone -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : float prop;
  id : float prop;
  name : string prop;
  reverse : bool prop;
}

val register :
  ?tf_module:tf_module -> name:string prop -> string -> t

val make : name:string prop -> string -> t Tf_core.resource

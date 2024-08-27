(** DNSimple zone resource *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dnsimple_zone

val dnsimple_zone :
  ?active:bool prop -> name:string prop -> unit -> dnsimple_zone

val yojson_of_dnsimple_zone : dnsimple_zone -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : float prop;
  active : bool prop;
  id : float prop;
  last_transferred_at : string prop;
  name : string prop;
  reverse : bool prop;
  secondary : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?active:bool prop ->
  name:string prop ->
  string ->
  t

val make :
  ?active:bool prop ->
  name:string prop ->
  string ->
  t Tf_core.resource

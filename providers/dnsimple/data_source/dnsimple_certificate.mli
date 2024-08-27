(** DNSimple certificate data source *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type dnsimple_certificate

val dnsimple_certificate :
  ?timeouts:timeouts ->
  certificate_id:float prop ->
  domain:string prop ->
  unit ->
  dnsimple_certificate

val yojson_of_dnsimple_certificate : dnsimple_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  certificate_chain : string list prop;
  certificate_id : float prop;
  domain : string prop;
  id : string prop;
  private_key : string prop;
  root_certificate : string prop;
  server_certificate : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?timeouts:timeouts ->
  certificate_id:float prop ->
  domain:string prop ->
  string ->
  t

val make :
  ?timeouts:timeouts ->
  certificate_id:float prop ->
  domain:string prop ->
  string ->
  t Tf_core.resource

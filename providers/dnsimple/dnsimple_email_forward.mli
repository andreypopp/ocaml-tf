(** DNSimple email forward resource *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dnsimple_email_forward

val dnsimple_email_forward :
  alias_name:string prop ->
  destination_email:string prop ->
  domain:string prop ->
  unit ->
  dnsimple_email_forward

val yojson_of_dnsimple_email_forward : dnsimple_email_forward -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  alias_email : string prop;
  alias_name : string prop;
  destination_email : string prop;
  domain : string prop;
  id : float prop;
}

val register :
  ?tf_module:tf_module ->
  alias_name:string prop ->
  destination_email:string prop ->
  domain:string prop ->
  string ->
  t

val make :
  alias_name:string prop ->
  destination_email:string prop ->
  domain:string prop ->
  string ->
  t Tf_core.resource

(** DNSimple domain delegation resource *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dnsimple_domain_delegation

val dnsimple_domain_delegation :
  domain:string prop ->
  name_servers:string prop list ->
  unit ->
  dnsimple_domain_delegation

val yojson_of_dnsimple_domain_delegation :
  dnsimple_domain_delegation -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  domain : string prop;
  id : string prop;
  name_servers : string list prop;
}

val register :
  ?tf_module:tf_module ->
  domain:string prop ->
  name_servers:string prop list ->
  string ->
  t

val make :
  domain:string prop ->
  name_servers:string prop list ->
  string ->
  t Tf_core.resource

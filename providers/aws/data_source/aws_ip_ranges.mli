(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ip_ranges

val aws_ip_ranges :
  ?id:string prop ->
  ?regions:string prop list ->
  ?url:string prop ->
  services:string prop list ->
  unit ->
  aws_ip_ranges

val yojson_of_aws_ip_ranges : aws_ip_ranges -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cidr_blocks : string list prop;
  create_date : string prop;
  id : string prop;
  ipv6_cidr_blocks : string list prop;
  regions : string list prop;
  services : string list prop;
  sync_token : float prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?regions:string prop list ->
  ?url:string prop ->
  services:string prop list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?regions:string prop list ->
  ?url:string prop ->
  services:string prop list ->
  string ->
  t Tf_core.resource

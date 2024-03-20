(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ip_set_descriptor

val ip_set_descriptor :
  type_:string prop -> value:string prop -> unit -> ip_set_descriptor

type aws_wafregional_ipset

val aws_wafregional_ipset :
  ?id:string prop ->
  name:string prop ->
  ip_set_descriptor:ip_set_descriptor list ->
  unit ->
  aws_wafregional_ipset

val yojson_of_aws_wafregional_ipset : aws_wafregional_ipset -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  ip_set_descriptor:ip_set_descriptor list ->
  string ->
  t

val make :
  ?id:string prop ->
  name:string prop ->
  ip_set_descriptor:ip_set_descriptor list ->
  string ->
  t Tf_core.resource

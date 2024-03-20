(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ip_set_descriptors

val ip_set_descriptors :
  type_:string prop ->
  value:string prop ->
  unit ->
  ip_set_descriptors

type aws_waf_ipset

val aws_waf_ipset :
  ?id:string prop ->
  name:string prop ->
  ip_set_descriptors:ip_set_descriptors list ->
  unit ->
  aws_waf_ipset

val yojson_of_aws_waf_ipset : aws_waf_ipset -> json

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
  ip_set_descriptors:ip_set_descriptors list ->
  string ->
  t

val make :
  ?id:string prop ->
  name:string prop ->
  ip_set_descriptors:ip_set_descriptors list ->
  string ->
  t Tf_core.resource

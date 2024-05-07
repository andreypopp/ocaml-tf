(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_wafv2_ip_set

val aws_wafv2_ip_set :
  ?id:string prop ->
  name:string prop ->
  scope:string prop ->
  unit ->
  aws_wafv2_ip_set

val yojson_of_aws_wafv2_ip_set : aws_wafv2_ip_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  addresses : string list prop;
  arn : string prop;
  description : string prop;
  id : string prop;
  ip_address_version : string prop;
  name : string prop;
  scope : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  scope:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  name:string prop ->
  scope:string prop ->
  string ->
  t Tf_core.resource

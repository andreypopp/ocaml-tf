(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_waf_rate_based_rule

val aws_waf_rate_based_rule :
  ?id:string prop ->
  name:string prop ->
  unit ->
  aws_waf_rate_based_rule

val yojson_of_aws_waf_rate_based_rule :
  aws_waf_rate_based_rule -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; name : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop -> name:string prop -> string -> t Tf_core.resource

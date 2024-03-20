(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_wafregional_ipset

val aws_wafregional_ipset :
  ?id:string prop ->
  name:string prop ->
  unit ->
  aws_wafregional_ipset

val yojson_of_aws_wafregional_ipset : aws_wafregional_ipset -> json

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

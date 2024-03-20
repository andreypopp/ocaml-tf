(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_lb_trust_store

val aws_lb_trust_store :
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  unit ->
  aws_lb_trust_store

val yojson_of_aws_lb_trust_store : aws_lb_trust_store -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  string ->
  t

val make :
  ?arn:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  string ->
  t Tf_core.resource

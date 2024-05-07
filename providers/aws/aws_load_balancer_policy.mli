(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type policy_attribute

val policy_attribute :
  ?name:string prop -> ?value:string prop -> unit -> policy_attribute

type aws_load_balancer_policy

val aws_load_balancer_policy :
  ?id:string prop ->
  load_balancer_name:string prop ->
  policy_name:string prop ->
  policy_type_name:string prop ->
  policy_attribute:policy_attribute list ->
  unit ->
  aws_load_balancer_policy

val yojson_of_aws_load_balancer_policy :
  aws_load_balancer_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  load_balancer_name : string prop;
  policy_name : string prop;
  policy_type_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  load_balancer_name:string prop ->
  policy_name:string prop ->
  policy_type_name:string prop ->
  policy_attribute:policy_attribute list ->
  string ->
  t

val make :
  ?id:string prop ->
  load_balancer_name:string prop ->
  policy_name:string prop ->
  policy_type_name:string prop ->
  policy_attribute:policy_attribute list ->
  string ->
  t Tf_core.resource

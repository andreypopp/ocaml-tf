(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_load_balancer_policy__policy_attribute
type aws_load_balancer_policy

type t = private {
  id : string prop;
  load_balancer_name : string prop;
  policy_name : string prop;
  policy_type_name : string prop;
}

val aws_load_balancer_policy :
  ?id:string prop ->
  load_balancer_name:string prop ->
  policy_name:string prop ->
  policy_type_name:string prop ->
  policy_attribute:aws_load_balancer_policy__policy_attribute list ->
  string ->
  t

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_load_balancer_listener_policy

val aws_load_balancer_listener_policy :
  ?id:string prop ->
  ?policy_names:string prop list ->
  ?triggers:string prop Tf_core.assoc ->
  load_balancer_name:string prop ->
  load_balancer_port:float prop ->
  unit ->
  aws_load_balancer_listener_policy

val yojson_of_aws_load_balancer_listener_policy :
  aws_load_balancer_listener_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  load_balancer_name : string prop;
  load_balancer_port : float prop;
  policy_names : string list prop;
  triggers : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?policy_names:string prop list ->
  ?triggers:string prop Tf_core.assoc ->
  load_balancer_name:string prop ->
  load_balancer_port:float prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?policy_names:string prop list ->
  ?triggers:string prop Tf_core.assoc ->
  load_balancer_name:string prop ->
  load_balancer_port:float prop ->
  string ->
  t Tf_core.resource

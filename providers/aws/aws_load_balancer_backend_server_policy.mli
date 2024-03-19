(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_load_balancer_backend_server_policy

val aws_load_balancer_backend_server_policy :
  ?id:string prop ->
  ?policy_names:string prop list ->
  instance_port:float prop ->
  load_balancer_name:string prop ->
  unit ->
  aws_load_balancer_backend_server_policy

val yojson_of_aws_load_balancer_backend_server_policy :
  aws_load_balancer_backend_server_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  instance_port : float prop;
  load_balancer_name : string prop;
  policy_names : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?policy_names:string prop list ->
  instance_port:float prop ->
  load_balancer_name:string prop ->
  string ->
  t

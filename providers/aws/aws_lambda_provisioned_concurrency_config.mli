(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?update:string prop -> unit -> timeouts

type aws_lambda_provisioned_concurrency_config

val aws_lambda_provisioned_concurrency_config :
  ?id:string prop ->
  ?skip_destroy:bool prop ->
  ?timeouts:timeouts ->
  function_name:string prop ->
  provisioned_concurrent_executions:float prop ->
  qualifier:string prop ->
  unit ->
  aws_lambda_provisioned_concurrency_config

val yojson_of_aws_lambda_provisioned_concurrency_config :
  aws_lambda_provisioned_concurrency_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  function_name : string prop;
  id : string prop;
  provisioned_concurrent_executions : float prop;
  qualifier : string prop;
  skip_destroy : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?skip_destroy:bool prop ->
  ?timeouts:timeouts ->
  function_name:string prop ->
  provisioned_concurrent_executions:float prop ->
  qualifier:string prop ->
  string ->
  t

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lambda_provisioned_concurrency_config__timeouts
type aws_lambda_provisioned_concurrency_config

type t = private {
  function_name : string prop;
  id : string prop;
  provisioned_concurrent_executions : float prop;
  qualifier : string prop;
  skip_destroy : bool prop;
}

val aws_lambda_provisioned_concurrency_config :
  ?id:string prop ->
  ?skip_destroy:bool prop ->
  ?timeouts:aws_lambda_provisioned_concurrency_config__timeouts ->
  function_name:string prop ->
  provisioned_concurrent_executions:float prop ->
  qualifier:string prop ->
  string ->
  t

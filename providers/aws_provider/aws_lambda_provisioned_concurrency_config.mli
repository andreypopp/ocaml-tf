(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lambda_provisioned_concurrency_config__timeouts
type aws_lambda_provisioned_concurrency_config

val aws_lambda_provisioned_concurrency_config :
  ?id:string ->
  ?skip_destroy:bool ->
  ?timeouts:aws_lambda_provisioned_concurrency_config__timeouts ->
  function_name:string ->
  provisioned_concurrent_executions:float ->
  qualifier:string ->
  string ->
  unit

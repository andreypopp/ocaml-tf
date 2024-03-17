(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lambda_function_event_invoke_config__destination_config__on_failure

type aws_lambda_function_event_invoke_config__destination_config__on_success

type aws_lambda_function_event_invoke_config__destination_config
type aws_lambda_function_event_invoke_config

val aws_lambda_function_event_invoke_config :
  ?id:string ->
  ?maximum_event_age_in_seconds:float ->
  ?maximum_retry_attempts:float ->
  ?qualifier:string ->
  function_name:string ->
  destination_config:
    aws_lambda_function_event_invoke_config__destination_config list ->
  string ->
  unit

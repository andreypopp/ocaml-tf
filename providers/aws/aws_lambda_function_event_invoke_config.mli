(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type destination_config__on_failure

val destination_config__on_failure :
  destination:string prop -> unit -> destination_config__on_failure

type destination_config__on_success

val destination_config__on_success :
  destination:string prop -> unit -> destination_config__on_success

type destination_config

val destination_config :
  on_failure:destination_config__on_failure list ->
  on_success:destination_config__on_success list ->
  unit ->
  destination_config

type aws_lambda_function_event_invoke_config

val aws_lambda_function_event_invoke_config :
  ?id:string prop ->
  ?maximum_event_age_in_seconds:float prop ->
  ?maximum_retry_attempts:float prop ->
  ?qualifier:string prop ->
  function_name:string prop ->
  destination_config:destination_config list ->
  unit ->
  aws_lambda_function_event_invoke_config

val yojson_of_aws_lambda_function_event_invoke_config :
  aws_lambda_function_event_invoke_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  function_name : string prop;
  id : string prop;
  maximum_event_age_in_seconds : float prop;
  maximum_retry_attempts : float prop;
  qualifier : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?maximum_event_age_in_seconds:float prop ->
  ?maximum_retry_attempts:float prop ->
  ?qualifier:string prop ->
  function_name:string prop ->
  destination_config:destination_config list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?maximum_event_age_in_seconds:float prop ->
  ?maximum_retry_attempts:float prop ->
  ?qualifier:string prop ->
  function_name:string prop ->
  destination_config:destination_config list ->
  string ->
  t Tf_core.resource

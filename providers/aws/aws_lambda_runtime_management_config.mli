(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_lambda_runtime_management_config

val aws_lambda_runtime_management_config :
  ?qualifier:string prop ->
  ?runtime_version_arn:string prop ->
  ?update_runtime_on:string prop ->
  function_name:string prop ->
  unit ->
  aws_lambda_runtime_management_config

val yojson_of_aws_lambda_runtime_management_config :
  aws_lambda_runtime_management_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  function_arn : string prop;
  function_name : string prop;
  qualifier : string prop;
  runtime_version_arn : string prop;
  update_runtime_on : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?qualifier:string prop ->
  ?runtime_version_arn:string prop ->
  ?update_runtime_on:string prop ->
  function_name:string prop ->
  string ->
  t

val make :
  ?qualifier:string prop ->
  ?runtime_version_arn:string prop ->
  ?update_runtime_on:string prop ->
  function_name:string prop ->
  string ->
  t Tf_core.resource

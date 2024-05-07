(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type routing_config

val routing_config :
  ?additional_version_weights:(string * float prop) list ->
  unit ->
  routing_config

type aws_lambda_alias

val aws_lambda_alias :
  ?description:string prop ->
  ?id:string prop ->
  ?routing_config:routing_config list ->
  function_name:string prop ->
  function_version:string prop ->
  name:string prop ->
  unit ->
  aws_lambda_alias

val yojson_of_aws_lambda_alias : aws_lambda_alias -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  function_name : string prop;
  function_version : string prop;
  id : string prop;
  invoke_arn : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?routing_config:routing_config list ->
  function_name:string prop ->
  function_version:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?routing_config:routing_config list ->
  function_name:string prop ->
  function_version:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource

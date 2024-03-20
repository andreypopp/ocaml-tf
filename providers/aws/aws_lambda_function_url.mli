(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cors

val cors :
  ?allow_credentials:bool prop ->
  ?allow_headers:string prop list ->
  ?allow_methods:string prop list ->
  ?allow_origins:string prop list ->
  ?expose_headers:string prop list ->
  ?max_age:float prop ->
  unit ->
  cors

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type aws_lambda_function_url

val aws_lambda_function_url :
  ?id:string prop ->
  ?invoke_mode:string prop ->
  ?qualifier:string prop ->
  ?timeouts:timeouts ->
  authorization_type:string prop ->
  function_name:string prop ->
  cors:cors list ->
  unit ->
  aws_lambda_function_url

val yojson_of_aws_lambda_function_url :
  aws_lambda_function_url -> json

(** RESOURCE REGISTRATION *)

type t = private {
  authorization_type : string prop;
  function_arn : string prop;
  function_name : string prop;
  function_url : string prop;
  id : string prop;
  invoke_mode : string prop;
  qualifier : string prop;
  url_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?invoke_mode:string prop ->
  ?qualifier:string prop ->
  ?timeouts:timeouts ->
  authorization_type:string prop ->
  function_name:string prop ->
  cors:cors list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?invoke_mode:string prop ->
  ?qualifier:string prop ->
  ?timeouts:timeouts ->
  authorization_type:string prop ->
  function_name:string prop ->
  cors:cors list ->
  string ->
  t Tf_core.resource

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cors = {
  allow_credentials : bool prop;  (** allow_credentials *)
  allow_headers : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** allow_headers *)
  allow_methods : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** allow_methods *)
  allow_origins : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** allow_origins *)
  expose_headers : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** expose_headers *)
  max_age : float prop;  (** max_age *)
}

type aws_lambda_function_url

val aws_lambda_function_url :
  ?id:string prop ->
  ?qualifier:string prop ->
  function_name:string prop ->
  unit ->
  aws_lambda_function_url

val yojson_of_aws_lambda_function_url :
  aws_lambda_function_url -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  authorization_type : string prop;
  cors : cors list prop;
  creation_time : string prop;
  function_arn : string prop;
  function_name : string prop;
  function_url : string prop;
  id : string prop;
  invoke_mode : string prop;
  last_modified_time : string prop;
  qualifier : string prop;
  url_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?qualifier:string prop ->
  function_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?qualifier:string prop ->
  function_name:string prop ->
  string ->
  t Tf_core.resource

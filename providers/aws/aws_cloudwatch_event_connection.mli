(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type auth_parameters__api_key

val auth_parameters__api_key :
  key:string prop ->
  value:string prop ->
  unit ->
  auth_parameters__api_key

type auth_parameters__basic

val auth_parameters__basic :
  password:string prop ->
  username:string prop ->
  unit ->
  auth_parameters__basic

type auth_parameters__invocation_http_parameters__body

val auth_parameters__invocation_http_parameters__body :
  ?is_value_secret:bool prop ->
  ?key:string prop ->
  ?value:string prop ->
  unit ->
  auth_parameters__invocation_http_parameters__body

type auth_parameters__invocation_http_parameters__header

val auth_parameters__invocation_http_parameters__header :
  ?is_value_secret:bool prop ->
  ?key:string prop ->
  ?value:string prop ->
  unit ->
  auth_parameters__invocation_http_parameters__header

type auth_parameters__invocation_http_parameters__query_string

val auth_parameters__invocation_http_parameters__query_string :
  ?is_value_secret:bool prop ->
  ?key:string prop ->
  ?value:string prop ->
  unit ->
  auth_parameters__invocation_http_parameters__query_string

type auth_parameters__invocation_http_parameters

val auth_parameters__invocation_http_parameters :
  ?body:auth_parameters__invocation_http_parameters__body list ->
  ?header:auth_parameters__invocation_http_parameters__header list ->
  ?query_string:
    auth_parameters__invocation_http_parameters__query_string list ->
  unit ->
  auth_parameters__invocation_http_parameters

type auth_parameters__oauth__client_parameters

val auth_parameters__oauth__client_parameters :
  client_id:string prop ->
  client_secret:string prop ->
  unit ->
  auth_parameters__oauth__client_parameters

type auth_parameters__oauth__oauth_http_parameters__body

val auth_parameters__oauth__oauth_http_parameters__body :
  ?is_value_secret:bool prop ->
  ?key:string prop ->
  ?value:string prop ->
  unit ->
  auth_parameters__oauth__oauth_http_parameters__body

type auth_parameters__oauth__oauth_http_parameters__header

val auth_parameters__oauth__oauth_http_parameters__header :
  ?is_value_secret:bool prop ->
  ?key:string prop ->
  ?value:string prop ->
  unit ->
  auth_parameters__oauth__oauth_http_parameters__header

type auth_parameters__oauth__oauth_http_parameters__query_string

val auth_parameters__oauth__oauth_http_parameters__query_string :
  ?is_value_secret:bool prop ->
  ?key:string prop ->
  ?value:string prop ->
  unit ->
  auth_parameters__oauth__oauth_http_parameters__query_string

type auth_parameters__oauth__oauth_http_parameters

val auth_parameters__oauth__oauth_http_parameters :
  ?body:auth_parameters__oauth__oauth_http_parameters__body list ->
  ?header:auth_parameters__oauth__oauth_http_parameters__header list ->
  ?query_string:
    auth_parameters__oauth__oauth_http_parameters__query_string list ->
  unit ->
  auth_parameters__oauth__oauth_http_parameters

type auth_parameters__oauth

val auth_parameters__oauth :
  ?client_parameters:auth_parameters__oauth__client_parameters list ->
  authorization_endpoint:string prop ->
  http_method:string prop ->
  oauth_http_parameters:
    auth_parameters__oauth__oauth_http_parameters list ->
  unit ->
  auth_parameters__oauth

type auth_parameters

val auth_parameters :
  ?api_key:auth_parameters__api_key list ->
  ?basic:auth_parameters__basic list ->
  ?invocation_http_parameters:
    auth_parameters__invocation_http_parameters list ->
  ?oauth:auth_parameters__oauth list ->
  unit ->
  auth_parameters

type aws_cloudwatch_event_connection

val aws_cloudwatch_event_connection :
  ?description:string prop ->
  ?id:string prop ->
  authorization_type:string prop ->
  name:string prop ->
  auth_parameters:auth_parameters list ->
  unit ->
  aws_cloudwatch_event_connection

val yojson_of_aws_cloudwatch_event_connection :
  aws_cloudwatch_event_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  authorization_type : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  secret_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  authorization_type:string prop ->
  name:string prop ->
  auth_parameters:auth_parameters list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  authorization_type:string prop ->
  name:string prop ->
  auth_parameters:auth_parameters list ->
  string ->
  t Tf_core.resource

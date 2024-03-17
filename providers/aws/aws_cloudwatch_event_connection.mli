(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_event_connection__auth_parameters__api_key
type aws_cloudwatch_event_connection__auth_parameters__basic

type aws_cloudwatch_event_connection__auth_parameters__invocation_http_parameters__body

type aws_cloudwatch_event_connection__auth_parameters__invocation_http_parameters__header

type aws_cloudwatch_event_connection__auth_parameters__invocation_http_parameters__query_string

type aws_cloudwatch_event_connection__auth_parameters__invocation_http_parameters

type aws_cloudwatch_event_connection__auth_parameters__oauth__client_parameters

type aws_cloudwatch_event_connection__auth_parameters__oauth__oauth_http_parameters__body

type aws_cloudwatch_event_connection__auth_parameters__oauth__oauth_http_parameters__header

type aws_cloudwatch_event_connection__auth_parameters__oauth__oauth_http_parameters__query_string

type aws_cloudwatch_event_connection__auth_parameters__oauth__oauth_http_parameters

type aws_cloudwatch_event_connection__auth_parameters__oauth
type aws_cloudwatch_event_connection__auth_parameters
type aws_cloudwatch_event_connection

type t = private {
  arn : string prop;
  authorization_type : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  secret_arn : string prop;
}

val aws_cloudwatch_event_connection :
  ?description:string prop ->
  ?id:string prop ->
  authorization_type:string prop ->
  name:string prop ->
  auth_parameters:
    aws_cloudwatch_event_connection__auth_parameters list ->
  string ->
  t

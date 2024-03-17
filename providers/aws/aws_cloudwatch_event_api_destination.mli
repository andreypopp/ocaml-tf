(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_event_api_destination

type t = private {
  arn : string prop;
  connection_arn : string prop;
  description : string prop;
  http_method : string prop;
  id : string prop;
  invocation_endpoint : string prop;
  invocation_rate_limit_per_second : float prop;
  name : string prop;
}

val aws_cloudwatch_event_api_destination :
  ?description:string prop ->
  ?id:string prop ->
  ?invocation_rate_limit_per_second:float prop ->
  connection_arn:string prop ->
  http_method:string prop ->
  invocation_endpoint:string prop ->
  name:string prop ->
  string ->
  t

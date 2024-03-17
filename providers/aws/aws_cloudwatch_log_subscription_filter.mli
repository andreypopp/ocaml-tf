(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_log_subscription_filter

type t = private {
  destination_arn : string prop;
  distribution : string prop;
  filter_pattern : string prop;
  id : string prop;
  log_group_name : string prop;
  name : string prop;
  role_arn : string prop;
}

val aws_cloudwatch_log_subscription_filter :
  ?distribution:string prop ->
  ?id:string prop ->
  ?role_arn:string prop ->
  destination_arn:string prop ->
  filter_pattern:string prop ->
  log_group_name:string prop ->
  name:string prop ->
  string ->
  t

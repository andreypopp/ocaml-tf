(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cloudwatch_log_subscription_filter

val aws_cloudwatch_log_subscription_filter :
  ?distribution:string prop ->
  ?id:string prop ->
  ?role_arn:string prop ->
  destination_arn:string prop ->
  filter_pattern:string prop ->
  log_group_name:string prop ->
  name:string prop ->
  unit ->
  aws_cloudwatch_log_subscription_filter

val yojson_of_aws_cloudwatch_log_subscription_filter :
  aws_cloudwatch_log_subscription_filter -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  destination_arn : string prop;
  distribution : string prop;
  filter_pattern : string prop;
  id : string prop;
  log_group_name : string prop;
  name : string prop;
  role_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?distribution:string prop ->
  ?id:string prop ->
  ?role_arn:string prop ->
  destination_arn:string prop ->
  filter_pattern:string prop ->
  log_group_name:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?distribution:string prop ->
  ?id:string prop ->
  ?role_arn:string prop ->
  destination_arn:string prop ->
  filter_pattern:string prop ->
  log_group_name:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource

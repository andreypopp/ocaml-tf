(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_log_subscription_filter

val aws_cloudwatch_log_subscription_filter :
  ?distribution:string ->
  destination_arn:string ->
  filter_pattern:string ->
  log_group_name:string ->
  name:string ->
  string ->
  unit

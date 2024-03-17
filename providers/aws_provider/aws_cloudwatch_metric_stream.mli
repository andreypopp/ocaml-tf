(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_metric_stream__exclude_filter
type aws_cloudwatch_metric_stream__include_filter

type aws_cloudwatch_metric_stream__statistics_configuration__include_metric

type aws_cloudwatch_metric_stream__statistics_configuration
type aws_cloudwatch_metric_stream__timeouts
type aws_cloudwatch_metric_stream

val aws_cloudwatch_metric_stream :
  ?id:string ->
  ?include_linked_accounts_metrics:bool ->
  ?name:string ->
  ?name_prefix:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_cloudwatch_metric_stream__timeouts ->
  firehose_arn:string ->
  output_format:string ->
  role_arn:string ->
  exclude_filter:aws_cloudwatch_metric_stream__exclude_filter list ->
  include_filter:aws_cloudwatch_metric_stream__include_filter list ->
  statistics_configuration:
    aws_cloudwatch_metric_stream__statistics_configuration list ->
  string ->
  unit

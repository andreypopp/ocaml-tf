(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudwatch_metric_stream__exclude_filter
type aws_cloudwatch_metric_stream__include_filter

type aws_cloudwatch_metric_stream__statistics_configuration__include_metric

type aws_cloudwatch_metric_stream__statistics_configuration
type aws_cloudwatch_metric_stream__timeouts
type aws_cloudwatch_metric_stream

type t = private {
  arn : string prop;
  creation_date : string prop;
  firehose_arn : string prop;
  id : string prop;
  include_linked_accounts_metrics : bool prop;
  last_update_date : string prop;
  name : string prop;
  name_prefix : string prop;
  output_format : string prop;
  role_arn : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_cloudwatch_metric_stream :
  ?id:string prop ->
  ?include_linked_accounts_metrics:bool prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_cloudwatch_metric_stream__timeouts ->
  firehose_arn:string prop ->
  output_format:string prop ->
  role_arn:string prop ->
  exclude_filter:aws_cloudwatch_metric_stream__exclude_filter list ->
  include_filter:aws_cloudwatch_metric_stream__include_filter list ->
  statistics_configuration:
    aws_cloudwatch_metric_stream__statistics_configuration list ->
  string ->
  t

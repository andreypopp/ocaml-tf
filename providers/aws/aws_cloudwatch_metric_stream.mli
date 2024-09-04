(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type exclude_filter

val exclude_filter :
  ?metric_names:string prop list ->
  namespace:string prop ->
  unit ->
  exclude_filter

type include_filter

val include_filter :
  ?metric_names:string prop list ->
  namespace:string prop ->
  unit ->
  include_filter

type statistics_configuration__include_metric

val statistics_configuration__include_metric :
  metric_name:string prop ->
  namespace:string prop ->
  unit ->
  statistics_configuration__include_metric

type statistics_configuration

val statistics_configuration :
  additional_statistics:string prop list ->
  include_metric:statistics_configuration__include_metric list ->
  unit ->
  statistics_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_cloudwatch_metric_stream

val aws_cloudwatch_metric_stream :
  ?id:string prop ->
  ?include_linked_accounts_metrics:bool prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  firehose_arn:string prop ->
  output_format:string prop ->
  role_arn:string prop ->
  exclude_filter:exclude_filter list ->
  include_filter:include_filter list ->
  statistics_configuration:statistics_configuration list ->
  unit ->
  aws_cloudwatch_metric_stream

val yojson_of_aws_cloudwatch_metric_stream :
  aws_cloudwatch_metric_stream -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?include_linked_accounts_metrics:bool prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  firehose_arn:string prop ->
  output_format:string prop ->
  role_arn:string prop ->
  exclude_filter:exclude_filter list ->
  include_filter:include_filter list ->
  statistics_configuration:statistics_configuration list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?include_linked_accounts_metrics:bool prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  firehose_arn:string prop ->
  output_format:string prop ->
  role_arn:string prop ->
  exclude_filter:exclude_filter list ->
  include_filter:include_filter list ->
  statistics_configuration:statistics_configuration list ->
  string ->
  t Tf_core.resource

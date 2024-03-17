(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_topic_rule__cloudwatch_alarm
type aws_iot_topic_rule__cloudwatch_logs
type aws_iot_topic_rule__cloudwatch_metric
type aws_iot_topic_rule__dynamodb
type aws_iot_topic_rule__dynamodbv2__put_item
type aws_iot_topic_rule__dynamodbv2
type aws_iot_topic_rule__elasticsearch
type aws_iot_topic_rule__error_action__cloudwatch_alarm
type aws_iot_topic_rule__error_action__cloudwatch_logs
type aws_iot_topic_rule__error_action__cloudwatch_metric
type aws_iot_topic_rule__error_action__dynamodb
type aws_iot_topic_rule__error_action__dynamodbv2__put_item
type aws_iot_topic_rule__error_action__dynamodbv2
type aws_iot_topic_rule__error_action__elasticsearch
type aws_iot_topic_rule__error_action__firehose
type aws_iot_topic_rule__error_action__http__http_header
type aws_iot_topic_rule__error_action__http
type aws_iot_topic_rule__error_action__iot_analytics
type aws_iot_topic_rule__error_action__iot_events
type aws_iot_topic_rule__error_action__kafka__header
type aws_iot_topic_rule__error_action__kafka
type aws_iot_topic_rule__error_action__kinesis
type aws_iot_topic_rule__error_action__lambda
type aws_iot_topic_rule__error_action__republish
type aws_iot_topic_rule__error_action__s3
type aws_iot_topic_rule__error_action__sns
type aws_iot_topic_rule__error_action__sqs
type aws_iot_topic_rule__error_action__step_functions
type aws_iot_topic_rule__error_action__timestream__dimension
type aws_iot_topic_rule__error_action__timestream__timestamp
type aws_iot_topic_rule__error_action__timestream
type aws_iot_topic_rule__error_action
type aws_iot_topic_rule__firehose
type aws_iot_topic_rule__http__http_header
type aws_iot_topic_rule__http
type aws_iot_topic_rule__iot_analytics
type aws_iot_topic_rule__iot_events
type aws_iot_topic_rule__kafka__header
type aws_iot_topic_rule__kafka
type aws_iot_topic_rule__kinesis
type aws_iot_topic_rule__lambda
type aws_iot_topic_rule__republish
type aws_iot_topic_rule__s3
type aws_iot_topic_rule__sns
type aws_iot_topic_rule__sqs
type aws_iot_topic_rule__step_functions
type aws_iot_topic_rule__timestream__dimension
type aws_iot_topic_rule__timestream__timestamp
type aws_iot_topic_rule__timestream
type aws_iot_topic_rule

val aws_iot_topic_rule :
  ?description:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  enabled:bool ->
  name:string ->
  sql:string ->
  sql_version:string ->
  cloudwatch_alarm:aws_iot_topic_rule__cloudwatch_alarm list ->
  cloudwatch_logs:aws_iot_topic_rule__cloudwatch_logs list ->
  cloudwatch_metric:aws_iot_topic_rule__cloudwatch_metric list ->
  dynamodb:aws_iot_topic_rule__dynamodb list ->
  dynamodbv2:aws_iot_topic_rule__dynamodbv2 list ->
  elasticsearch:aws_iot_topic_rule__elasticsearch list ->
  error_action:aws_iot_topic_rule__error_action list ->
  firehose:aws_iot_topic_rule__firehose list ->
  http:aws_iot_topic_rule__http list ->
  iot_analytics:aws_iot_topic_rule__iot_analytics list ->
  iot_events:aws_iot_topic_rule__iot_events list ->
  kafka:aws_iot_topic_rule__kafka list ->
  kinesis:aws_iot_topic_rule__kinesis list ->
  lambda:aws_iot_topic_rule__lambda list ->
  republish:aws_iot_topic_rule__republish list ->
  s3:aws_iot_topic_rule__s3 list ->
  sns:aws_iot_topic_rule__sns list ->
  sqs:aws_iot_topic_rule__sqs list ->
  step_functions:aws_iot_topic_rule__step_functions list ->
  timestream:aws_iot_topic_rule__timestream list ->
  string ->
  unit

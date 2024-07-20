(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudwatch_alarm

val cloudwatch_alarm :
  alarm_name:string prop ->
  role_arn:string prop ->
  state_reason:string prop ->
  state_value:string prop ->
  unit ->
  cloudwatch_alarm

type cloudwatch_logs

val cloudwatch_logs :
  ?batch_mode:bool prop ->
  log_group_name:string prop ->
  role_arn:string prop ->
  unit ->
  cloudwatch_logs

type cloudwatch_metric

val cloudwatch_metric :
  ?metric_timestamp:string prop ->
  metric_name:string prop ->
  metric_namespace:string prop ->
  metric_unit:string prop ->
  metric_value:string prop ->
  role_arn:string prop ->
  unit ->
  cloudwatch_metric

type dynamodb

val dynamodb :
  ?hash_key_type:string prop ->
  ?operation:string prop ->
  ?payload_field:string prop ->
  ?range_key_field:string prop ->
  ?range_key_type:string prop ->
  ?range_key_value:string prop ->
  hash_key_field:string prop ->
  hash_key_value:string prop ->
  role_arn:string prop ->
  table_name:string prop ->
  unit ->
  dynamodb

type dynamodbv2__put_item

val dynamodbv2__put_item :
  table_name:string prop -> unit -> dynamodbv2__put_item

type dynamodbv2

val dynamodbv2 :
  ?put_item:dynamodbv2__put_item list ->
  role_arn:string prop ->
  unit ->
  dynamodbv2

type elasticsearch

val elasticsearch :
  endpoint:string prop ->
  id:string prop ->
  index:string prop ->
  role_arn:string prop ->
  type_:string prop ->
  unit ->
  elasticsearch

type error_action__cloudwatch_alarm

val error_action__cloudwatch_alarm :
  alarm_name:string prop ->
  role_arn:string prop ->
  state_reason:string prop ->
  state_value:string prop ->
  unit ->
  error_action__cloudwatch_alarm

type error_action__cloudwatch_logs

val error_action__cloudwatch_logs :
  ?batch_mode:bool prop ->
  log_group_name:string prop ->
  role_arn:string prop ->
  unit ->
  error_action__cloudwatch_logs

type error_action__cloudwatch_metric

val error_action__cloudwatch_metric :
  ?metric_timestamp:string prop ->
  metric_name:string prop ->
  metric_namespace:string prop ->
  metric_unit:string prop ->
  metric_value:string prop ->
  role_arn:string prop ->
  unit ->
  error_action__cloudwatch_metric

type error_action__dynamodb

val error_action__dynamodb :
  ?hash_key_type:string prop ->
  ?operation:string prop ->
  ?payload_field:string prop ->
  ?range_key_field:string prop ->
  ?range_key_type:string prop ->
  ?range_key_value:string prop ->
  hash_key_field:string prop ->
  hash_key_value:string prop ->
  role_arn:string prop ->
  table_name:string prop ->
  unit ->
  error_action__dynamodb

type error_action__dynamodbv2__put_item

val error_action__dynamodbv2__put_item :
  table_name:string prop ->
  unit ->
  error_action__dynamodbv2__put_item

type error_action__dynamodbv2

val error_action__dynamodbv2 :
  ?put_item:error_action__dynamodbv2__put_item list ->
  role_arn:string prop ->
  unit ->
  error_action__dynamodbv2

type error_action__elasticsearch

val error_action__elasticsearch :
  endpoint:string prop ->
  id:string prop ->
  index:string prop ->
  role_arn:string prop ->
  type_:string prop ->
  unit ->
  error_action__elasticsearch

type error_action__firehose

val error_action__firehose :
  ?batch_mode:bool prop ->
  ?separator:string prop ->
  delivery_stream_name:string prop ->
  role_arn:string prop ->
  unit ->
  error_action__firehose

type error_action__http__http_header

val error_action__http__http_header :
  key:string prop ->
  value:string prop ->
  unit ->
  error_action__http__http_header

type error_action__http

val error_action__http :
  ?confirmation_url:string prop ->
  ?http_header:error_action__http__http_header list ->
  url:string prop ->
  unit ->
  error_action__http

type error_action__iot_analytics

val error_action__iot_analytics :
  ?batch_mode:bool prop ->
  channel_name:string prop ->
  role_arn:string prop ->
  unit ->
  error_action__iot_analytics

type error_action__iot_events

val error_action__iot_events :
  ?batch_mode:bool prop ->
  ?message_id:string prop ->
  input_name:string prop ->
  role_arn:string prop ->
  unit ->
  error_action__iot_events

type error_action__kafka__header

val error_action__kafka__header :
  key:string prop ->
  value:string prop ->
  unit ->
  error_action__kafka__header

type error_action__kafka

val error_action__kafka :
  ?key:string prop ->
  ?partition:string prop ->
  ?header:error_action__kafka__header list ->
  client_properties:(string * string prop) list ->
  destination_arn:string prop ->
  topic:string prop ->
  unit ->
  error_action__kafka

type error_action__kinesis

val error_action__kinesis :
  ?partition_key:string prop ->
  role_arn:string prop ->
  stream_name:string prop ->
  unit ->
  error_action__kinesis

type error_action__lambda

val error_action__lambda :
  function_arn:string prop -> unit -> error_action__lambda

type error_action__republish

val error_action__republish :
  ?qos:float prop ->
  role_arn:string prop ->
  topic:string prop ->
  unit ->
  error_action__republish

type error_action__s3

val error_action__s3 :
  ?canned_acl:string prop ->
  bucket_name:string prop ->
  key:string prop ->
  role_arn:string prop ->
  unit ->
  error_action__s3

type error_action__sns

val error_action__sns :
  ?message_format:string prop ->
  role_arn:string prop ->
  target_arn:string prop ->
  unit ->
  error_action__sns

type error_action__sqs

val error_action__sqs :
  queue_url:string prop ->
  role_arn:string prop ->
  use_base64:bool prop ->
  unit ->
  error_action__sqs

type error_action__step_functions

val error_action__step_functions :
  ?execution_name_prefix:string prop ->
  role_arn:string prop ->
  state_machine_name:string prop ->
  unit ->
  error_action__step_functions

type error_action__timestream__dimension

val error_action__timestream__dimension :
  name:string prop ->
  value:string prop ->
  unit ->
  error_action__timestream__dimension

type error_action__timestream__timestamp

val error_action__timestream__timestamp :
  unit:string prop ->
  value:string prop ->
  unit ->
  error_action__timestream__timestamp

type error_action__timestream

val error_action__timestream :
  ?timestamp:error_action__timestream__timestamp list ->
  database_name:string prop ->
  role_arn:string prop ->
  table_name:string prop ->
  dimension:error_action__timestream__dimension list ->
  unit ->
  error_action__timestream

type error_action

val error_action :
  ?cloudwatch_alarm:error_action__cloudwatch_alarm list ->
  ?cloudwatch_logs:error_action__cloudwatch_logs list ->
  ?cloudwatch_metric:error_action__cloudwatch_metric list ->
  ?dynamodb:error_action__dynamodb list ->
  ?dynamodbv2:error_action__dynamodbv2 list ->
  ?elasticsearch:error_action__elasticsearch list ->
  ?firehose:error_action__firehose list ->
  ?http:error_action__http list ->
  ?iot_analytics:error_action__iot_analytics list ->
  ?iot_events:error_action__iot_events list ->
  ?kafka:error_action__kafka list ->
  ?kinesis:error_action__kinesis list ->
  ?lambda:error_action__lambda list ->
  ?republish:error_action__republish list ->
  ?s3:error_action__s3 list ->
  ?sns:error_action__sns list ->
  ?sqs:error_action__sqs list ->
  ?step_functions:error_action__step_functions list ->
  ?timestream:error_action__timestream list ->
  unit ->
  error_action

type firehose

val firehose :
  ?batch_mode:bool prop ->
  ?separator:string prop ->
  delivery_stream_name:string prop ->
  role_arn:string prop ->
  unit ->
  firehose

type http__http_header

val http__http_header :
  key:string prop -> value:string prop -> unit -> http__http_header

type http

val http :
  ?confirmation_url:string prop ->
  ?http_header:http__http_header list ->
  url:string prop ->
  unit ->
  http

type iot_analytics

val iot_analytics :
  ?batch_mode:bool prop ->
  channel_name:string prop ->
  role_arn:string prop ->
  unit ->
  iot_analytics

type iot_events

val iot_events :
  ?batch_mode:bool prop ->
  ?message_id:string prop ->
  input_name:string prop ->
  role_arn:string prop ->
  unit ->
  iot_events

type kafka__header

val kafka__header :
  key:string prop -> value:string prop -> unit -> kafka__header

type kafka

val kafka :
  ?key:string prop ->
  ?partition:string prop ->
  ?header:kafka__header list ->
  client_properties:(string * string prop) list ->
  destination_arn:string prop ->
  topic:string prop ->
  unit ->
  kafka

type kinesis

val kinesis :
  ?partition_key:string prop ->
  role_arn:string prop ->
  stream_name:string prop ->
  unit ->
  kinesis

type lambda

val lambda : function_arn:string prop -> unit -> lambda

type republish

val republish :
  ?qos:float prop ->
  role_arn:string prop ->
  topic:string prop ->
  unit ->
  republish

type s3

val s3 :
  ?canned_acl:string prop ->
  bucket_name:string prop ->
  key:string prop ->
  role_arn:string prop ->
  unit ->
  s3

type sns

val sns :
  ?message_format:string prop ->
  role_arn:string prop ->
  target_arn:string prop ->
  unit ->
  sns

type sqs

val sqs :
  queue_url:string prop ->
  role_arn:string prop ->
  use_base64:bool prop ->
  unit ->
  sqs

type step_functions

val step_functions :
  ?execution_name_prefix:string prop ->
  role_arn:string prop ->
  state_machine_name:string prop ->
  unit ->
  step_functions

type timestream__dimension

val timestream__dimension :
  name:string prop ->
  value:string prop ->
  unit ->
  timestream__dimension

type timestream__timestamp

val timestream__timestamp :
  unit:string prop ->
  value:string prop ->
  unit ->
  timestream__timestamp

type timestream

val timestream :
  ?timestamp:timestream__timestamp list ->
  database_name:string prop ->
  role_arn:string prop ->
  table_name:string prop ->
  dimension:timestream__dimension list ->
  unit ->
  timestream

type aws_iot_topic_rule

val aws_iot_topic_rule :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?error_action:error_action list ->
  enabled:bool prop ->
  name:string prop ->
  sql:string prop ->
  sql_version:string prop ->
  cloudwatch_alarm:cloudwatch_alarm list ->
  cloudwatch_logs:cloudwatch_logs list ->
  cloudwatch_metric:cloudwatch_metric list ->
  dynamodb:dynamodb list ->
  dynamodbv2:dynamodbv2 list ->
  elasticsearch:elasticsearch list ->
  firehose:firehose list ->
  http:http list ->
  iot_analytics:iot_analytics list ->
  iot_events:iot_events list ->
  kafka:kafka list ->
  kinesis:kinesis list ->
  lambda:lambda list ->
  republish:republish list ->
  s3:s3 list ->
  sns:sns list ->
  sqs:sqs list ->
  step_functions:step_functions list ->
  timestream:timestream list ->
  unit ->
  aws_iot_topic_rule

val yojson_of_aws_iot_topic_rule : aws_iot_topic_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  sql : string prop;
  sql_version : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?error_action:error_action list ->
  enabled:bool prop ->
  name:string prop ->
  sql:string prop ->
  sql_version:string prop ->
  cloudwatch_alarm:cloudwatch_alarm list ->
  cloudwatch_logs:cloudwatch_logs list ->
  cloudwatch_metric:cloudwatch_metric list ->
  dynamodb:dynamodb list ->
  dynamodbv2:dynamodbv2 list ->
  elasticsearch:elasticsearch list ->
  firehose:firehose list ->
  http:http list ->
  iot_analytics:iot_analytics list ->
  iot_events:iot_events list ->
  kafka:kafka list ->
  kinesis:kinesis list ->
  lambda:lambda list ->
  republish:republish list ->
  s3:s3 list ->
  sns:sns list ->
  sqs:sqs list ->
  step_functions:step_functions list ->
  timestream:timestream list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?error_action:error_action list ->
  enabled:bool prop ->
  name:string prop ->
  sql:string prop ->
  sql_version:string prop ->
  cloudwatch_alarm:cloudwatch_alarm list ->
  cloudwatch_logs:cloudwatch_logs list ->
  cloudwatch_metric:cloudwatch_metric list ->
  dynamodb:dynamodb list ->
  dynamodbv2:dynamodbv2 list ->
  elasticsearch:elasticsearch list ->
  firehose:firehose list ->
  http:http list ->
  iot_analytics:iot_analytics list ->
  iot_events:iot_events list ->
  kafka:kafka list ->
  kinesis:kinesis list ->
  lambda:lambda list ->
  republish:republish list ->
  s3:s3 list ->
  sns:sns list ->
  sqs:sqs list ->
  step_functions:step_functions list ->
  timestream:timestream list ->
  string ->
  t Tf_core.resource

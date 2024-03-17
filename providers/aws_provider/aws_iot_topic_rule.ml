(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iot_topic_rule__cloudwatch_alarm = {
  alarm_name : string;  (** alarm_name *)
  role_arn : string;  (** role_arn *)
  state_reason : string;  (** state_reason *)
  state_value : string;  (** state_value *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__cloudwatch_alarm *)

type aws_iot_topic_rule__cloudwatch_logs = {
  log_group_name : string;  (** log_group_name *)
  role_arn : string;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__cloudwatch_logs *)

type aws_iot_topic_rule__cloudwatch_metric = {
  metric_name : string;  (** metric_name *)
  metric_namespace : string;  (** metric_namespace *)
  metric_timestamp : string option; [@option]
      (** metric_timestamp *)
  metric_unit : string;  (** metric_unit *)
  metric_value : string;  (** metric_value *)
  role_arn : string;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__cloudwatch_metric *)

type aws_iot_topic_rule__dynamodb = {
  hash_key_field : string;  (** hash_key_field *)
  hash_key_type : string option; [@option]  (** hash_key_type *)
  hash_key_value : string;  (** hash_key_value *)
  operation : string option; [@option]  (** operation *)
  payload_field : string option; [@option]  (** payload_field *)
  range_key_field : string option; [@option]  (** range_key_field *)
  range_key_type : string option; [@option]  (** range_key_type *)
  range_key_value : string option; [@option]  (** range_key_value *)
  role_arn : string;  (** role_arn *)
  table_name : string;  (** table_name *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__dynamodb *)

type aws_iot_topic_rule__dynamodbv2__put_item = {
  table_name : string;  (** table_name *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__dynamodbv2__put_item *)

type aws_iot_topic_rule__dynamodbv2 = {
  role_arn : string;  (** role_arn *)
  put_item : aws_iot_topic_rule__dynamodbv2__put_item list;
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__dynamodbv2 *)

type aws_iot_topic_rule__elasticsearch = {
  endpoint : string;  (** endpoint *)
  id : string;  (** id *)
  index : string;  (** index *)
  role_arn : string;  (** role_arn *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__elasticsearch *)

type aws_iot_topic_rule__error_action__cloudwatch_alarm = {
  alarm_name : string;  (** alarm_name *)
  role_arn : string;  (** role_arn *)
  state_reason : string;  (** state_reason *)
  state_value : string;  (** state_value *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__error_action__cloudwatch_alarm *)

type aws_iot_topic_rule__error_action__cloudwatch_logs = {
  log_group_name : string;  (** log_group_name *)
  role_arn : string;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__error_action__cloudwatch_logs *)

type aws_iot_topic_rule__error_action__cloudwatch_metric = {
  metric_name : string;  (** metric_name *)
  metric_namespace : string;  (** metric_namespace *)
  metric_timestamp : string option; [@option]
      (** metric_timestamp *)
  metric_unit : string;  (** metric_unit *)
  metric_value : string;  (** metric_value *)
  role_arn : string;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__error_action__cloudwatch_metric *)

type aws_iot_topic_rule__error_action__dynamodb = {
  hash_key_field : string;  (** hash_key_field *)
  hash_key_type : string option; [@option]  (** hash_key_type *)
  hash_key_value : string;  (** hash_key_value *)
  operation : string option; [@option]  (** operation *)
  payload_field : string option; [@option]  (** payload_field *)
  range_key_field : string option; [@option]  (** range_key_field *)
  range_key_type : string option; [@option]  (** range_key_type *)
  range_key_value : string option; [@option]  (** range_key_value *)
  role_arn : string;  (** role_arn *)
  table_name : string;  (** table_name *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__error_action__dynamodb *)

type aws_iot_topic_rule__error_action__dynamodbv2__put_item = {
  table_name : string;  (** table_name *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__error_action__dynamodbv2__put_item *)

type aws_iot_topic_rule__error_action__dynamodbv2 = {
  role_arn : string;  (** role_arn *)
  put_item :
    aws_iot_topic_rule__error_action__dynamodbv2__put_item list;
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__error_action__dynamodbv2 *)

type aws_iot_topic_rule__error_action__elasticsearch = {
  endpoint : string;  (** endpoint *)
  id : string;  (** id *)
  index : string;  (** index *)
  role_arn : string;  (** role_arn *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__error_action__elasticsearch *)

type aws_iot_topic_rule__error_action__firehose = {
  batch_mode : bool option; [@option]  (** batch_mode *)
  delivery_stream_name : string;  (** delivery_stream_name *)
  role_arn : string;  (** role_arn *)
  separator : string option; [@option]  (** separator *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__error_action__firehose *)

type aws_iot_topic_rule__error_action__http__http_header = {
  key : string;  (** key *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__error_action__http__http_header *)

type aws_iot_topic_rule__error_action__http = {
  confirmation_url : string option; [@option]
      (** confirmation_url *)
  url : string;  (** url *)
  http_header :
    aws_iot_topic_rule__error_action__http__http_header list;
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__error_action__http *)

type aws_iot_topic_rule__error_action__iot_analytics = {
  batch_mode : bool option; [@option]  (** batch_mode *)
  channel_name : string;  (** channel_name *)
  role_arn : string;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__error_action__iot_analytics *)

type aws_iot_topic_rule__error_action__iot_events = {
  batch_mode : bool option; [@option]  (** batch_mode *)
  input_name : string;  (** input_name *)
  message_id : string option; [@option]  (** message_id *)
  role_arn : string;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__error_action__iot_events *)

type aws_iot_topic_rule__error_action__kafka__header = {
  key : string;  (** key *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__error_action__kafka__header *)

type aws_iot_topic_rule__error_action__kafka = {
  client_properties : (string * string) list;
      (** client_properties *)
  destination_arn : string;  (** destination_arn *)
  key : string option; [@option]  (** key *)
  partition : string option; [@option]  (** partition *)
  topic : string;  (** topic *)
  header : aws_iot_topic_rule__error_action__kafka__header list;
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__error_action__kafka *)

type aws_iot_topic_rule__error_action__kinesis = {
  partition_key : string option; [@option]  (** partition_key *)
  role_arn : string;  (** role_arn *)
  stream_name : string;  (** stream_name *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__error_action__kinesis *)

type aws_iot_topic_rule__error_action__lambda = {
  function_arn : string;  (** function_arn *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__error_action__lambda *)

type aws_iot_topic_rule__error_action__republish = {
  qos : float option; [@option]  (** qos *)
  role_arn : string;  (** role_arn *)
  topic : string;  (** topic *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__error_action__republish *)

type aws_iot_topic_rule__error_action__s3 = {
  bucket_name : string;  (** bucket_name *)
  canned_acl : string option; [@option]  (** canned_acl *)
  key : string;  (** key *)
  role_arn : string;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__error_action__s3 *)

type aws_iot_topic_rule__error_action__sns = {
  message_format : string option; [@option]  (** message_format *)
  role_arn : string;  (** role_arn *)
  target_arn : string;  (** target_arn *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__error_action__sns *)

type aws_iot_topic_rule__error_action__sqs = {
  queue_url : string;  (** queue_url *)
  role_arn : string;  (** role_arn *)
  use_base64 : bool;  (** use_base64 *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__error_action__sqs *)

type aws_iot_topic_rule__error_action__step_functions = {
  execution_name_prefix : string option; [@option]
      (** execution_name_prefix *)
  role_arn : string;  (** role_arn *)
  state_machine_name : string;  (** state_machine_name *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__error_action__step_functions *)

type aws_iot_topic_rule__error_action__timestream__dimension = {
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__error_action__timestream__dimension *)

type aws_iot_topic_rule__error_action__timestream__timestamp = {
  unit : string;  (** unit *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__error_action__timestream__timestamp *)

type aws_iot_topic_rule__error_action__timestream = {
  database_name : string;  (** database_name *)
  role_arn : string;  (** role_arn *)
  table_name : string;  (** table_name *)
  dimension :
    aws_iot_topic_rule__error_action__timestream__dimension list;
  timestamp :
    aws_iot_topic_rule__error_action__timestream__timestamp list;
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__error_action__timestream *)

type aws_iot_topic_rule__error_action = {
  cloudwatch_alarm :
    aws_iot_topic_rule__error_action__cloudwatch_alarm list;
  cloudwatch_logs :
    aws_iot_topic_rule__error_action__cloudwatch_logs list;
  cloudwatch_metric :
    aws_iot_topic_rule__error_action__cloudwatch_metric list;
  dynamodb : aws_iot_topic_rule__error_action__dynamodb list;
  dynamodbv2 : aws_iot_topic_rule__error_action__dynamodbv2 list;
  elasticsearch :
    aws_iot_topic_rule__error_action__elasticsearch list;
  firehose : aws_iot_topic_rule__error_action__firehose list;
  http : aws_iot_topic_rule__error_action__http list;
  iot_analytics :
    aws_iot_topic_rule__error_action__iot_analytics list;
  iot_events : aws_iot_topic_rule__error_action__iot_events list;
  kafka : aws_iot_topic_rule__error_action__kafka list;
  kinesis : aws_iot_topic_rule__error_action__kinesis list;
  lambda : aws_iot_topic_rule__error_action__lambda list;
  republish : aws_iot_topic_rule__error_action__republish list;
  s3 : aws_iot_topic_rule__error_action__s3 list;
  sns : aws_iot_topic_rule__error_action__sns list;
  sqs : aws_iot_topic_rule__error_action__sqs list;
  step_functions :
    aws_iot_topic_rule__error_action__step_functions list;
  timestream : aws_iot_topic_rule__error_action__timestream list;
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__error_action *)

type aws_iot_topic_rule__firehose = {
  batch_mode : bool option; [@option]  (** batch_mode *)
  delivery_stream_name : string;  (** delivery_stream_name *)
  role_arn : string;  (** role_arn *)
  separator : string option; [@option]  (** separator *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__firehose *)

type aws_iot_topic_rule__http__http_header = {
  key : string;  (** key *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__http__http_header *)

type aws_iot_topic_rule__http = {
  confirmation_url : string option; [@option]
      (** confirmation_url *)
  url : string;  (** url *)
  http_header : aws_iot_topic_rule__http__http_header list;
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__http *)

type aws_iot_topic_rule__iot_analytics = {
  batch_mode : bool option; [@option]  (** batch_mode *)
  channel_name : string;  (** channel_name *)
  role_arn : string;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__iot_analytics *)

type aws_iot_topic_rule__iot_events = {
  batch_mode : bool option; [@option]  (** batch_mode *)
  input_name : string;  (** input_name *)
  message_id : string option; [@option]  (** message_id *)
  role_arn : string;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__iot_events *)

type aws_iot_topic_rule__kafka__header = {
  key : string;  (** key *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__kafka__header *)

type aws_iot_topic_rule__kafka = {
  client_properties : (string * string) list;
      (** client_properties *)
  destination_arn : string;  (** destination_arn *)
  key : string option; [@option]  (** key *)
  partition : string option; [@option]  (** partition *)
  topic : string;  (** topic *)
  header : aws_iot_topic_rule__kafka__header list;
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__kafka *)

type aws_iot_topic_rule__kinesis = {
  partition_key : string option; [@option]  (** partition_key *)
  role_arn : string;  (** role_arn *)
  stream_name : string;  (** stream_name *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__kinesis *)

type aws_iot_topic_rule__lambda = {
  function_arn : string;  (** function_arn *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__lambda *)

type aws_iot_topic_rule__republish = {
  qos : float option; [@option]  (** qos *)
  role_arn : string;  (** role_arn *)
  topic : string;  (** topic *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__republish *)

type aws_iot_topic_rule__s3 = {
  bucket_name : string;  (** bucket_name *)
  canned_acl : string option; [@option]  (** canned_acl *)
  key : string;  (** key *)
  role_arn : string;  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__s3 *)

type aws_iot_topic_rule__sns = {
  message_format : string option; [@option]  (** message_format *)
  role_arn : string;  (** role_arn *)
  target_arn : string;  (** target_arn *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__sns *)

type aws_iot_topic_rule__sqs = {
  queue_url : string;  (** queue_url *)
  role_arn : string;  (** role_arn *)
  use_base64 : bool;  (** use_base64 *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__sqs *)

type aws_iot_topic_rule__step_functions = {
  execution_name_prefix : string option; [@option]
      (** execution_name_prefix *)
  role_arn : string;  (** role_arn *)
  state_machine_name : string;  (** state_machine_name *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__step_functions *)

type aws_iot_topic_rule__timestream__dimension = {
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__timestream__dimension *)

type aws_iot_topic_rule__timestream__timestamp = {
  unit : string;  (** unit *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__timestream__timestamp *)

type aws_iot_topic_rule__timestream = {
  database_name : string;  (** database_name *)
  role_arn : string;  (** role_arn *)
  table_name : string;  (** table_name *)
  dimension : aws_iot_topic_rule__timestream__dimension list;
  timestamp : aws_iot_topic_rule__timestream__timestamp list;
}
[@@deriving yojson_of]
(** aws_iot_topic_rule__timestream *)

type aws_iot_topic_rule = {
  description : string option; [@option]  (** description *)
  enabled : bool;  (** enabled *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  sql : string;  (** sql *)
  sql_version : string;  (** sql_version *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  cloudwatch_alarm : aws_iot_topic_rule__cloudwatch_alarm list;
  cloudwatch_logs : aws_iot_topic_rule__cloudwatch_logs list;
  cloudwatch_metric : aws_iot_topic_rule__cloudwatch_metric list;
  dynamodb : aws_iot_topic_rule__dynamodb list;
  dynamodbv2 : aws_iot_topic_rule__dynamodbv2 list;
  elasticsearch : aws_iot_topic_rule__elasticsearch list;
  error_action : aws_iot_topic_rule__error_action list;
  firehose : aws_iot_topic_rule__firehose list;
  http : aws_iot_topic_rule__http list;
  iot_analytics : aws_iot_topic_rule__iot_analytics list;
  iot_events : aws_iot_topic_rule__iot_events list;
  kafka : aws_iot_topic_rule__kafka list;
  kinesis : aws_iot_topic_rule__kinesis list;
  lambda : aws_iot_topic_rule__lambda list;
  republish : aws_iot_topic_rule__republish list;
  s3 : aws_iot_topic_rule__s3 list;
  sns : aws_iot_topic_rule__sns list;
  sqs : aws_iot_topic_rule__sqs list;
  step_functions : aws_iot_topic_rule__step_functions list;
  timestream : aws_iot_topic_rule__timestream list;
}
[@@deriving yojson_of]
(** aws_iot_topic_rule *)

let aws_iot_topic_rule ?description ?id ?tags ?tags_all ~enabled
    ~name ~sql ~sql_version ~cloudwatch_alarm ~cloudwatch_logs
    ~cloudwatch_metric ~dynamodb ~dynamodbv2 ~elasticsearch
    ~error_action ~firehose ~http ~iot_analytics ~iot_events ~kafka
    ~kinesis ~lambda ~republish ~s3 ~sns ~sqs ~step_functions
    ~timestream __resource_id =
  let __resource_type = "aws_iot_topic_rule" in
  let __resource =
    {
      description;
      enabled;
      id;
      name;
      sql;
      sql_version;
      tags;
      tags_all;
      cloudwatch_alarm;
      cloudwatch_logs;
      cloudwatch_metric;
      dynamodb;
      dynamodbv2;
      elasticsearch;
      error_action;
      firehose;
      http;
      iot_analytics;
      iot_events;
      kafka;
      kinesis;
      lambda;
      republish;
      s3;
      sns;
      sqs;
      step_functions;
      timestream;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_topic_rule __resource);
  ()

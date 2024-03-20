(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudwatch_alarm = {
  alarm_name : string prop;  (** alarm_name *)
  role_arn : string prop;  (** role_arn *)
  state_reason : string prop;  (** state_reason *)
  state_value : string prop;  (** state_value *)
}
[@@deriving yojson_of]
(** cloudwatch_alarm *)

type cloudwatch_logs = {
  log_group_name : string prop;  (** log_group_name *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** cloudwatch_logs *)

type cloudwatch_metric = {
  metric_name : string prop;  (** metric_name *)
  metric_namespace : string prop;  (** metric_namespace *)
  metric_timestamp : string prop option; [@option]
      (** metric_timestamp *)
  metric_unit : string prop;  (** metric_unit *)
  metric_value : string prop;  (** metric_value *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** cloudwatch_metric *)

type dynamodb = {
  hash_key_field : string prop;  (** hash_key_field *)
  hash_key_type : string prop option; [@option]  (** hash_key_type *)
  hash_key_value : string prop;  (** hash_key_value *)
  operation : string prop option; [@option]  (** operation *)
  payload_field : string prop option; [@option]  (** payload_field *)
  range_key_field : string prop option; [@option]
      (** range_key_field *)
  range_key_type : string prop option; [@option]
      (** range_key_type *)
  range_key_value : string prop option; [@option]
      (** range_key_value *)
  role_arn : string prop;  (** role_arn *)
  table_name : string prop;  (** table_name *)
}
[@@deriving yojson_of]
(** dynamodb *)

type dynamodbv2__put_item = {
  table_name : string prop;  (** table_name *)
}
[@@deriving yojson_of]
(** dynamodbv2__put_item *)

type dynamodbv2 = {
  role_arn : string prop;  (** role_arn *)
  put_item : dynamodbv2__put_item list;
}
[@@deriving yojson_of]
(** dynamodbv2 *)

type elasticsearch = {
  endpoint : string prop;  (** endpoint *)
  id : string prop;  (** id *)
  index : string prop;  (** index *)
  role_arn : string prop;  (** role_arn *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** elasticsearch *)

type error_action__cloudwatch_alarm = {
  alarm_name : string prop;  (** alarm_name *)
  role_arn : string prop;  (** role_arn *)
  state_reason : string prop;  (** state_reason *)
  state_value : string prop;  (** state_value *)
}
[@@deriving yojson_of]
(** error_action__cloudwatch_alarm *)

type error_action__cloudwatch_logs = {
  log_group_name : string prop;  (** log_group_name *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** error_action__cloudwatch_logs *)

type error_action__cloudwatch_metric = {
  metric_name : string prop;  (** metric_name *)
  metric_namespace : string prop;  (** metric_namespace *)
  metric_timestamp : string prop option; [@option]
      (** metric_timestamp *)
  metric_unit : string prop;  (** metric_unit *)
  metric_value : string prop;  (** metric_value *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** error_action__cloudwatch_metric *)

type error_action__dynamodb = {
  hash_key_field : string prop;  (** hash_key_field *)
  hash_key_type : string prop option; [@option]  (** hash_key_type *)
  hash_key_value : string prop;  (** hash_key_value *)
  operation : string prop option; [@option]  (** operation *)
  payload_field : string prop option; [@option]  (** payload_field *)
  range_key_field : string prop option; [@option]
      (** range_key_field *)
  range_key_type : string prop option; [@option]
      (** range_key_type *)
  range_key_value : string prop option; [@option]
      (** range_key_value *)
  role_arn : string prop;  (** role_arn *)
  table_name : string prop;  (** table_name *)
}
[@@deriving yojson_of]
(** error_action__dynamodb *)

type error_action__dynamodbv2__put_item = {
  table_name : string prop;  (** table_name *)
}
[@@deriving yojson_of]
(** error_action__dynamodbv2__put_item *)

type error_action__dynamodbv2 = {
  role_arn : string prop;  (** role_arn *)
  put_item : error_action__dynamodbv2__put_item list;
}
[@@deriving yojson_of]
(** error_action__dynamodbv2 *)

type error_action__elasticsearch = {
  endpoint : string prop;  (** endpoint *)
  id : string prop;  (** id *)
  index : string prop;  (** index *)
  role_arn : string prop;  (** role_arn *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** error_action__elasticsearch *)

type error_action__firehose = {
  batch_mode : bool prop option; [@option]  (** batch_mode *)
  delivery_stream_name : string prop;  (** delivery_stream_name *)
  role_arn : string prop;  (** role_arn *)
  separator : string prop option; [@option]  (** separator *)
}
[@@deriving yojson_of]
(** error_action__firehose *)

type error_action__http__http_header = {
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** error_action__http__http_header *)

type error_action__http = {
  confirmation_url : string prop option; [@option]
      (** confirmation_url *)
  url : string prop;  (** url *)
  http_header : error_action__http__http_header list;
}
[@@deriving yojson_of]
(** error_action__http *)

type error_action__iot_analytics = {
  batch_mode : bool prop option; [@option]  (** batch_mode *)
  channel_name : string prop;  (** channel_name *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** error_action__iot_analytics *)

type error_action__iot_events = {
  batch_mode : bool prop option; [@option]  (** batch_mode *)
  input_name : string prop;  (** input_name *)
  message_id : string prop option; [@option]  (** message_id *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** error_action__iot_events *)

type error_action__kafka__header = {
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** error_action__kafka__header *)

type error_action__kafka = {
  client_properties : (string * string prop) list;
      (** client_properties *)
  destination_arn : string prop;  (** destination_arn *)
  key : string prop option; [@option]  (** key *)
  partition : string prop option; [@option]  (** partition *)
  topic : string prop;  (** topic *)
  header : error_action__kafka__header list;
}
[@@deriving yojson_of]
(** error_action__kafka *)

type error_action__kinesis = {
  partition_key : string prop option; [@option]  (** partition_key *)
  role_arn : string prop;  (** role_arn *)
  stream_name : string prop;  (** stream_name *)
}
[@@deriving yojson_of]
(** error_action__kinesis *)

type error_action__lambda = {
  function_arn : string prop;  (** function_arn *)
}
[@@deriving yojson_of]
(** error_action__lambda *)

type error_action__republish = {
  qos : float prop option; [@option]  (** qos *)
  role_arn : string prop;  (** role_arn *)
  topic : string prop;  (** topic *)
}
[@@deriving yojson_of]
(** error_action__republish *)

type error_action__s3 = {
  bucket_name : string prop;  (** bucket_name *)
  canned_acl : string prop option; [@option]  (** canned_acl *)
  key : string prop;  (** key *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** error_action__s3 *)

type error_action__sns = {
  message_format : string prop option; [@option]
      (** message_format *)
  role_arn : string prop;  (** role_arn *)
  target_arn : string prop;  (** target_arn *)
}
[@@deriving yojson_of]
(** error_action__sns *)

type error_action__sqs = {
  queue_url : string prop;  (** queue_url *)
  role_arn : string prop;  (** role_arn *)
  use_base64 : bool prop;  (** use_base64 *)
}
[@@deriving yojson_of]
(** error_action__sqs *)

type error_action__step_functions = {
  execution_name_prefix : string prop option; [@option]
      (** execution_name_prefix *)
  role_arn : string prop;  (** role_arn *)
  state_machine_name : string prop;  (** state_machine_name *)
}
[@@deriving yojson_of]
(** error_action__step_functions *)

type error_action__timestream__dimension = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** error_action__timestream__dimension *)

type error_action__timestream__timestamp = {
  unit : string prop;  (** unit *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** error_action__timestream__timestamp *)

type error_action__timestream = {
  database_name : string prop;  (** database_name *)
  role_arn : string prop;  (** role_arn *)
  table_name : string prop;  (** table_name *)
  dimension : error_action__timestream__dimension list;
  timestamp : error_action__timestream__timestamp list;
}
[@@deriving yojson_of]
(** error_action__timestream *)

type error_action = {
  cloudwatch_alarm : error_action__cloudwatch_alarm list;
  cloudwatch_logs : error_action__cloudwatch_logs list;
  cloudwatch_metric : error_action__cloudwatch_metric list;
  dynamodb : error_action__dynamodb list;
  dynamodbv2 : error_action__dynamodbv2 list;
  elasticsearch : error_action__elasticsearch list;
  firehose : error_action__firehose list;
  http : error_action__http list;
  iot_analytics : error_action__iot_analytics list;
  iot_events : error_action__iot_events list;
  kafka : error_action__kafka list;
  kinesis : error_action__kinesis list;
  lambda : error_action__lambda list;
  republish : error_action__republish list;
  s3 : error_action__s3 list;
  sns : error_action__sns list;
  sqs : error_action__sqs list;
  step_functions : error_action__step_functions list;
  timestream : error_action__timestream list;
}
[@@deriving yojson_of]
(** error_action *)

type firehose = {
  batch_mode : bool prop option; [@option]  (** batch_mode *)
  delivery_stream_name : string prop;  (** delivery_stream_name *)
  role_arn : string prop;  (** role_arn *)
  separator : string prop option; [@option]  (** separator *)
}
[@@deriving yojson_of]
(** firehose *)

type http__http_header = {
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** http__http_header *)

type http = {
  confirmation_url : string prop option; [@option]
      (** confirmation_url *)
  url : string prop;  (** url *)
  http_header : http__http_header list;
}
[@@deriving yojson_of]
(** http *)

type iot_analytics = {
  batch_mode : bool prop option; [@option]  (** batch_mode *)
  channel_name : string prop;  (** channel_name *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** iot_analytics *)

type iot_events = {
  batch_mode : bool prop option; [@option]  (** batch_mode *)
  input_name : string prop;  (** input_name *)
  message_id : string prop option; [@option]  (** message_id *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** iot_events *)

type kafka__header = {
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** kafka__header *)

type kafka = {
  client_properties : (string * string prop) list;
      (** client_properties *)
  destination_arn : string prop;  (** destination_arn *)
  key : string prop option; [@option]  (** key *)
  partition : string prop option; [@option]  (** partition *)
  topic : string prop;  (** topic *)
  header : kafka__header list;
}
[@@deriving yojson_of]
(** kafka *)

type kinesis = {
  partition_key : string prop option; [@option]  (** partition_key *)
  role_arn : string prop;  (** role_arn *)
  stream_name : string prop;  (** stream_name *)
}
[@@deriving yojson_of]
(** kinesis *)

type lambda = { function_arn : string prop  (** function_arn *) }
[@@deriving yojson_of]
(** lambda *)

type republish = {
  qos : float prop option; [@option]  (** qos *)
  role_arn : string prop;  (** role_arn *)
  topic : string prop;  (** topic *)
}
[@@deriving yojson_of]
(** republish *)

type s3 = {
  bucket_name : string prop;  (** bucket_name *)
  canned_acl : string prop option; [@option]  (** canned_acl *)
  key : string prop;  (** key *)
  role_arn : string prop;  (** role_arn *)
}
[@@deriving yojson_of]
(** s3 *)

type sns = {
  message_format : string prop option; [@option]
      (** message_format *)
  role_arn : string prop;  (** role_arn *)
  target_arn : string prop;  (** target_arn *)
}
[@@deriving yojson_of]
(** sns *)

type sqs = {
  queue_url : string prop;  (** queue_url *)
  role_arn : string prop;  (** role_arn *)
  use_base64 : bool prop;  (** use_base64 *)
}
[@@deriving yojson_of]
(** sqs *)

type step_functions = {
  execution_name_prefix : string prop option; [@option]
      (** execution_name_prefix *)
  role_arn : string prop;  (** role_arn *)
  state_machine_name : string prop;  (** state_machine_name *)
}
[@@deriving yojson_of]
(** step_functions *)

type timestream__dimension = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** timestream__dimension *)

type timestream__timestamp = {
  unit : string prop;  (** unit *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** timestream__timestamp *)

type timestream = {
  database_name : string prop;  (** database_name *)
  role_arn : string prop;  (** role_arn *)
  table_name : string prop;  (** table_name *)
  dimension : timestream__dimension list;
  timestamp : timestream__timestamp list;
}
[@@deriving yojson_of]
(** timestream *)

type aws_iot_topic_rule = {
  description : string prop option; [@option]  (** description *)
  enabled : bool prop;  (** enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  sql : string prop;  (** sql *)
  sql_version : string prop;  (** sql_version *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  cloudwatch_alarm : cloudwatch_alarm list;
  cloudwatch_logs : cloudwatch_logs list;
  cloudwatch_metric : cloudwatch_metric list;
  dynamodb : dynamodb list;
  dynamodbv2 : dynamodbv2 list;
  elasticsearch : elasticsearch list;
  error_action : error_action list;
  firehose : firehose list;
  http : http list;
  iot_analytics : iot_analytics list;
  iot_events : iot_events list;
  kafka : kafka list;
  kinesis : kinesis list;
  lambda : lambda list;
  republish : republish list;
  s3 : s3 list;
  sns : sns list;
  sqs : sqs list;
  step_functions : step_functions list;
  timestream : timestream list;
}
[@@deriving yojson_of]
(** aws_iot_topic_rule *)

let cloudwatch_alarm ~alarm_name ~role_arn ~state_reason ~state_value
    () : cloudwatch_alarm =
  { alarm_name; role_arn; state_reason; state_value }

let cloudwatch_logs ~log_group_name ~role_arn () : cloudwatch_logs =
  { log_group_name; role_arn }

let cloudwatch_metric ?metric_timestamp ~metric_name
    ~metric_namespace ~metric_unit ~metric_value ~role_arn () :
    cloudwatch_metric =
  {
    metric_name;
    metric_namespace;
    metric_timestamp;
    metric_unit;
    metric_value;
    role_arn;
  }

let dynamodb ?hash_key_type ?operation ?payload_field
    ?range_key_field ?range_key_type ?range_key_value ~hash_key_field
    ~hash_key_value ~role_arn ~table_name () : dynamodb =
  {
    hash_key_field;
    hash_key_type;
    hash_key_value;
    operation;
    payload_field;
    range_key_field;
    range_key_type;
    range_key_value;
    role_arn;
    table_name;
  }

let dynamodbv2__put_item ~table_name () : dynamodbv2__put_item =
  { table_name }

let dynamodbv2 ~role_arn ~put_item () : dynamodbv2 =
  { role_arn; put_item }

let elasticsearch ~endpoint ~id ~index ~role_arn ~type_ () :
    elasticsearch =
  { endpoint; id; index; role_arn; type_ }

let error_action__cloudwatch_alarm ~alarm_name ~role_arn
    ~state_reason ~state_value () : error_action__cloudwatch_alarm =
  { alarm_name; role_arn; state_reason; state_value }

let error_action__cloudwatch_logs ~log_group_name ~role_arn () :
    error_action__cloudwatch_logs =
  { log_group_name; role_arn }

let error_action__cloudwatch_metric ?metric_timestamp ~metric_name
    ~metric_namespace ~metric_unit ~metric_value ~role_arn () :
    error_action__cloudwatch_metric =
  {
    metric_name;
    metric_namespace;
    metric_timestamp;
    metric_unit;
    metric_value;
    role_arn;
  }

let error_action__dynamodb ?hash_key_type ?operation ?payload_field
    ?range_key_field ?range_key_type ?range_key_value ~hash_key_field
    ~hash_key_value ~role_arn ~table_name () : error_action__dynamodb
    =
  {
    hash_key_field;
    hash_key_type;
    hash_key_value;
    operation;
    payload_field;
    range_key_field;
    range_key_type;
    range_key_value;
    role_arn;
    table_name;
  }

let error_action__dynamodbv2__put_item ~table_name () :
    error_action__dynamodbv2__put_item =
  { table_name }

let error_action__dynamodbv2 ~role_arn ~put_item () :
    error_action__dynamodbv2 =
  { role_arn; put_item }

let error_action__elasticsearch ~endpoint ~id ~index ~role_arn ~type_
    () : error_action__elasticsearch =
  { endpoint; id; index; role_arn; type_ }

let error_action__firehose ?batch_mode ?separator
    ~delivery_stream_name ~role_arn () : error_action__firehose =
  { batch_mode; delivery_stream_name; role_arn; separator }

let error_action__http__http_header ~key ~value () :
    error_action__http__http_header =
  { key; value }

let error_action__http ?confirmation_url ~url ~http_header () :
    error_action__http =
  { confirmation_url; url; http_header }

let error_action__iot_analytics ?batch_mode ~channel_name ~role_arn
    () : error_action__iot_analytics =
  { batch_mode; channel_name; role_arn }

let error_action__iot_events ?batch_mode ?message_id ~input_name
    ~role_arn () : error_action__iot_events =
  { batch_mode; input_name; message_id; role_arn }

let error_action__kafka__header ~key ~value () :
    error_action__kafka__header =
  { key; value }

let error_action__kafka ?key ?partition ~client_properties
    ~destination_arn ~topic ~header () : error_action__kafka =
  {
    client_properties;
    destination_arn;
    key;
    partition;
    topic;
    header;
  }

let error_action__kinesis ?partition_key ~role_arn ~stream_name () :
    error_action__kinesis =
  { partition_key; role_arn; stream_name }

let error_action__lambda ~function_arn () : error_action__lambda =
  { function_arn }

let error_action__republish ?qos ~role_arn ~topic () :
    error_action__republish =
  { qos; role_arn; topic }

let error_action__s3 ?canned_acl ~bucket_name ~key ~role_arn () :
    error_action__s3 =
  { bucket_name; canned_acl; key; role_arn }

let error_action__sns ?message_format ~role_arn ~target_arn () :
    error_action__sns =
  { message_format; role_arn; target_arn }

let error_action__sqs ~queue_url ~role_arn ~use_base64 () :
    error_action__sqs =
  { queue_url; role_arn; use_base64 }

let error_action__step_functions ?execution_name_prefix ~role_arn
    ~state_machine_name () : error_action__step_functions =
  { execution_name_prefix; role_arn; state_machine_name }

let error_action__timestream__dimension ~name ~value () :
    error_action__timestream__dimension =
  { name; value }

let error_action__timestream__timestamp ~unit ~value () :
    error_action__timestream__timestamp =
  { unit; value }

let error_action__timestream ~database_name ~role_arn ~table_name
    ~dimension ~timestamp () : error_action__timestream =
  { database_name; role_arn; table_name; dimension; timestamp }

let error_action ~cloudwatch_alarm ~cloudwatch_logs
    ~cloudwatch_metric ~dynamodb ~dynamodbv2 ~elasticsearch ~firehose
    ~http ~iot_analytics ~iot_events ~kafka ~kinesis ~lambda
    ~republish ~s3 ~sns ~sqs ~step_functions ~timestream () :
    error_action =
  {
    cloudwatch_alarm;
    cloudwatch_logs;
    cloudwatch_metric;
    dynamodb;
    dynamodbv2;
    elasticsearch;
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

let firehose ?batch_mode ?separator ~delivery_stream_name ~role_arn
    () : firehose =
  { batch_mode; delivery_stream_name; role_arn; separator }

let http__http_header ~key ~value () : http__http_header =
  { key; value }

let http ?confirmation_url ~url ~http_header () : http =
  { confirmation_url; url; http_header }

let iot_analytics ?batch_mode ~channel_name ~role_arn () :
    iot_analytics =
  { batch_mode; channel_name; role_arn }

let iot_events ?batch_mode ?message_id ~input_name ~role_arn () :
    iot_events =
  { batch_mode; input_name; message_id; role_arn }

let kafka__header ~key ~value () : kafka__header = { key; value }

let kafka ?key ?partition ~client_properties ~destination_arn ~topic
    ~header () : kafka =
  {
    client_properties;
    destination_arn;
    key;
    partition;
    topic;
    header;
  }

let kinesis ?partition_key ~role_arn ~stream_name () : kinesis =
  { partition_key; role_arn; stream_name }

let lambda ~function_arn () : lambda = { function_arn }

let republish ?qos ~role_arn ~topic () : republish =
  { qos; role_arn; topic }

let s3 ?canned_acl ~bucket_name ~key ~role_arn () : s3 =
  { bucket_name; canned_acl; key; role_arn }

let sns ?message_format ~role_arn ~target_arn () : sns =
  { message_format; role_arn; target_arn }

let sqs ~queue_url ~role_arn ~use_base64 () : sqs =
  { queue_url; role_arn; use_base64 }

let step_functions ?execution_name_prefix ~role_arn
    ~state_machine_name () : step_functions =
  { execution_name_prefix; role_arn; state_machine_name }

let timestream__dimension ~name ~value () : timestream__dimension =
  { name; value }

let timestream__timestamp ~unit ~value () : timestream__timestamp =
  { unit; value }

let timestream ~database_name ~role_arn ~table_name ~dimension
    ~timestamp () : timestream =
  { database_name; role_arn; table_name; dimension; timestamp }

let aws_iot_topic_rule ?description ?id ?tags ?tags_all ~enabled
    ~name ~sql ~sql_version ~cloudwatch_alarm ~cloudwatch_logs
    ~cloudwatch_metric ~dynamodb ~dynamodbv2 ~elasticsearch
    ~error_action ~firehose ~http ~iot_analytics ~iot_events ~kafka
    ~kinesis ~lambda ~republish ~s3 ~sns ~sqs ~step_functions
    ~timestream () : aws_iot_topic_rule =
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

type t = {
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

let make ?description ?id ?tags ?tags_all ~enabled ~name ~sql
    ~sql_version ~cloudwatch_alarm ~cloudwatch_logs
    ~cloudwatch_metric ~dynamodb ~dynamodbv2 ~elasticsearch
    ~error_action ~firehose ~http ~iot_analytics ~iot_events ~kafka
    ~kinesis ~lambda ~republish ~s3 ~sns ~sqs ~step_functions
    ~timestream __id =
  let __type = "aws_iot_topic_rule" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       sql = Prop.computed __type __id "sql";
       sql_version = Prop.computed __type __id "sql_version";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iot_topic_rule
        (aws_iot_topic_rule ?description ?id ?tags ?tags_all ~enabled
           ~name ~sql ~sql_version ~cloudwatch_alarm ~cloudwatch_logs
           ~cloudwatch_metric ~dynamodb ~dynamodbv2 ~elasticsearch
           ~error_action ~firehose ~http ~iot_analytics ~iot_events
           ~kafka ~kinesis ~lambda ~republish ~s3 ~sns ~sqs
           ~step_functions ~timestream ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~enabled
    ~name ~sql ~sql_version ~cloudwatch_alarm ~cloudwatch_logs
    ~cloudwatch_metric ~dynamodb ~dynamodbv2 ~elasticsearch
    ~error_action ~firehose ~http ~iot_analytics ~iot_events ~kafka
    ~kinesis ~lambda ~republish ~s3 ~sns ~sqs ~step_functions
    ~timestream __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~enabled ~name ~sql
      ~sql_version ~cloudwatch_alarm ~cloudwatch_logs
      ~cloudwatch_metric ~dynamodb ~dynamodbv2 ~elasticsearch
      ~error_action ~firehose ~http ~iot_analytics ~iot_events ~kafka
      ~kinesis ~lambda ~republish ~s3 ~sns ~sqs ~step_functions
      ~timestream __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

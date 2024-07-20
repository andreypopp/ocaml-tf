(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudwatch_alarm = {
  alarm_name : string prop;
  role_arn : string prop;
  state_reason : string prop;
  state_value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudwatch_alarm) -> ()

let yojson_of_cloudwatch_alarm =
  (function
   | {
       alarm_name = v_alarm_name;
       role_arn = v_role_arn;
       state_reason = v_state_reason;
       state_value = v_state_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state_value in
         ("state_value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state_reason in
         ("state_reason", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_alarm_name in
         ("alarm_name", arg) :: bnds
       in
       `Assoc bnds
    : cloudwatch_alarm -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudwatch_alarm

[@@@deriving.end]

type cloudwatch_logs = {
  batch_mode : bool prop option; [@option]
  log_group_name : string prop;
  role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudwatch_logs) -> ()

let yojson_of_cloudwatch_logs =
  (function
   | {
       batch_mode = v_batch_mode;
       log_group_name = v_log_group_name;
       role_arn = v_role_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_log_group_name
         in
         ("log_group_name", arg) :: bnds
       in
       let bnds =
         match v_batch_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "batch_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudwatch_logs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudwatch_logs

[@@@deriving.end]

type cloudwatch_metric = {
  metric_name : string prop;
  metric_namespace : string prop;
  metric_timestamp : string prop option; [@option]
  metric_unit : string prop;
  metric_value : string prop;
  role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudwatch_metric) -> ()

let yojson_of_cloudwatch_metric =
  (function
   | {
       metric_name = v_metric_name;
       metric_namespace = v_metric_namespace;
       metric_timestamp = v_metric_timestamp;
       metric_unit = v_metric_unit;
       metric_value = v_metric_value;
       role_arn = v_role_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_metric_value in
         ("metric_value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_metric_unit in
         ("metric_unit", arg) :: bnds
       in
       let bnds =
         match v_metric_timestamp with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metric_timestamp", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_metric_namespace
         in
         ("metric_namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_metric_name in
         ("metric_name", arg) :: bnds
       in
       `Assoc bnds
    : cloudwatch_metric -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudwatch_metric

[@@@deriving.end]

type dynamodb = {
  hash_key_field : string prop;
  hash_key_type : string prop option; [@option]
  hash_key_value : string prop;
  operation : string prop option; [@option]
  payload_field : string prop option; [@option]
  range_key_field : string prop option; [@option]
  range_key_type : string prop option; [@option]
  range_key_value : string prop option; [@option]
  role_arn : string prop;
  table_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dynamodb) -> ()

let yojson_of_dynamodb =
  (function
   | {
       hash_key_field = v_hash_key_field;
       hash_key_type = v_hash_key_type;
       hash_key_value = v_hash_key_value;
       operation = v_operation;
       payload_field = v_payload_field;
       range_key_field = v_range_key_field;
       range_key_type = v_range_key_type;
       range_key_value = v_range_key_value;
       role_arn = v_role_arn;
       table_name = v_table_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table_name in
         ("table_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_range_key_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "range_key_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_range_key_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "range_key_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_range_key_field with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "range_key_field", arg in
             bnd :: bnds
       in
       let bnds =
         match v_payload_field with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "payload_field", arg in
             bnd :: bnds
       in
       let bnds =
         match v_operation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operation", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_hash_key_value
         in
         ("hash_key_value", arg) :: bnds
       in
       let bnds =
         match v_hash_key_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hash_key_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_hash_key_field
         in
         ("hash_key_field", arg) :: bnds
       in
       `Assoc bnds
    : dynamodb -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dynamodb

[@@@deriving.end]

type dynamodbv2__put_item = { table_name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : dynamodbv2__put_item) -> ()

let yojson_of_dynamodbv2__put_item =
  (function
   | { table_name = v_table_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table_name in
         ("table_name", arg) :: bnds
       in
       `Assoc bnds
    : dynamodbv2__put_item -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dynamodbv2__put_item

[@@@deriving.end]

type dynamodbv2 = {
  role_arn : string prop;
  put_item : dynamodbv2__put_item list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dynamodbv2) -> ()

let yojson_of_dynamodbv2 =
  (function
   | { role_arn = v_role_arn; put_item = v_put_item } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_put_item then bnds
         else
           let arg =
             (yojson_of_list yojson_of_dynamodbv2__put_item)
               v_put_item
           in
           let bnd = "put_item", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       `Assoc bnds
    : dynamodbv2 -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dynamodbv2

[@@@deriving.end]

type elasticsearch = {
  endpoint : string prop;
  id : string prop;
  index : string prop;
  role_arn : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : elasticsearch) -> ()

let yojson_of_elasticsearch =
  (function
   | {
       endpoint = v_endpoint;
       id = v_id;
       index = v_index;
       role_arn = v_role_arn;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_index in
         ("index", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint in
         ("endpoint", arg) :: bnds
       in
       `Assoc bnds
    : elasticsearch -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_elasticsearch

[@@@deriving.end]

type error_action__cloudwatch_alarm = {
  alarm_name : string prop;
  role_arn : string prop;
  state_reason : string prop;
  state_value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : error_action__cloudwatch_alarm) -> ()

let yojson_of_error_action__cloudwatch_alarm =
  (function
   | {
       alarm_name = v_alarm_name;
       role_arn = v_role_arn;
       state_reason = v_state_reason;
       state_value = v_state_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state_value in
         ("state_value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state_reason in
         ("state_reason", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_alarm_name in
         ("alarm_name", arg) :: bnds
       in
       `Assoc bnds
    : error_action__cloudwatch_alarm ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_error_action__cloudwatch_alarm

[@@@deriving.end]

type error_action__cloudwatch_logs = {
  batch_mode : bool prop option; [@option]
  log_group_name : string prop;
  role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : error_action__cloudwatch_logs) -> ()

let yojson_of_error_action__cloudwatch_logs =
  (function
   | {
       batch_mode = v_batch_mode;
       log_group_name = v_log_group_name;
       role_arn = v_role_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_log_group_name
         in
         ("log_group_name", arg) :: bnds
       in
       let bnds =
         match v_batch_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "batch_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : error_action__cloudwatch_logs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_error_action__cloudwatch_logs

[@@@deriving.end]

type error_action__cloudwatch_metric = {
  metric_name : string prop;
  metric_namespace : string prop;
  metric_timestamp : string prop option; [@option]
  metric_unit : string prop;
  metric_value : string prop;
  role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : error_action__cloudwatch_metric) -> ()

let yojson_of_error_action__cloudwatch_metric =
  (function
   | {
       metric_name = v_metric_name;
       metric_namespace = v_metric_namespace;
       metric_timestamp = v_metric_timestamp;
       metric_unit = v_metric_unit;
       metric_value = v_metric_value;
       role_arn = v_role_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_metric_value in
         ("metric_value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_metric_unit in
         ("metric_unit", arg) :: bnds
       in
       let bnds =
         match v_metric_timestamp with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metric_timestamp", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_metric_namespace
         in
         ("metric_namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_metric_name in
         ("metric_name", arg) :: bnds
       in
       `Assoc bnds
    : error_action__cloudwatch_metric ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_error_action__cloudwatch_metric

[@@@deriving.end]

type error_action__dynamodb = {
  hash_key_field : string prop;
  hash_key_type : string prop option; [@option]
  hash_key_value : string prop;
  operation : string prop option; [@option]
  payload_field : string prop option; [@option]
  range_key_field : string prop option; [@option]
  range_key_type : string prop option; [@option]
  range_key_value : string prop option; [@option]
  role_arn : string prop;
  table_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : error_action__dynamodb) -> ()

let yojson_of_error_action__dynamodb =
  (function
   | {
       hash_key_field = v_hash_key_field;
       hash_key_type = v_hash_key_type;
       hash_key_value = v_hash_key_value;
       operation = v_operation;
       payload_field = v_payload_field;
       range_key_field = v_range_key_field;
       range_key_type = v_range_key_type;
       range_key_value = v_range_key_value;
       role_arn = v_role_arn;
       table_name = v_table_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table_name in
         ("table_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_range_key_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "range_key_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_range_key_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "range_key_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_range_key_field with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "range_key_field", arg in
             bnd :: bnds
       in
       let bnds =
         match v_payload_field with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "payload_field", arg in
             bnd :: bnds
       in
       let bnds =
         match v_operation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operation", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_hash_key_value
         in
         ("hash_key_value", arg) :: bnds
       in
       let bnds =
         match v_hash_key_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hash_key_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_hash_key_field
         in
         ("hash_key_field", arg) :: bnds
       in
       `Assoc bnds
    : error_action__dynamodb -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_error_action__dynamodb

[@@@deriving.end]

type error_action__dynamodbv2__put_item = {
  table_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : error_action__dynamodbv2__put_item) -> ()

let yojson_of_error_action__dynamodbv2__put_item =
  (function
   | { table_name = v_table_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table_name in
         ("table_name", arg) :: bnds
       in
       `Assoc bnds
    : error_action__dynamodbv2__put_item ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_error_action__dynamodbv2__put_item

[@@@deriving.end]

type error_action__dynamodbv2 = {
  role_arn : string prop;
  put_item : error_action__dynamodbv2__put_item list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : error_action__dynamodbv2) -> ()

let yojson_of_error_action__dynamodbv2 =
  (function
   | { role_arn = v_role_arn; put_item = v_put_item } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_put_item then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_error_action__dynamodbv2__put_item)
               v_put_item
           in
           let bnd = "put_item", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       `Assoc bnds
    : error_action__dynamodbv2 -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_error_action__dynamodbv2

[@@@deriving.end]

type error_action__elasticsearch = {
  endpoint : string prop;
  id : string prop;
  index : string prop;
  role_arn : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : error_action__elasticsearch) -> ()

let yojson_of_error_action__elasticsearch =
  (function
   | {
       endpoint = v_endpoint;
       id = v_id;
       index = v_index;
       role_arn = v_role_arn;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_index in
         ("index", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint in
         ("endpoint", arg) :: bnds
       in
       `Assoc bnds
    : error_action__elasticsearch ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_error_action__elasticsearch

[@@@deriving.end]

type error_action__firehose = {
  batch_mode : bool prop option; [@option]
  delivery_stream_name : string prop;
  role_arn : string prop;
  separator : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : error_action__firehose) -> ()

let yojson_of_error_action__firehose =
  (function
   | {
       batch_mode = v_batch_mode;
       delivery_stream_name = v_delivery_stream_name;
       role_arn = v_role_arn;
       separator = v_separator;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_separator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "separator", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_delivery_stream_name
         in
         ("delivery_stream_name", arg) :: bnds
       in
       let bnds =
         match v_batch_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "batch_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : error_action__firehose -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_error_action__firehose

[@@@deriving.end]

type error_action__http__http_header = {
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : error_action__http__http_header) -> ()

let yojson_of_error_action__http__http_header =
  (function
   | { key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : error_action__http__http_header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_error_action__http__http_header

[@@@deriving.end]

type error_action__http = {
  confirmation_url : string prop option; [@option]
  url : string prop;
  http_header : error_action__http__http_header list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : error_action__http) -> ()

let yojson_of_error_action__http =
  (function
   | {
       confirmation_url = v_confirmation_url;
       url = v_url;
       http_header = v_http_header;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_http_header then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_error_action__http__http_header)
               v_http_header
           in
           let bnd = "http_header", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         match v_confirmation_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "confirmation_url", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : error_action__http -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_error_action__http

[@@@deriving.end]

type error_action__iot_analytics = {
  batch_mode : bool prop option; [@option]
  channel_name : string prop;
  role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : error_action__iot_analytics) -> ()

let yojson_of_error_action__iot_analytics =
  (function
   | {
       batch_mode = v_batch_mode;
       channel_name = v_channel_name;
       role_arn = v_role_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_channel_name in
         ("channel_name", arg) :: bnds
       in
       let bnds =
         match v_batch_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "batch_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : error_action__iot_analytics ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_error_action__iot_analytics

[@@@deriving.end]

type error_action__iot_events = {
  batch_mode : bool prop option; [@option]
  input_name : string prop;
  message_id : string prop option; [@option]
  role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : error_action__iot_events) -> ()

let yojson_of_error_action__iot_events =
  (function
   | {
       batch_mode = v_batch_mode;
       input_name = v_input_name;
       message_id = v_message_id;
       role_arn = v_role_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_message_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "message_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_input_name in
         ("input_name", arg) :: bnds
       in
       let bnds =
         match v_batch_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "batch_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : error_action__iot_events -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_error_action__iot_events

[@@@deriving.end]

type error_action__kafka__header = {
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : error_action__kafka__header) -> ()

let yojson_of_error_action__kafka__header =
  (function
   | { key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : error_action__kafka__header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_error_action__kafka__header

[@@@deriving.end]

type error_action__kafka = {
  client_properties : (string * string prop) list;
  destination_arn : string prop;
  key : string prop option; [@option]
  partition : string prop option; [@option]
  topic : string prop;
  header : error_action__kafka__header list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : error_action__kafka) -> ()

let yojson_of_error_action__kafka =
  (function
   | {
       client_properties = v_client_properties;
       destination_arn = v_destination_arn;
       key = v_key;
       partition = v_partition;
       topic = v_topic;
       header = v_header;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_header then bnds
         else
           let arg =
             (yojson_of_list yojson_of_error_action__kafka__header)
               v_header
           in
           let bnd = "header", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topic in
         ("topic", arg) :: bnds
       in
       let bnds =
         match v_partition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "partition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_arn
         in
         ("destination_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_client_properties
         in
         ("client_properties", arg) :: bnds
       in
       `Assoc bnds
    : error_action__kafka -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_error_action__kafka

[@@@deriving.end]

type error_action__kinesis = {
  partition_key : string prop option; [@option]
  role_arn : string prop;
  stream_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : error_action__kinesis) -> ()

let yojson_of_error_action__kinesis =
  (function
   | {
       partition_key = v_partition_key;
       role_arn = v_role_arn;
       stream_name = v_stream_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stream_name in
         ("stream_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_partition_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "partition_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : error_action__kinesis -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_error_action__kinesis

[@@@deriving.end]

type error_action__lambda = { function_arn : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : error_action__lambda) -> ()

let yojson_of_error_action__lambda =
  (function
   | { function_arn = v_function_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_function_arn in
         ("function_arn", arg) :: bnds
       in
       `Assoc bnds
    : error_action__lambda -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_error_action__lambda

[@@@deriving.end]

type error_action__republish = {
  qos : float prop option; [@option]
  role_arn : string prop;
  topic : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : error_action__republish) -> ()

let yojson_of_error_action__republish =
  (function
   | { qos = v_qos; role_arn = v_role_arn; topic = v_topic } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topic in
         ("topic", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_qos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "qos", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : error_action__republish -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_error_action__republish

[@@@deriving.end]

type error_action__s3 = {
  bucket_name : string prop;
  canned_acl : string prop option; [@option]
  key : string prop;
  role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : error_action__s3) -> ()

let yojson_of_error_action__s3 =
  (function
   | {
       bucket_name = v_bucket_name;
       canned_acl = v_canned_acl;
       key = v_key;
       role_arn = v_role_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         match v_canned_acl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "canned_acl", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
       in
       `Assoc bnds
    : error_action__s3 -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_error_action__s3

[@@@deriving.end]

type error_action__sns = {
  message_format : string prop option; [@option]
  role_arn : string prop;
  target_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : error_action__sns) -> ()

let yojson_of_error_action__sns =
  (function
   | {
       message_format = v_message_format;
       role_arn = v_role_arn;
       target_arn = v_target_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target_arn in
         ("target_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_message_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "message_format", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : error_action__sns -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_error_action__sns

[@@@deriving.end]

type error_action__sqs = {
  queue_url : string prop;
  role_arn : string prop;
  use_base64 : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : error_action__sqs) -> ()

let yojson_of_error_action__sqs =
  (function
   | {
       queue_url = v_queue_url;
       role_arn = v_role_arn;
       use_base64 = v_use_base64;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_use_base64 in
         ("use_base64", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_queue_url in
         ("queue_url", arg) :: bnds
       in
       `Assoc bnds
    : error_action__sqs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_error_action__sqs

[@@@deriving.end]

type error_action__step_functions = {
  execution_name_prefix : string prop option; [@option]
  role_arn : string prop;
  state_machine_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : error_action__step_functions) -> ()

let yojson_of_error_action__step_functions =
  (function
   | {
       execution_name_prefix = v_execution_name_prefix;
       role_arn = v_role_arn;
       state_machine_name = v_state_machine_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_state_machine_name
         in
         ("state_machine_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_execution_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "execution_name_prefix", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : error_action__step_functions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_error_action__step_functions

[@@@deriving.end]

type error_action__timestream__dimension = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : error_action__timestream__dimension) -> ()

let yojson_of_error_action__timestream__dimension =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : error_action__timestream__dimension ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_error_action__timestream__dimension

[@@@deriving.end]

type error_action__timestream__timestamp = {
  unit : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : error_action__timestream__timestamp) -> ()

let yojson_of_error_action__timestream__timestamp =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       `Assoc bnds
    : error_action__timestream__timestamp ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_error_action__timestream__timestamp

[@@@deriving.end]

type error_action__timestream = {
  database_name : string prop;
  role_arn : string prop;
  table_name : string prop;
  dimension : error_action__timestream__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timestamp : error_action__timestream__timestamp list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : error_action__timestream) -> ()

let yojson_of_error_action__timestream =
  (function
   | {
       database_name = v_database_name;
       role_arn = v_role_arn;
       table_name = v_table_name;
       dimension = v_dimension;
       timestamp = v_timestamp;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_timestamp then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_error_action__timestream__timestamp)
               v_timestamp
           in
           let bnd = "timestamp", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dimension then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_error_action__timestream__dimension)
               v_dimension
           in
           let bnd = "dimension", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table_name in
         ("table_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       `Assoc bnds
    : error_action__timestream -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_error_action__timestream

[@@@deriving.end]

type error_action = {
  cloudwatch_alarm : error_action__cloudwatch_alarm list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cloudwatch_logs : error_action__cloudwatch_logs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cloudwatch_metric : error_action__cloudwatch_metric list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dynamodb : error_action__dynamodb list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dynamodbv2 : error_action__dynamodbv2 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  elasticsearch : error_action__elasticsearch list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  firehose : error_action__firehose list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  http : error_action__http list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  iot_analytics : error_action__iot_analytics list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  iot_events : error_action__iot_events list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  kafka : error_action__kafka list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  kinesis : error_action__kinesis list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  lambda : error_action__lambda list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  republish : error_action__republish list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  s3 : error_action__s3 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sns : error_action__sns list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sqs : error_action__sqs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  step_functions : error_action__step_functions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timestream : error_action__timestream list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : error_action) -> ()

let yojson_of_error_action =
  (function
   | {
       cloudwatch_alarm = v_cloudwatch_alarm;
       cloudwatch_logs = v_cloudwatch_logs;
       cloudwatch_metric = v_cloudwatch_metric;
       dynamodb = v_dynamodb;
       dynamodbv2 = v_dynamodbv2;
       elasticsearch = v_elasticsearch;
       firehose = v_firehose;
       http = v_http;
       iot_analytics = v_iot_analytics;
       iot_events = v_iot_events;
       kafka = v_kafka;
       kinesis = v_kinesis;
       lambda = v_lambda;
       republish = v_republish;
       s3 = v_s3;
       sns = v_sns;
       sqs = v_sqs;
       step_functions = v_step_functions;
       timestream = v_timestream;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_timestream then bnds
         else
           let arg =
             (yojson_of_list yojson_of_error_action__timestream)
               v_timestream
           in
           let bnd = "timestream", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_step_functions then bnds
         else
           let arg =
             (yojson_of_list yojson_of_error_action__step_functions)
               v_step_functions
           in
           let bnd = "step_functions", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_sqs then bnds
         else
           let arg =
             (yojson_of_list yojson_of_error_action__sqs) v_sqs
           in
           let bnd = "sqs", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_sns then bnds
         else
           let arg =
             (yojson_of_list yojson_of_error_action__sns) v_sns
           in
           let bnd = "sns", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_s3 then bnds
         else
           let arg =
             (yojson_of_list yojson_of_error_action__s3) v_s3
           in
           let bnd = "s3", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_republish then bnds
         else
           let arg =
             (yojson_of_list yojson_of_error_action__republish)
               v_republish
           in
           let bnd = "republish", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_lambda then bnds
         else
           let arg =
             (yojson_of_list yojson_of_error_action__lambda) v_lambda
           in
           let bnd = "lambda", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kinesis then bnds
         else
           let arg =
             (yojson_of_list yojson_of_error_action__kinesis)
               v_kinesis
           in
           let bnd = "kinesis", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kafka then bnds
         else
           let arg =
             (yojson_of_list yojson_of_error_action__kafka) v_kafka
           in
           let bnd = "kafka", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_iot_events then bnds
         else
           let arg =
             (yojson_of_list yojson_of_error_action__iot_events)
               v_iot_events
           in
           let bnd = "iot_events", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_iot_analytics then bnds
         else
           let arg =
             (yojson_of_list yojson_of_error_action__iot_analytics)
               v_iot_analytics
           in
           let bnd = "iot_analytics", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_http then bnds
         else
           let arg =
             (yojson_of_list yojson_of_error_action__http) v_http
           in
           let bnd = "http", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_firehose then bnds
         else
           let arg =
             (yojson_of_list yojson_of_error_action__firehose)
               v_firehose
           in
           let bnd = "firehose", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_elasticsearch then bnds
         else
           let arg =
             (yojson_of_list yojson_of_error_action__elasticsearch)
               v_elasticsearch
           in
           let bnd = "elasticsearch", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dynamodbv2 then bnds
         else
           let arg =
             (yojson_of_list yojson_of_error_action__dynamodbv2)
               v_dynamodbv2
           in
           let bnd = "dynamodbv2", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dynamodb then bnds
         else
           let arg =
             (yojson_of_list yojson_of_error_action__dynamodb)
               v_dynamodb
           in
           let bnd = "dynamodb", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cloudwatch_metric then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_error_action__cloudwatch_metric)
               v_cloudwatch_metric
           in
           let bnd = "cloudwatch_metric", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cloudwatch_logs then bnds
         else
           let arg =
             (yojson_of_list yojson_of_error_action__cloudwatch_logs)
               v_cloudwatch_logs
           in
           let bnd = "cloudwatch_logs", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cloudwatch_alarm then bnds
         else
           let arg =
             (yojson_of_list yojson_of_error_action__cloudwatch_alarm)
               v_cloudwatch_alarm
           in
           let bnd = "cloudwatch_alarm", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : error_action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_error_action

[@@@deriving.end]

type firehose = {
  batch_mode : bool prop option; [@option]
  delivery_stream_name : string prop;
  role_arn : string prop;
  separator : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : firehose) -> ()

let yojson_of_firehose =
  (function
   | {
       batch_mode = v_batch_mode;
       delivery_stream_name = v_delivery_stream_name;
       role_arn = v_role_arn;
       separator = v_separator;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_separator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "separator", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_delivery_stream_name
         in
         ("delivery_stream_name", arg) :: bnds
       in
       let bnds =
         match v_batch_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "batch_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : firehose -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_firehose

[@@@deriving.end]

type http__http_header = { key : string prop; value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : http__http_header) -> ()

let yojson_of_http__http_header =
  (function
   | { key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : http__http_header -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_http__http_header

[@@@deriving.end]

type http = {
  confirmation_url : string prop option; [@option]
  url : string prop;
  http_header : http__http_header list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : http) -> ()

let yojson_of_http =
  (function
   | {
       confirmation_url = v_confirmation_url;
       url = v_url;
       http_header = v_http_header;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_http_header then bnds
         else
           let arg =
             (yojson_of_list yojson_of_http__http_header)
               v_http_header
           in
           let bnd = "http_header", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         match v_confirmation_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "confirmation_url", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : http -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_http

[@@@deriving.end]

type iot_analytics = {
  batch_mode : bool prop option; [@option]
  channel_name : string prop;
  role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : iot_analytics) -> ()

let yojson_of_iot_analytics =
  (function
   | {
       batch_mode = v_batch_mode;
       channel_name = v_channel_name;
       role_arn = v_role_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_channel_name in
         ("channel_name", arg) :: bnds
       in
       let bnds =
         match v_batch_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "batch_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : iot_analytics -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_iot_analytics

[@@@deriving.end]

type iot_events = {
  batch_mode : bool prop option; [@option]
  input_name : string prop;
  message_id : string prop option; [@option]
  role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : iot_events) -> ()

let yojson_of_iot_events =
  (function
   | {
       batch_mode = v_batch_mode;
       input_name = v_input_name;
       message_id = v_message_id;
       role_arn = v_role_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_message_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "message_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_input_name in
         ("input_name", arg) :: bnds
       in
       let bnds =
         match v_batch_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "batch_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : iot_events -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_iot_events

[@@@deriving.end]

type kafka__header = { key : string prop; value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : kafka__header) -> ()

let yojson_of_kafka__header =
  (function
   | { key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : kafka__header -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kafka__header

[@@@deriving.end]

type kafka = {
  client_properties : (string * string prop) list;
  destination_arn : string prop;
  key : string prop option; [@option]
  partition : string prop option; [@option]
  topic : string prop;
  header : kafka__header list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kafka) -> ()

let yojson_of_kafka =
  (function
   | {
       client_properties = v_client_properties;
       destination_arn = v_destination_arn;
       key = v_key;
       partition = v_partition;
       topic = v_topic;
       header = v_header;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_header then bnds
         else
           let arg =
             (yojson_of_list yojson_of_kafka__header) v_header
           in
           let bnd = "header", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topic in
         ("topic", arg) :: bnds
       in
       let bnds =
         match v_partition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "partition", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_arn
         in
         ("destination_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_client_properties
         in
         ("client_properties", arg) :: bnds
       in
       `Assoc bnds
    : kafka -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kafka

[@@@deriving.end]

type kinesis = {
  partition_key : string prop option; [@option]
  role_arn : string prop;
  stream_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kinesis) -> ()

let yojson_of_kinesis =
  (function
   | {
       partition_key = v_partition_key;
       role_arn = v_role_arn;
       stream_name = v_stream_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stream_name in
         ("stream_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_partition_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "partition_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : kinesis -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kinesis

[@@@deriving.end]

type lambda = { function_arn : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : lambda) -> ()

let yojson_of_lambda =
  (function
   | { function_arn = v_function_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_function_arn in
         ("function_arn", arg) :: bnds
       in
       `Assoc bnds
    : lambda -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lambda

[@@@deriving.end]

type republish = {
  qos : float prop option; [@option]
  role_arn : string prop;
  topic : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : republish) -> ()

let yojson_of_republish =
  (function
   | { qos = v_qos; role_arn = v_role_arn; topic = v_topic } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topic in
         ("topic", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_qos with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "qos", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : republish -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_republish

[@@@deriving.end]

type s3 = {
  bucket_name : string prop;
  canned_acl : string prop option; [@option]
  key : string prop;
  role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : s3) -> ()

let yojson_of_s3 =
  (function
   | {
       bucket_name = v_bucket_name;
       canned_acl = v_canned_acl;
       key = v_key;
       role_arn = v_role_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         match v_canned_acl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "canned_acl", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
       in
       `Assoc bnds
    : s3 -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_s3

[@@@deriving.end]

type sns = {
  message_format : string prop option; [@option]
  role_arn : string prop;
  target_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sns) -> ()

let yojson_of_sns =
  (function
   | {
       message_format = v_message_format;
       role_arn = v_role_arn;
       target_arn = v_target_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target_arn in
         ("target_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_message_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "message_format", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : sns -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sns

[@@@deriving.end]

type sqs = {
  queue_url : string prop;
  role_arn : string prop;
  use_base64 : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sqs) -> ()

let yojson_of_sqs =
  (function
   | {
       queue_url = v_queue_url;
       role_arn = v_role_arn;
       use_base64 = v_use_base64;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_use_base64 in
         ("use_base64", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_queue_url in
         ("queue_url", arg) :: bnds
       in
       `Assoc bnds
    : sqs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sqs

[@@@deriving.end]

type step_functions = {
  execution_name_prefix : string prop option; [@option]
  role_arn : string prop;
  state_machine_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : step_functions) -> ()

let yojson_of_step_functions =
  (function
   | {
       execution_name_prefix = v_execution_name_prefix;
       role_arn = v_role_arn;
       state_machine_name = v_state_machine_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_state_machine_name
         in
         ("state_machine_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_execution_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "execution_name_prefix", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : step_functions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_step_functions

[@@@deriving.end]

type timestream__dimension = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timestream__dimension) -> ()

let yojson_of_timestream__dimension =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : timestream__dimension -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timestream__dimension

[@@@deriving.end]

type timestream__timestamp = {
  unit : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timestream__timestamp) -> ()

let yojson_of_timestream__timestamp =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit in
         ("unit", arg) :: bnds
       in
       `Assoc bnds
    : timestream__timestamp -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timestream__timestamp

[@@@deriving.end]

type timestream = {
  database_name : string prop;
  role_arn : string prop;
  table_name : string prop;
  dimension : timestream__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timestamp : timestream__timestamp list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timestream) -> ()

let yojson_of_timestream =
  (function
   | {
       database_name = v_database_name;
       role_arn = v_role_arn;
       table_name = v_table_name;
       dimension = v_dimension;
       timestamp = v_timestamp;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_timestamp then bnds
         else
           let arg =
             (yojson_of_list yojson_of_timestream__timestamp)
               v_timestamp
           in
           let bnd = "timestamp", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dimension then bnds
         else
           let arg =
             (yojson_of_list yojson_of_timestream__dimension)
               v_dimension
           in
           let bnd = "dimension", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table_name in
         ("table_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       `Assoc bnds
    : timestream -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timestream

[@@@deriving.end]

type aws_iot_topic_rule = {
  description : string prop option; [@option]
  enabled : bool prop;
  id : string prop option; [@option]
  name : string prop;
  sql : string prop;
  sql_version : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  cloudwatch_alarm : cloudwatch_alarm list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cloudwatch_logs : cloudwatch_logs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cloudwatch_metric : cloudwatch_metric list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dynamodb : dynamodb list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dynamodbv2 : dynamodbv2 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  elasticsearch : elasticsearch list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  error_action : error_action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  firehose : firehose list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  http : http list; [@default []] [@yojson_drop_default Stdlib.( = )]
  iot_analytics : iot_analytics list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  iot_events : iot_events list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  kafka : kafka list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  kinesis : kinesis list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  lambda : lambda list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  republish : republish list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  s3 : s3 list; [@default []] [@yojson_drop_default Stdlib.( = )]
  sns : sns list; [@default []] [@yojson_drop_default Stdlib.( = )]
  sqs : sqs list; [@default []] [@yojson_drop_default Stdlib.( = )]
  step_functions : step_functions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timestream : timestream list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iot_topic_rule) -> ()

let yojson_of_aws_iot_topic_rule =
  (function
   | {
       description = v_description;
       enabled = v_enabled;
       id = v_id;
       name = v_name;
       sql = v_sql;
       sql_version = v_sql_version;
       tags = v_tags;
       tags_all = v_tags_all;
       cloudwatch_alarm = v_cloudwatch_alarm;
       cloudwatch_logs = v_cloudwatch_logs;
       cloudwatch_metric = v_cloudwatch_metric;
       dynamodb = v_dynamodb;
       dynamodbv2 = v_dynamodbv2;
       elasticsearch = v_elasticsearch;
       error_action = v_error_action;
       firehose = v_firehose;
       http = v_http;
       iot_analytics = v_iot_analytics;
       iot_events = v_iot_events;
       kafka = v_kafka;
       kinesis = v_kinesis;
       lambda = v_lambda;
       republish = v_republish;
       s3 = v_s3;
       sns = v_sns;
       sqs = v_sqs;
       step_functions = v_step_functions;
       timestream = v_timestream;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_timestream then bnds
         else
           let arg =
             (yojson_of_list yojson_of_timestream) v_timestream
           in
           let bnd = "timestream", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_step_functions then bnds
         else
           let arg =
             (yojson_of_list yojson_of_step_functions)
               v_step_functions
           in
           let bnd = "step_functions", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_sqs then bnds
         else
           let arg = (yojson_of_list yojson_of_sqs) v_sqs in
           let bnd = "sqs", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_sns then bnds
         else
           let arg = (yojson_of_list yojson_of_sns) v_sns in
           let bnd = "sns", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_s3 then bnds
         else
           let arg = (yojson_of_list yojson_of_s3) v_s3 in
           let bnd = "s3", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_republish then bnds
         else
           let arg =
             (yojson_of_list yojson_of_republish) v_republish
           in
           let bnd = "republish", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_lambda then bnds
         else
           let arg = (yojson_of_list yojson_of_lambda) v_lambda in
           let bnd = "lambda", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kinesis then bnds
         else
           let arg = (yojson_of_list yojson_of_kinesis) v_kinesis in
           let bnd = "kinesis", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kafka then bnds
         else
           let arg = (yojson_of_list yojson_of_kafka) v_kafka in
           let bnd = "kafka", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_iot_events then bnds
         else
           let arg =
             (yojson_of_list yojson_of_iot_events) v_iot_events
           in
           let bnd = "iot_events", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_iot_analytics then bnds
         else
           let arg =
             (yojson_of_list yojson_of_iot_analytics) v_iot_analytics
           in
           let bnd = "iot_analytics", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_http then bnds
         else
           let arg = (yojson_of_list yojson_of_http) v_http in
           let bnd = "http", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_firehose then bnds
         else
           let arg =
             (yojson_of_list yojson_of_firehose) v_firehose
           in
           let bnd = "firehose", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_error_action then bnds
         else
           let arg =
             (yojson_of_list yojson_of_error_action) v_error_action
           in
           let bnd = "error_action", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_elasticsearch then bnds
         else
           let arg =
             (yojson_of_list yojson_of_elasticsearch) v_elasticsearch
           in
           let bnd = "elasticsearch", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dynamodbv2 then bnds
         else
           let arg =
             (yojson_of_list yojson_of_dynamodbv2) v_dynamodbv2
           in
           let bnd = "dynamodbv2", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dynamodb then bnds
         else
           let arg =
             (yojson_of_list yojson_of_dynamodb) v_dynamodb
           in
           let bnd = "dynamodb", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cloudwatch_metric then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cloudwatch_metric)
               v_cloudwatch_metric
           in
           let bnd = "cloudwatch_metric", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cloudwatch_logs then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cloudwatch_logs)
               v_cloudwatch_logs
           in
           let bnd = "cloudwatch_logs", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cloudwatch_alarm then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cloudwatch_alarm)
               v_cloudwatch_alarm
           in
           let bnd = "cloudwatch_alarm", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sql_version in
         ("sql_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sql in
         ("sql", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_iot_topic_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iot_topic_rule

[@@@deriving.end]

let cloudwatch_alarm ~alarm_name ~role_arn ~state_reason ~state_value
    () : cloudwatch_alarm =
  { alarm_name; role_arn; state_reason; state_value }

let cloudwatch_logs ?batch_mode ~log_group_name ~role_arn () :
    cloudwatch_logs =
  { batch_mode; log_group_name; role_arn }

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

let dynamodbv2 ?(put_item = []) ~role_arn () : dynamodbv2 =
  { role_arn; put_item }

let elasticsearch ~endpoint ~id ~index ~role_arn ~type_ () :
    elasticsearch =
  { endpoint; id; index; role_arn; type_ }

let error_action__cloudwatch_alarm ~alarm_name ~role_arn
    ~state_reason ~state_value () : error_action__cloudwatch_alarm =
  { alarm_name; role_arn; state_reason; state_value }

let error_action__cloudwatch_logs ?batch_mode ~log_group_name
    ~role_arn () : error_action__cloudwatch_logs =
  { batch_mode; log_group_name; role_arn }

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

let error_action__dynamodbv2 ?(put_item = []) ~role_arn () :
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

let error_action__http ?confirmation_url ?(http_header = []) ~url ()
    : error_action__http =
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

let error_action__kafka ?key ?partition ?(header = [])
    ~client_properties ~destination_arn ~topic () :
    error_action__kafka =
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

let error_action__timestream ?(timestamp = []) ~database_name
    ~role_arn ~table_name ~dimension () : error_action__timestream =
  { database_name; role_arn; table_name; dimension; timestamp }

let error_action ?(cloudwatch_alarm = []) ?(cloudwatch_logs = [])
    ?(cloudwatch_metric = []) ?(dynamodb = []) ?(dynamodbv2 = [])
    ?(elasticsearch = []) ?(firehose = []) ?(http = [])
    ?(iot_analytics = []) ?(iot_events = []) ?(kafka = [])
    ?(kinesis = []) ?(lambda = []) ?(republish = []) ?(s3 = [])
    ?(sns = []) ?(sqs = []) ?(step_functions = []) ?(timestream = [])
    () : error_action =
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

let http ?confirmation_url ?(http_header = []) ~url () : http =
  { confirmation_url; url; http_header }

let iot_analytics ?batch_mode ~channel_name ~role_arn () :
    iot_analytics =
  { batch_mode; channel_name; role_arn }

let iot_events ?batch_mode ?message_id ~input_name ~role_arn () :
    iot_events =
  { batch_mode; input_name; message_id; role_arn }

let kafka__header ~key ~value () : kafka__header = { key; value }

let kafka ?key ?partition ?(header = []) ~client_properties
    ~destination_arn ~topic () : kafka =
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

let timestream ?(timestamp = []) ~database_name ~role_arn ~table_name
    ~dimension () : timestream =
  { database_name; role_arn; table_name; dimension; timestamp }

let aws_iot_topic_rule ?description ?id ?tags ?tags_all
    ?(error_action = []) ~enabled ~name ~sql ~sql_version
    ~cloudwatch_alarm ~cloudwatch_logs ~cloudwatch_metric ~dynamodb
    ~dynamodbv2 ~elasticsearch ~firehose ~http ~iot_analytics
    ~iot_events ~kafka ~kinesis ~lambda ~republish ~s3 ~sns ~sqs
    ~step_functions ~timestream () : aws_iot_topic_rule =
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

let make ?description ?id ?tags ?tags_all ?(error_action = [])
    ~enabled ~name ~sql ~sql_version ~cloudwatch_alarm
    ~cloudwatch_logs ~cloudwatch_metric ~dynamodb ~dynamodbv2
    ~elasticsearch ~firehose ~http ~iot_analytics ~iot_events ~kafka
    ~kinesis ~lambda ~republish ~s3 ~sns ~sqs ~step_functions
    ~timestream __id =
  let __type = "aws_iot_topic_rule" in
  let __attrs =
    ({
       tf_name = __id;
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
        (aws_iot_topic_rule ?description ?id ?tags ?tags_all
           ~error_action ~enabled ~name ~sql ~sql_version
           ~cloudwatch_alarm ~cloudwatch_logs ~cloudwatch_metric
           ~dynamodb ~dynamodbv2 ~elasticsearch ~firehose ~http
           ~iot_analytics ~iot_events ~kafka ~kinesis ~lambda
           ~republish ~s3 ~sns ~sqs ~step_functions ~timestream ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all
    ?(error_action = []) ~enabled ~name ~sql ~sql_version
    ~cloudwatch_alarm ~cloudwatch_logs ~cloudwatch_metric ~dynamodb
    ~dynamodbv2 ~elasticsearch ~firehose ~http ~iot_analytics
    ~iot_events ~kafka ~kinesis ~lambda ~republish ~s3 ~sns ~sqs
    ~step_functions ~timestream __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~error_action ~enabled
      ~name ~sql ~sql_version ~cloudwatch_alarm ~cloudwatch_logs
      ~cloudwatch_metric ~dynamodb ~dynamodbv2 ~elasticsearch
      ~firehose ~http ~iot_analytics ~iot_events ~kafka ~kinesis
      ~lambda ~republish ~s3 ~sns ~sqs ~step_functions ~timestream
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

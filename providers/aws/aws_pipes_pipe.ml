(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type enrichment_parameters__http_parameters = {
  header_parameters : (string * string prop) list option; [@option]
  path_parameter_values : string prop list option; [@option]
  query_string_parameters : (string * string prop) list option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : enrichment_parameters__http_parameters) -> ()

let yojson_of_enrichment_parameters__http_parameters =
  (function
   | {
       header_parameters = v_header_parameters;
       path_parameter_values = v_path_parameter_values;
       query_string_parameters = v_query_string_parameters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_query_string_parameters with
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
             let bnd = "query_string_parameters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path_parameter_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "path_parameter_values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_header_parameters with
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
             let bnd = "header_parameters", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : enrichment_parameters__http_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_enrichment_parameters__http_parameters

[@@@deriving.end]

type enrichment_parameters = {
  input_template : string prop option; [@option]
  http_parameters : enrichment_parameters__http_parameters list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : enrichment_parameters) -> ()

let yojson_of_enrichment_parameters =
  (function
   | {
       input_template = v_input_template;
       http_parameters = v_http_parameters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_enrichment_parameters__http_parameters
             v_http_parameters
         in
         ("http_parameters", arg) :: bnds
       in
       let bnds =
         match v_input_template with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "input_template", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : enrichment_parameters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_enrichment_parameters

[@@@deriving.end]

type source_parameters__activemq_broker_parameters__credentials = {
  basic_auth : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : source_parameters__activemq_broker_parameters__credentials) ->
  ()

let yojson_of_source_parameters__activemq_broker_parameters__credentials
    =
  (function
   | { basic_auth = v_basic_auth } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_basic_auth in
         ("basic_auth", arg) :: bnds
       in
       `Assoc bnds
    : source_parameters__activemq_broker_parameters__credentials ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_parameters__activemq_broker_parameters__credentials

[@@@deriving.end]

type source_parameters__activemq_broker_parameters = {
  batch_size : float prop option; [@option]
  maximum_batching_window_in_seconds : float prop option; [@option]
  queue_name : string prop;
  credentials :
    source_parameters__activemq_broker_parameters__credentials list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source_parameters__activemq_broker_parameters) -> ()

let yojson_of_source_parameters__activemq_broker_parameters =
  (function
   | {
       batch_size = v_batch_size;
       maximum_batching_window_in_seconds =
         v_maximum_batching_window_in_seconds;
       queue_name = v_queue_name;
       credentials = v_credentials;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_parameters__activemq_broker_parameters__credentials
             v_credentials
         in
         ("credentials", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_queue_name in
         ("queue_name", arg) :: bnds
       in
       let bnds =
         match v_maximum_batching_window_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_batching_window_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_batch_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "batch_size", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_parameters__activemq_broker_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_parameters__activemq_broker_parameters

[@@@deriving.end]

type source_parameters__dynamodb_stream_parameters__dead_letter_config = {
  arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       source_parameters__dynamodb_stream_parameters__dead_letter_config) ->
  ()

let yojson_of_source_parameters__dynamodb_stream_parameters__dead_letter_config
    =
  (function
   | { arn = v_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_parameters__dynamodb_stream_parameters__dead_letter_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_parameters__dynamodb_stream_parameters__dead_letter_config

[@@@deriving.end]

type source_parameters__dynamodb_stream_parameters = {
  batch_size : float prop option; [@option]
  maximum_batching_window_in_seconds : float prop option; [@option]
  maximum_record_age_in_seconds : float prop option; [@option]
  maximum_retry_attempts : float prop option; [@option]
  on_partial_batch_item_failure : string prop option; [@option]
  parallelization_factor : float prop option; [@option]
  starting_position : string prop;
  dead_letter_config :
    source_parameters__dynamodb_stream_parameters__dead_letter_config
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source_parameters__dynamodb_stream_parameters) -> ()

let yojson_of_source_parameters__dynamodb_stream_parameters =
  (function
   | {
       batch_size = v_batch_size;
       maximum_batching_window_in_seconds =
         v_maximum_batching_window_in_seconds;
       maximum_record_age_in_seconds =
         v_maximum_record_age_in_seconds;
       maximum_retry_attempts = v_maximum_retry_attempts;
       on_partial_batch_item_failure =
         v_on_partial_batch_item_failure;
       parallelization_factor = v_parallelization_factor;
       starting_position = v_starting_position;
       dead_letter_config = v_dead_letter_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_parameters__dynamodb_stream_parameters__dead_letter_config
             v_dead_letter_config
         in
         ("dead_letter_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_starting_position
         in
         ("starting_position", arg) :: bnds
       in
       let bnds =
         match v_parallelization_factor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "parallelization_factor", arg in
             bnd :: bnds
       in
       let bnds =
         match v_on_partial_batch_item_failure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "on_partial_batch_item_failure", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maximum_retry_attempts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_retry_attempts", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maximum_record_age_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_record_age_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maximum_batching_window_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_batching_window_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_batch_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "batch_size", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_parameters__dynamodb_stream_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_parameters__dynamodb_stream_parameters

[@@@deriving.end]

type source_parameters__filter_criteria__filter = {
  pattern : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source_parameters__filter_criteria__filter) -> ()

let yojson_of_source_parameters__filter_criteria__filter =
  (function
   | { pattern = v_pattern } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pattern in
         ("pattern", arg) :: bnds
       in
       `Assoc bnds
    : source_parameters__filter_criteria__filter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_parameters__filter_criteria__filter

[@@@deriving.end]

type source_parameters__filter_criteria = {
  filter : source_parameters__filter_criteria__filter list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source_parameters__filter_criteria) -> ()

let yojson_of_source_parameters__filter_criteria =
  (function
   | { filter = v_filter } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_parameters__filter_criteria__filter
             v_filter
         in
         ("filter", arg) :: bnds
       in
       `Assoc bnds
    : source_parameters__filter_criteria ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_parameters__filter_criteria

[@@@deriving.end]

type source_parameters__kinesis_stream_parameters__dead_letter_config = {
  arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       source_parameters__kinesis_stream_parameters__dead_letter_config) ->
  ()

let yojson_of_source_parameters__kinesis_stream_parameters__dead_letter_config
    =
  (function
   | { arn = v_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_parameters__kinesis_stream_parameters__dead_letter_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_parameters__kinesis_stream_parameters__dead_letter_config

[@@@deriving.end]

type source_parameters__kinesis_stream_parameters = {
  batch_size : float prop option; [@option]
  maximum_batching_window_in_seconds : float prop option; [@option]
  maximum_record_age_in_seconds : float prop option; [@option]
  maximum_retry_attempts : float prop option; [@option]
  on_partial_batch_item_failure : string prop option; [@option]
  parallelization_factor : float prop option; [@option]
  starting_position : string prop;
  starting_position_timestamp : string prop option; [@option]
  dead_letter_config :
    source_parameters__kinesis_stream_parameters__dead_letter_config
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source_parameters__kinesis_stream_parameters) -> ()

let yojson_of_source_parameters__kinesis_stream_parameters =
  (function
   | {
       batch_size = v_batch_size;
       maximum_batching_window_in_seconds =
         v_maximum_batching_window_in_seconds;
       maximum_record_age_in_seconds =
         v_maximum_record_age_in_seconds;
       maximum_retry_attempts = v_maximum_retry_attempts;
       on_partial_batch_item_failure =
         v_on_partial_batch_item_failure;
       parallelization_factor = v_parallelization_factor;
       starting_position = v_starting_position;
       starting_position_timestamp = v_starting_position_timestamp;
       dead_letter_config = v_dead_letter_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_parameters__kinesis_stream_parameters__dead_letter_config
             v_dead_letter_config
         in
         ("dead_letter_config", arg) :: bnds
       in
       let bnds =
         match v_starting_position_timestamp with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "starting_position_timestamp", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_starting_position
         in
         ("starting_position", arg) :: bnds
       in
       let bnds =
         match v_parallelization_factor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "parallelization_factor", arg in
             bnd :: bnds
       in
       let bnds =
         match v_on_partial_batch_item_failure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "on_partial_batch_item_failure", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maximum_retry_attempts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_retry_attempts", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maximum_record_age_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_record_age_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maximum_batching_window_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_batching_window_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_batch_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "batch_size", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_parameters__kinesis_stream_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_parameters__kinesis_stream_parameters

[@@@deriving.end]

type source_parameters__managed_streaming_kafka_parameters__credentials = {
  client_certificate_tls_auth : string prop option; [@option]
  sasl_scram_512_auth : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       source_parameters__managed_streaming_kafka_parameters__credentials) ->
  ()

let yojson_of_source_parameters__managed_streaming_kafka_parameters__credentials
    =
  (function
   | {
       client_certificate_tls_auth = v_client_certificate_tls_auth;
       sasl_scram_512_auth = v_sasl_scram_512_auth;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sasl_scram_512_auth with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sasl_scram_512_auth", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_certificate_tls_auth with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_certificate_tls_auth", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_parameters__managed_streaming_kafka_parameters__credentials ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_parameters__managed_streaming_kafka_parameters__credentials

[@@@deriving.end]

type source_parameters__managed_streaming_kafka_parameters = {
  batch_size : float prop option; [@option]
  consumer_group_id : string prop option; [@option]
  maximum_batching_window_in_seconds : float prop option; [@option]
  starting_position : string prop option; [@option]
  topic_name : string prop;
  credentials :
    source_parameters__managed_streaming_kafka_parameters__credentials
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : source_parameters__managed_streaming_kafka_parameters) ->
  ()

let yojson_of_source_parameters__managed_streaming_kafka_parameters =
  (function
   | {
       batch_size = v_batch_size;
       consumer_group_id = v_consumer_group_id;
       maximum_batching_window_in_seconds =
         v_maximum_batching_window_in_seconds;
       starting_position = v_starting_position;
       topic_name = v_topic_name;
       credentials = v_credentials;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_parameters__managed_streaming_kafka_parameters__credentials
             v_credentials
         in
         ("credentials", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topic_name in
         ("topic_name", arg) :: bnds
       in
       let bnds =
         match v_starting_position with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "starting_position", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maximum_batching_window_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_batching_window_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_consumer_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "consumer_group_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_batch_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "batch_size", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_parameters__managed_streaming_kafka_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_parameters__managed_streaming_kafka_parameters

[@@@deriving.end]

type source_parameters__rabbitmq_broker_parameters__credentials = {
  basic_auth : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : source_parameters__rabbitmq_broker_parameters__credentials) ->
  ()

let yojson_of_source_parameters__rabbitmq_broker_parameters__credentials
    =
  (function
   | { basic_auth = v_basic_auth } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_basic_auth in
         ("basic_auth", arg) :: bnds
       in
       `Assoc bnds
    : source_parameters__rabbitmq_broker_parameters__credentials ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_parameters__rabbitmq_broker_parameters__credentials

[@@@deriving.end]

type source_parameters__rabbitmq_broker_parameters = {
  batch_size : float prop option; [@option]
  maximum_batching_window_in_seconds : float prop option; [@option]
  queue_name : string prop;
  virtual_host : string prop option; [@option]
  credentials :
    source_parameters__rabbitmq_broker_parameters__credentials list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source_parameters__rabbitmq_broker_parameters) -> ()

let yojson_of_source_parameters__rabbitmq_broker_parameters =
  (function
   | {
       batch_size = v_batch_size;
       maximum_batching_window_in_seconds =
         v_maximum_batching_window_in_seconds;
       queue_name = v_queue_name;
       virtual_host = v_virtual_host;
       credentials = v_credentials;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_parameters__rabbitmq_broker_parameters__credentials
             v_credentials
         in
         ("credentials", arg) :: bnds
       in
       let bnds =
         match v_virtual_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "virtual_host", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_queue_name in
         ("queue_name", arg) :: bnds
       in
       let bnds =
         match v_maximum_batching_window_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_batching_window_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_batch_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "batch_size", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_parameters__rabbitmq_broker_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_parameters__rabbitmq_broker_parameters

[@@@deriving.end]

type source_parameters__self_managed_kafka_parameters__credentials = {
  basic_auth : string prop;
  client_certificate_tls_auth : string prop option; [@option]
  sasl_scram_256_auth : string prop option; [@option]
  sasl_scram_512_auth : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       source_parameters__self_managed_kafka_parameters__credentials) ->
  ()

let yojson_of_source_parameters__self_managed_kafka_parameters__credentials
    =
  (function
   | {
       basic_auth = v_basic_auth;
       client_certificate_tls_auth = v_client_certificate_tls_auth;
       sasl_scram_256_auth = v_sasl_scram_256_auth;
       sasl_scram_512_auth = v_sasl_scram_512_auth;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_sasl_scram_512_auth with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sasl_scram_512_auth", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sasl_scram_256_auth with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sasl_scram_256_auth", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_certificate_tls_auth with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_certificate_tls_auth", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_basic_auth in
         ("basic_auth", arg) :: bnds
       in
       `Assoc bnds
    : source_parameters__self_managed_kafka_parameters__credentials ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_parameters__self_managed_kafka_parameters__credentials

[@@@deriving.end]

type source_parameters__self_managed_kafka_parameters__vpc = {
  security_groups : string prop list option; [@option]
  subnets : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : source_parameters__self_managed_kafka_parameters__vpc) ->
  ()

let yojson_of_source_parameters__self_managed_kafka_parameters__vpc =
  (function
   | { security_groups = v_security_groups; subnets = v_subnets } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_subnets with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "subnets", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_groups", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_parameters__self_managed_kafka_parameters__vpc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_source_parameters__self_managed_kafka_parameters__vpc

[@@@deriving.end]

type source_parameters__self_managed_kafka_parameters = {
  additional_bootstrap_servers : string prop list option; [@option]
  batch_size : float prop option; [@option]
  consumer_group_id : string prop option; [@option]
  maximum_batching_window_in_seconds : float prop option; [@option]
  server_root_ca_certificate : string prop option; [@option]
  starting_position : string prop option; [@option]
  topic_name : string prop;
  credentials :
    source_parameters__self_managed_kafka_parameters__credentials
    list;
  vpc : source_parameters__self_managed_kafka_parameters__vpc list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : source_parameters__self_managed_kafka_parameters) -> ()

let yojson_of_source_parameters__self_managed_kafka_parameters =
  (function
   | {
       additional_bootstrap_servers = v_additional_bootstrap_servers;
       batch_size = v_batch_size;
       consumer_group_id = v_consumer_group_id;
       maximum_batching_window_in_seconds =
         v_maximum_batching_window_in_seconds;
       server_root_ca_certificate = v_server_root_ca_certificate;
       starting_position = v_starting_position;
       topic_name = v_topic_name;
       credentials = v_credentials;
       vpc = v_vpc;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_parameters__self_managed_kafka_parameters__vpc
             v_vpc
         in
         ("vpc", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_parameters__self_managed_kafka_parameters__credentials
             v_credentials
         in
         ("credentials", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topic_name in
         ("topic_name", arg) :: bnds
       in
       let bnds =
         match v_starting_position with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "starting_position", arg in
             bnd :: bnds
       in
       let bnds =
         match v_server_root_ca_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "server_root_ca_certificate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maximum_batching_window_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_batching_window_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_consumer_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "consumer_group_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_batch_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "batch_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_additional_bootstrap_servers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "additional_bootstrap_servers", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_parameters__self_managed_kafka_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_parameters__self_managed_kafka_parameters

[@@@deriving.end]

type source_parameters__sqs_queue_parameters = {
  batch_size : float prop option; [@option]
  maximum_batching_window_in_seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source_parameters__sqs_queue_parameters) -> ()

let yojson_of_source_parameters__sqs_queue_parameters =
  (function
   | {
       batch_size = v_batch_size;
       maximum_batching_window_in_seconds =
         v_maximum_batching_window_in_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_maximum_batching_window_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_batching_window_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_batch_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "batch_size", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_parameters__sqs_queue_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_parameters__sqs_queue_parameters

[@@@deriving.end]

type source_parameters = {
  activemq_broker_parameters :
    source_parameters__activemq_broker_parameters list;
  dynamodb_stream_parameters :
    source_parameters__dynamodb_stream_parameters list;
  filter_criteria : source_parameters__filter_criteria list;
  kinesis_stream_parameters :
    source_parameters__kinesis_stream_parameters list;
  managed_streaming_kafka_parameters :
    source_parameters__managed_streaming_kafka_parameters list;
  rabbitmq_broker_parameters :
    source_parameters__rabbitmq_broker_parameters list;
  self_managed_kafka_parameters :
    source_parameters__self_managed_kafka_parameters list;
  sqs_queue_parameters : source_parameters__sqs_queue_parameters list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source_parameters) -> ()

let yojson_of_source_parameters =
  (function
   | {
       activemq_broker_parameters = v_activemq_broker_parameters;
       dynamodb_stream_parameters = v_dynamodb_stream_parameters;
       filter_criteria = v_filter_criteria;
       kinesis_stream_parameters = v_kinesis_stream_parameters;
       managed_streaming_kafka_parameters =
         v_managed_streaming_kafka_parameters;
       rabbitmq_broker_parameters = v_rabbitmq_broker_parameters;
       self_managed_kafka_parameters =
         v_self_managed_kafka_parameters;
       sqs_queue_parameters = v_sqs_queue_parameters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_parameters__sqs_queue_parameters
             v_sqs_queue_parameters
         in
         ("sqs_queue_parameters", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_parameters__self_managed_kafka_parameters
             v_self_managed_kafka_parameters
         in
         ("self_managed_kafka_parameters", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_parameters__rabbitmq_broker_parameters
             v_rabbitmq_broker_parameters
         in
         ("rabbitmq_broker_parameters", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_parameters__managed_streaming_kafka_parameters
             v_managed_streaming_kafka_parameters
         in
         ("managed_streaming_kafka_parameters", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_parameters__kinesis_stream_parameters
             v_kinesis_stream_parameters
         in
         ("kinesis_stream_parameters", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_parameters__filter_criteria
             v_filter_criteria
         in
         ("filter_criteria", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_parameters__dynamodb_stream_parameters
             v_dynamodb_stream_parameters
         in
         ("dynamodb_stream_parameters", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_source_parameters__activemq_broker_parameters
             v_activemq_broker_parameters
         in
         ("activemq_broker_parameters", arg) :: bnds
       in
       `Assoc bnds
    : source_parameters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_parameters

[@@@deriving.end]

type target_parameters__batch_job_parameters__array_properties = {
  size : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : target_parameters__batch_job_parameters__array_properties) ->
  ()

let yojson_of_target_parameters__batch_job_parameters__array_properties
    =
  (function
   | { size = v_size } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "size", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : target_parameters__batch_job_parameters__array_properties ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_target_parameters__batch_job_parameters__array_properties

[@@@deriving.end]

type target_parameters__batch_job_parameters__container_overrides__environment = {
  name : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       target_parameters__batch_job_parameters__container_overrides__environment) ->
  ()

let yojson_of_target_parameters__batch_job_parameters__container_overrides__environment
    =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : target_parameters__batch_job_parameters__container_overrides__environment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_target_parameters__batch_job_parameters__container_overrides__environment

[@@@deriving.end]

type target_parameters__batch_job_parameters__container_overrides__resource_requirement = {
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       target_parameters__batch_job_parameters__container_overrides__resource_requirement) ->
  ()

let yojson_of_target_parameters__batch_job_parameters__container_overrides__resource_requirement
    =
  (function
   | { type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : target_parameters__batch_job_parameters__container_overrides__resource_requirement ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_target_parameters__batch_job_parameters__container_overrides__resource_requirement

[@@@deriving.end]

type target_parameters__batch_job_parameters__container_overrides = {
  command : string prop list option; [@option]
  instance_type : string prop option; [@option]
  environment :
    target_parameters__batch_job_parameters__container_overrides__environment
    list;
  resource_requirement :
    target_parameters__batch_job_parameters__container_overrides__resource_requirement
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       target_parameters__batch_job_parameters__container_overrides) ->
  ()

let yojson_of_target_parameters__batch_job_parameters__container_overrides
    =
  (function
   | {
       command = v_command;
       instance_type = v_instance_type;
       environment = v_environment;
       resource_requirement = v_resource_requirement;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_target_parameters__batch_job_parameters__container_overrides__resource_requirement
             v_resource_requirement
         in
         ("resource_requirement", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_target_parameters__batch_job_parameters__container_overrides__environment
             v_environment
         in
         ("environment", arg) :: bnds
       in
       let bnds =
         match v_instance_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "command", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : target_parameters__batch_job_parameters__container_overrides ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_target_parameters__batch_job_parameters__container_overrides

[@@@deriving.end]

type target_parameters__batch_job_parameters__depends_on = {
  job_id : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : target_parameters__batch_job_parameters__depends_on) -> ()

let yojson_of_target_parameters__batch_job_parameters__depends_on =
  (function
   | { job_id = v_job_id; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_job_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "job_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : target_parameters__batch_job_parameters__depends_on ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_parameters__batch_job_parameters__depends_on

[@@@deriving.end]

type target_parameters__batch_job_parameters__retry_strategy = {
  attempts : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : target_parameters__batch_job_parameters__retry_strategy) ->
  ()

let yojson_of_target_parameters__batch_job_parameters__retry_strategy
    =
  (function
   | { attempts = v_attempts } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_attempts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "attempts", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : target_parameters__batch_job_parameters__retry_strategy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_target_parameters__batch_job_parameters__retry_strategy

[@@@deriving.end]

type target_parameters__batch_job_parameters = {
  job_definition : string prop;
  job_name : string prop;
  parameters : (string * string prop) list option; [@option]
  array_properties :
    target_parameters__batch_job_parameters__array_properties list;
  container_overrides :
    target_parameters__batch_job_parameters__container_overrides list;
  depends_on :
    target_parameters__batch_job_parameters__depends_on list;
  retry_strategy :
    target_parameters__batch_job_parameters__retry_strategy list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target_parameters__batch_job_parameters) -> ()

let yojson_of_target_parameters__batch_job_parameters =
  (function
   | {
       job_definition = v_job_definition;
       job_name = v_job_name;
       parameters = v_parameters;
       array_properties = v_array_properties;
       container_overrides = v_container_overrides;
       depends_on = v_depends_on;
       retry_strategy = v_retry_strategy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_target_parameters__batch_job_parameters__retry_strategy
             v_retry_strategy
         in
         ("retry_strategy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_target_parameters__batch_job_parameters__depends_on
             v_depends_on
         in
         ("depends_on", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_target_parameters__batch_job_parameters__container_overrides
             v_container_overrides
         in
         ("container_overrides", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_target_parameters__batch_job_parameters__array_properties
             v_array_properties
         in
         ("array_properties", arg) :: bnds
       in
       let bnds =
         match v_parameters with
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
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_job_name in
         ("job_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_job_definition
         in
         ("job_definition", arg) :: bnds
       in
       `Assoc bnds
    : target_parameters__batch_job_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_parameters__batch_job_parameters

[@@@deriving.end]

type target_parameters__cloudwatch_logs_parameters = {
  log_stream_name : string prop option; [@option]
  timestamp : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target_parameters__cloudwatch_logs_parameters) -> ()

let yojson_of_target_parameters__cloudwatch_logs_parameters =
  (function
   | { log_stream_name = v_log_stream_name; timestamp = v_timestamp }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_timestamp with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timestamp", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_stream_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_stream_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : target_parameters__cloudwatch_logs_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_parameters__cloudwatch_logs_parameters

[@@@deriving.end]

type target_parameters__ecs_task_parameters__capacity_provider_strategy = {
  base : float prop option; [@option]
  capacity_provider : string prop;
  weight : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       target_parameters__ecs_task_parameters__capacity_provider_strategy) ->
  ()

let yojson_of_target_parameters__ecs_task_parameters__capacity_provider_strategy
    =
  (function
   | {
       base = v_base;
       capacity_provider = v_capacity_provider;
       weight = v_weight;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_weight with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "weight", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_capacity_provider
         in
         ("capacity_provider", arg) :: bnds
       in
       let bnds =
         match v_base with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "base", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : target_parameters__ecs_task_parameters__capacity_provider_strategy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_target_parameters__ecs_task_parameters__capacity_provider_strategy

[@@@deriving.end]

type target_parameters__ecs_task_parameters__network_configuration__aws_vpc_configuration = {
  assign_public_ip : string prop option; [@option]
  security_groups : string prop list option; [@option]
  subnets : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       target_parameters__ecs_task_parameters__network_configuration__aws_vpc_configuration) ->
  ()

let yojson_of_target_parameters__ecs_task_parameters__network_configuration__aws_vpc_configuration
    =
  (function
   | {
       assign_public_ip = v_assign_public_ip;
       security_groups = v_security_groups;
       subnets = v_subnets;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_subnets with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "subnets", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_assign_public_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "assign_public_ip", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : target_parameters__ecs_task_parameters__network_configuration__aws_vpc_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_target_parameters__ecs_task_parameters__network_configuration__aws_vpc_configuration

[@@@deriving.end]

type target_parameters__ecs_task_parameters__network_configuration = {
  aws_vpc_configuration :
    target_parameters__ecs_task_parameters__network_configuration__aws_vpc_configuration
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       target_parameters__ecs_task_parameters__network_configuration) ->
  ()

let yojson_of_target_parameters__ecs_task_parameters__network_configuration
    =
  (function
   | { aws_vpc_configuration = v_aws_vpc_configuration } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_target_parameters__ecs_task_parameters__network_configuration__aws_vpc_configuration
             v_aws_vpc_configuration
         in
         ("aws_vpc_configuration", arg) :: bnds
       in
       `Assoc bnds
    : target_parameters__ecs_task_parameters__network_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_target_parameters__ecs_task_parameters__network_configuration

[@@@deriving.end]

type target_parameters__ecs_task_parameters__overrides__container_override__environment = {
  name : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       target_parameters__ecs_task_parameters__overrides__container_override__environment) ->
  ()

let yojson_of_target_parameters__ecs_task_parameters__overrides__container_override__environment
    =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : target_parameters__ecs_task_parameters__overrides__container_override__environment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_target_parameters__ecs_task_parameters__overrides__container_override__environment

[@@@deriving.end]

type target_parameters__ecs_task_parameters__overrides__container_override__environment_file = {
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       target_parameters__ecs_task_parameters__overrides__container_override__environment_file) ->
  ()

let yojson_of_target_parameters__ecs_task_parameters__overrides__container_override__environment_file
    =
  (function
   | { type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : target_parameters__ecs_task_parameters__overrides__container_override__environment_file ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_target_parameters__ecs_task_parameters__overrides__container_override__environment_file

[@@@deriving.end]

type target_parameters__ecs_task_parameters__overrides__container_override__resource_requirement = {
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       target_parameters__ecs_task_parameters__overrides__container_override__resource_requirement) ->
  ()

let yojson_of_target_parameters__ecs_task_parameters__overrides__container_override__resource_requirement
    =
  (function
   | { type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : target_parameters__ecs_task_parameters__overrides__container_override__resource_requirement ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_target_parameters__ecs_task_parameters__overrides__container_override__resource_requirement

[@@@deriving.end]

type target_parameters__ecs_task_parameters__overrides__container_override = {
  command : string prop list option; [@option]
  cpu : float prop option; [@option]
  memory : float prop option; [@option]
  memory_reservation : float prop option; [@option]
  name : string prop option; [@option]
  environment :
    target_parameters__ecs_task_parameters__overrides__container_override__environment
    list;
  environment_file :
    target_parameters__ecs_task_parameters__overrides__container_override__environment_file
    list;
  resource_requirement :
    target_parameters__ecs_task_parameters__overrides__container_override__resource_requirement
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       target_parameters__ecs_task_parameters__overrides__container_override) ->
  ()

let yojson_of_target_parameters__ecs_task_parameters__overrides__container_override
    =
  (function
   | {
       command = v_command;
       cpu = v_cpu;
       memory = v_memory;
       memory_reservation = v_memory_reservation;
       name = v_name;
       environment = v_environment;
       environment_file = v_environment_file;
       resource_requirement = v_resource_requirement;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_target_parameters__ecs_task_parameters__overrides__container_override__resource_requirement
             v_resource_requirement
         in
         ("resource_requirement", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_target_parameters__ecs_task_parameters__overrides__container_override__environment_file
             v_environment_file
         in
         ("environment_file", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_target_parameters__ecs_task_parameters__overrides__container_override__environment
             v_environment
         in
         ("environment", arg) :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_memory_reservation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "memory_reservation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_memory with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "memory", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpu with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cpu", arg in
             bnd :: bnds
       in
       let bnds =
         match v_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "command", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : target_parameters__ecs_task_parameters__overrides__container_override ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_target_parameters__ecs_task_parameters__overrides__container_override

[@@@deriving.end]

type target_parameters__ecs_task_parameters__overrides__ephemeral_storage = {
  size_in_gib : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       target_parameters__ecs_task_parameters__overrides__ephemeral_storage) ->
  ()

let yojson_of_target_parameters__ecs_task_parameters__overrides__ephemeral_storage
    =
  (function
   | { size_in_gib = v_size_in_gib } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_size_in_gib in
         ("size_in_gib", arg) :: bnds
       in
       `Assoc bnds
    : target_parameters__ecs_task_parameters__overrides__ephemeral_storage ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_target_parameters__ecs_task_parameters__overrides__ephemeral_storage

[@@@deriving.end]

type target_parameters__ecs_task_parameters__overrides__inference_accelerator_override = {
  device_name : string prop option; [@option]
  device_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       target_parameters__ecs_task_parameters__overrides__inference_accelerator_override) ->
  ()

let yojson_of_target_parameters__ecs_task_parameters__overrides__inference_accelerator_override
    =
  (function
   | { device_name = v_device_name; device_type = v_device_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_device_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "device_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_device_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "device_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : target_parameters__ecs_task_parameters__overrides__inference_accelerator_override ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_target_parameters__ecs_task_parameters__overrides__inference_accelerator_override

[@@@deriving.end]

type target_parameters__ecs_task_parameters__overrides = {
  cpu : string prop option; [@option]
  execution_role_arn : string prop option; [@option]
  memory : string prop option; [@option]
  task_role_arn : string prop option; [@option]
  container_override :
    target_parameters__ecs_task_parameters__overrides__container_override
    list;
  ephemeral_storage :
    target_parameters__ecs_task_parameters__overrides__ephemeral_storage
    list;
  inference_accelerator_override :
    target_parameters__ecs_task_parameters__overrides__inference_accelerator_override
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : target_parameters__ecs_task_parameters__overrides) -> ()

let yojson_of_target_parameters__ecs_task_parameters__overrides =
  (function
   | {
       cpu = v_cpu;
       execution_role_arn = v_execution_role_arn;
       memory = v_memory;
       task_role_arn = v_task_role_arn;
       container_override = v_container_override;
       ephemeral_storage = v_ephemeral_storage;
       inference_accelerator_override =
         v_inference_accelerator_override;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_target_parameters__ecs_task_parameters__overrides__inference_accelerator_override
             v_inference_accelerator_override
         in
         ("inference_accelerator_override", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_target_parameters__ecs_task_parameters__overrides__ephemeral_storage
             v_ephemeral_storage
         in
         ("ephemeral_storage", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_target_parameters__ecs_task_parameters__overrides__container_override
             v_container_override
         in
         ("container_override", arg) :: bnds
       in
       let bnds =
         match v_task_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "task_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_memory with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "memory", arg in
             bnd :: bnds
       in
       let bnds =
         match v_execution_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "execution_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpu with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cpu", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : target_parameters__ecs_task_parameters__overrides ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_parameters__ecs_task_parameters__overrides

[@@@deriving.end]

type target_parameters__ecs_task_parameters__placement_constraint = {
  expression : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       target_parameters__ecs_task_parameters__placement_constraint) ->
  ()

let yojson_of_target_parameters__ecs_task_parameters__placement_constraint
    =
  (function
   | { expression = v_expression; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expression", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : target_parameters__ecs_task_parameters__placement_constraint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_target_parameters__ecs_task_parameters__placement_constraint

[@@@deriving.end]

type target_parameters__ecs_task_parameters__placement_strategy = {
  field : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : target_parameters__ecs_task_parameters__placement_strategy) ->
  ()

let yojson_of_target_parameters__ecs_task_parameters__placement_strategy
    =
  (function
   | { field = v_field; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_field with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "field", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : target_parameters__ecs_task_parameters__placement_strategy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_target_parameters__ecs_task_parameters__placement_strategy

[@@@deriving.end]

type target_parameters__ecs_task_parameters = {
  enable_ecs_managed_tags : bool prop option; [@option]
  enable_execute_command : bool prop option; [@option]
  group : string prop option; [@option]
  launch_type : string prop option; [@option]
  platform_version : string prop option; [@option]
  propagate_tags : string prop option; [@option]
  reference_id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  task_count : float prop option; [@option]
  task_definition_arn : string prop;
  capacity_provider_strategy :
    target_parameters__ecs_task_parameters__capacity_provider_strategy
    list;
  network_configuration :
    target_parameters__ecs_task_parameters__network_configuration
    list;
  overrides : target_parameters__ecs_task_parameters__overrides list;
  placement_constraint :
    target_parameters__ecs_task_parameters__placement_constraint list;
  placement_strategy :
    target_parameters__ecs_task_parameters__placement_strategy list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target_parameters__ecs_task_parameters) -> ()

let yojson_of_target_parameters__ecs_task_parameters =
  (function
   | {
       enable_ecs_managed_tags = v_enable_ecs_managed_tags;
       enable_execute_command = v_enable_execute_command;
       group = v_group;
       launch_type = v_launch_type;
       platform_version = v_platform_version;
       propagate_tags = v_propagate_tags;
       reference_id = v_reference_id;
       tags = v_tags;
       task_count = v_task_count;
       task_definition_arn = v_task_definition_arn;
       capacity_provider_strategy = v_capacity_provider_strategy;
       network_configuration = v_network_configuration;
       overrides = v_overrides;
       placement_constraint = v_placement_constraint;
       placement_strategy = v_placement_strategy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_target_parameters__ecs_task_parameters__placement_strategy
             v_placement_strategy
         in
         ("placement_strategy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_target_parameters__ecs_task_parameters__placement_constraint
             v_placement_constraint
         in
         ("placement_constraint", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_target_parameters__ecs_task_parameters__overrides
             v_overrides
         in
         ("overrides", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_target_parameters__ecs_task_parameters__network_configuration
             v_network_configuration
         in
         ("network_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_target_parameters__ecs_task_parameters__capacity_provider_strategy
             v_capacity_provider_strategy
         in
         ("capacity_provider_strategy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_task_definition_arn
         in
         ("task_definition_arn", arg) :: bnds
       in
       let bnds =
         match v_task_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "task_count", arg in
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
         match v_reference_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "reference_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_propagate_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "propagate_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_platform_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "platform_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_launch_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "launch_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "group", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_execute_command with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_execute_command", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_ecs_managed_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_ecs_managed_tags", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : target_parameters__ecs_task_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_parameters__ecs_task_parameters

[@@@deriving.end]

type target_parameters__eventbridge_event_bus_parameters = {
  detail_type : string prop option; [@option]
  endpoint_id : string prop option; [@option]
  resources : string prop list option; [@option]
  source : string prop option; [@option]
  time : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : target_parameters__eventbridge_event_bus_parameters) -> ()

let yojson_of_target_parameters__eventbridge_event_bus_parameters =
  (function
   | {
       detail_type = v_detail_type;
       endpoint_id = v_endpoint_id;
       resources = v_resources;
       source = v_source;
       time = v_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resources with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resources", arg in
             bnd :: bnds
       in
       let bnds =
         match v_endpoint_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_detail_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "detail_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : target_parameters__eventbridge_event_bus_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_parameters__eventbridge_event_bus_parameters

[@@@deriving.end]

type target_parameters__http_parameters = {
  header_parameters : (string * string prop) list option; [@option]
  path_parameter_values : string prop list option; [@option]
  query_string_parameters : (string * string prop) list option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target_parameters__http_parameters) -> ()

let yojson_of_target_parameters__http_parameters =
  (function
   | {
       header_parameters = v_header_parameters;
       path_parameter_values = v_path_parameter_values;
       query_string_parameters = v_query_string_parameters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_query_string_parameters with
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
             let bnd = "query_string_parameters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path_parameter_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "path_parameter_values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_header_parameters with
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
             let bnd = "header_parameters", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : target_parameters__http_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_parameters__http_parameters

[@@@deriving.end]

type target_parameters__kinesis_stream_parameters = {
  partition_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target_parameters__kinesis_stream_parameters) -> ()

let yojson_of_target_parameters__kinesis_stream_parameters =
  (function
   | { partition_key = v_partition_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_partition_key in
         ("partition_key", arg) :: bnds
       in
       `Assoc bnds
    : target_parameters__kinesis_stream_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_parameters__kinesis_stream_parameters

[@@@deriving.end]

type target_parameters__lambda_function_parameters = {
  invocation_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target_parameters__lambda_function_parameters) -> ()

let yojson_of_target_parameters__lambda_function_parameters =
  (function
   | { invocation_type = v_invocation_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_invocation_type
         in
         ("invocation_type", arg) :: bnds
       in
       `Assoc bnds
    : target_parameters__lambda_function_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_parameters__lambda_function_parameters

[@@@deriving.end]

type target_parameters__redshift_data_parameters = {
  database : string prop;
  db_user : string prop option; [@option]
  secret_manager_arn : string prop option; [@option]
  sqls : string prop list;
  statement_name : string prop option; [@option]
  with_event : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target_parameters__redshift_data_parameters) -> ()

let yojson_of_target_parameters__redshift_data_parameters =
  (function
   | {
       database = v_database;
       db_user = v_db_user;
       secret_manager_arn = v_secret_manager_arn;
       sqls = v_sqls;
       statement_name = v_statement_name;
       with_event = v_with_event;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_with_event with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "with_event", arg in
             bnd :: bnds
       in
       let bnds =
         match v_statement_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "statement_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_sqls
         in
         ("sqls", arg) :: bnds
       in
       let bnds =
         match v_secret_manager_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secret_manager_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_db_user with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "db_user", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database in
         ("database", arg) :: bnds
       in
       `Assoc bnds
    : target_parameters__redshift_data_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_parameters__redshift_data_parameters

[@@@deriving.end]

type target_parameters__sagemaker_pipeline_parameters__pipeline_parameter = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       target_parameters__sagemaker_pipeline_parameters__pipeline_parameter) ->
  ()

let yojson_of_target_parameters__sagemaker_pipeline_parameters__pipeline_parameter
    =
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
    : target_parameters__sagemaker_pipeline_parameters__pipeline_parameter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_target_parameters__sagemaker_pipeline_parameters__pipeline_parameter

[@@@deriving.end]

type target_parameters__sagemaker_pipeline_parameters = {
  pipeline_parameter :
    target_parameters__sagemaker_pipeline_parameters__pipeline_parameter
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : target_parameters__sagemaker_pipeline_parameters) -> ()

let yojson_of_target_parameters__sagemaker_pipeline_parameters =
  (function
   | { pipeline_parameter = v_pipeline_parameter } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_target_parameters__sagemaker_pipeline_parameters__pipeline_parameter
             v_pipeline_parameter
         in
         ("pipeline_parameter", arg) :: bnds
       in
       `Assoc bnds
    : target_parameters__sagemaker_pipeline_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_parameters__sagemaker_pipeline_parameters

[@@@deriving.end]

type target_parameters__sqs_queue_parameters = {
  message_deduplication_id : string prop option; [@option]
  message_group_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target_parameters__sqs_queue_parameters) -> ()

let yojson_of_target_parameters__sqs_queue_parameters =
  (function
   | {
       message_deduplication_id = v_message_deduplication_id;
       message_group_id = v_message_group_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_message_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "message_group_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_message_deduplication_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "message_deduplication_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : target_parameters__sqs_queue_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_parameters__sqs_queue_parameters

[@@@deriving.end]

type target_parameters__step_function_state_machine_parameters = {
  invocation_type : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : target_parameters__step_function_state_machine_parameters) ->
  ()

let yojson_of_target_parameters__step_function_state_machine_parameters
    =
  (function
   | { invocation_type = v_invocation_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_invocation_type
         in
         ("invocation_type", arg) :: bnds
       in
       `Assoc bnds
    : target_parameters__step_function_state_machine_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_target_parameters__step_function_state_machine_parameters

[@@@deriving.end]

type target_parameters = {
  input_template : string prop option; [@option]
  batch_job_parameters :
    target_parameters__batch_job_parameters list;
  cloudwatch_logs_parameters :
    target_parameters__cloudwatch_logs_parameters list;
  ecs_task_parameters : target_parameters__ecs_task_parameters list;
  eventbridge_event_bus_parameters :
    target_parameters__eventbridge_event_bus_parameters list;
  http_parameters : target_parameters__http_parameters list;
  kinesis_stream_parameters :
    target_parameters__kinesis_stream_parameters list;
  lambda_function_parameters :
    target_parameters__lambda_function_parameters list;
  redshift_data_parameters :
    target_parameters__redshift_data_parameters list;
  sagemaker_pipeline_parameters :
    target_parameters__sagemaker_pipeline_parameters list;
  sqs_queue_parameters :
    target_parameters__sqs_queue_parameters list;
  step_function_state_machine_parameters :
    target_parameters__step_function_state_machine_parameters list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target_parameters) -> ()

let yojson_of_target_parameters =
  (function
   | {
       input_template = v_input_template;
       batch_job_parameters = v_batch_job_parameters;
       cloudwatch_logs_parameters = v_cloudwatch_logs_parameters;
       ecs_task_parameters = v_ecs_task_parameters;
       eventbridge_event_bus_parameters =
         v_eventbridge_event_bus_parameters;
       http_parameters = v_http_parameters;
       kinesis_stream_parameters = v_kinesis_stream_parameters;
       lambda_function_parameters = v_lambda_function_parameters;
       redshift_data_parameters = v_redshift_data_parameters;
       sagemaker_pipeline_parameters =
         v_sagemaker_pipeline_parameters;
       sqs_queue_parameters = v_sqs_queue_parameters;
       step_function_state_machine_parameters =
         v_step_function_state_machine_parameters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_target_parameters__step_function_state_machine_parameters
             v_step_function_state_machine_parameters
         in
         ("step_function_state_machine_parameters", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_target_parameters__sqs_queue_parameters
             v_sqs_queue_parameters
         in
         ("sqs_queue_parameters", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_target_parameters__sagemaker_pipeline_parameters
             v_sagemaker_pipeline_parameters
         in
         ("sagemaker_pipeline_parameters", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_target_parameters__redshift_data_parameters
             v_redshift_data_parameters
         in
         ("redshift_data_parameters", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_target_parameters__lambda_function_parameters
             v_lambda_function_parameters
         in
         ("lambda_function_parameters", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_target_parameters__kinesis_stream_parameters
             v_kinesis_stream_parameters
         in
         ("kinesis_stream_parameters", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_target_parameters__http_parameters
             v_http_parameters
         in
         ("http_parameters", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_target_parameters__eventbridge_event_bus_parameters
             v_eventbridge_event_bus_parameters
         in
         ("eventbridge_event_bus_parameters", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_target_parameters__ecs_task_parameters
             v_ecs_task_parameters
         in
         ("ecs_task_parameters", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_target_parameters__cloudwatch_logs_parameters
             v_cloudwatch_logs_parameters
         in
         ("cloudwatch_logs_parameters", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_target_parameters__batch_job_parameters
             v_batch_job_parameters
         in
         ("batch_job_parameters", arg) :: bnds
       in
       let bnds =
         match v_input_template with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "input_template", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : target_parameters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_parameters

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_pipes_pipe = {
  description : string prop option; [@option]
  desired_state : string prop option; [@option]
  enrichment : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  role_arn : string prop;
  source : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  target : string prop;
  enrichment_parameters : enrichment_parameters list;
  source_parameters : source_parameters list;
  target_parameters : target_parameters list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_pipes_pipe) -> ()

let yojson_of_aws_pipes_pipe =
  (function
   | {
       description = v_description;
       desired_state = v_desired_state;
       enrichment = v_enrichment;
       id = v_id;
       name = v_name;
       name_prefix = v_name_prefix;
       role_arn = v_role_arn;
       source = v_source;
       tags = v_tags;
       tags_all = v_tags_all;
       target = v_target;
       enrichment_parameters = v_enrichment_parameters;
       source_parameters = v_source_parameters;
       target_parameters = v_target_parameters;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_target_parameters
             v_target_parameters
         in
         ("target_parameters", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_source_parameters
             v_source_parameters
         in
         ("source_parameters", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_enrichment_parameters
             v_enrichment_parameters
         in
         ("enrichment_parameters", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target in
         ("target", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_source in
         ("source", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
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
         match v_enrichment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "enrichment", arg in
             bnd :: bnds
       in
       let bnds =
         match v_desired_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "desired_state", arg in
             bnd :: bnds
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
    : aws_pipes_pipe -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_pipes_pipe

[@@@deriving.end]

let enrichment_parameters__http_parameters ?header_parameters
    ?path_parameter_values ?query_string_parameters () :
    enrichment_parameters__http_parameters =
  {
    header_parameters;
    path_parameter_values;
    query_string_parameters;
  }

let enrichment_parameters ?input_template ~http_parameters () :
    enrichment_parameters =
  { input_template; http_parameters }

let source_parameters__activemq_broker_parameters__credentials
    ~basic_auth () :
    source_parameters__activemq_broker_parameters__credentials =
  { basic_auth }

let source_parameters__activemq_broker_parameters ?batch_size
    ?maximum_batching_window_in_seconds ~queue_name ~credentials () :
    source_parameters__activemq_broker_parameters =
  {
    batch_size;
    maximum_batching_window_in_seconds;
    queue_name;
    credentials;
  }

let source_parameters__dynamodb_stream_parameters__dead_letter_config
    ?arn () :
    source_parameters__dynamodb_stream_parameters__dead_letter_config
    =
  { arn }

let source_parameters__dynamodb_stream_parameters ?batch_size
    ?maximum_batching_window_in_seconds
    ?maximum_record_age_in_seconds ?maximum_retry_attempts
    ?on_partial_batch_item_failure ?parallelization_factor
    ~starting_position ~dead_letter_config () :
    source_parameters__dynamodb_stream_parameters =
  {
    batch_size;
    maximum_batching_window_in_seconds;
    maximum_record_age_in_seconds;
    maximum_retry_attempts;
    on_partial_batch_item_failure;
    parallelization_factor;
    starting_position;
    dead_letter_config;
  }

let source_parameters__filter_criteria__filter ~pattern () :
    source_parameters__filter_criteria__filter =
  { pattern }

let source_parameters__filter_criteria ~filter () :
    source_parameters__filter_criteria =
  { filter }

let source_parameters__kinesis_stream_parameters__dead_letter_config
    ?arn () :
    source_parameters__kinesis_stream_parameters__dead_letter_config
    =
  { arn }

let source_parameters__kinesis_stream_parameters ?batch_size
    ?maximum_batching_window_in_seconds
    ?maximum_record_age_in_seconds ?maximum_retry_attempts
    ?on_partial_batch_item_failure ?parallelization_factor
    ?starting_position_timestamp ~starting_position
    ~dead_letter_config () :
    source_parameters__kinesis_stream_parameters =
  {
    batch_size;
    maximum_batching_window_in_seconds;
    maximum_record_age_in_seconds;
    maximum_retry_attempts;
    on_partial_batch_item_failure;
    parallelization_factor;
    starting_position;
    starting_position_timestamp;
    dead_letter_config;
  }

let source_parameters__managed_streaming_kafka_parameters__credentials
    ?client_certificate_tls_auth ?sasl_scram_512_auth () :
    source_parameters__managed_streaming_kafka_parameters__credentials
    =
  { client_certificate_tls_auth; sasl_scram_512_auth }

let source_parameters__managed_streaming_kafka_parameters ?batch_size
    ?consumer_group_id ?maximum_batching_window_in_seconds
    ?starting_position ~topic_name ~credentials () :
    source_parameters__managed_streaming_kafka_parameters =
  {
    batch_size;
    consumer_group_id;
    maximum_batching_window_in_seconds;
    starting_position;
    topic_name;
    credentials;
  }

let source_parameters__rabbitmq_broker_parameters__credentials
    ~basic_auth () :
    source_parameters__rabbitmq_broker_parameters__credentials =
  { basic_auth }

let source_parameters__rabbitmq_broker_parameters ?batch_size
    ?maximum_batching_window_in_seconds ?virtual_host ~queue_name
    ~credentials () : source_parameters__rabbitmq_broker_parameters =
  {
    batch_size;
    maximum_batching_window_in_seconds;
    queue_name;
    virtual_host;
    credentials;
  }

let source_parameters__self_managed_kafka_parameters__credentials
    ?client_certificate_tls_auth ?sasl_scram_256_auth
    ?sasl_scram_512_auth ~basic_auth () :
    source_parameters__self_managed_kafka_parameters__credentials =
  {
    basic_auth;
    client_certificate_tls_auth;
    sasl_scram_256_auth;
    sasl_scram_512_auth;
  }

let source_parameters__self_managed_kafka_parameters__vpc
    ?security_groups ?subnets () :
    source_parameters__self_managed_kafka_parameters__vpc =
  { security_groups; subnets }

let source_parameters__self_managed_kafka_parameters
    ?additional_bootstrap_servers ?batch_size ?consumer_group_id
    ?maximum_batching_window_in_seconds ?server_root_ca_certificate
    ?starting_position ~topic_name ~credentials ~vpc () :
    source_parameters__self_managed_kafka_parameters =
  {
    additional_bootstrap_servers;
    batch_size;
    consumer_group_id;
    maximum_batching_window_in_seconds;
    server_root_ca_certificate;
    starting_position;
    topic_name;
    credentials;
    vpc;
  }

let source_parameters__sqs_queue_parameters ?batch_size
    ?maximum_batching_window_in_seconds () :
    source_parameters__sqs_queue_parameters =
  { batch_size; maximum_batching_window_in_seconds }

let source_parameters ~activemq_broker_parameters
    ~dynamodb_stream_parameters ~filter_criteria
    ~kinesis_stream_parameters ~managed_streaming_kafka_parameters
    ~rabbitmq_broker_parameters ~self_managed_kafka_parameters
    ~sqs_queue_parameters () : source_parameters =
  {
    activemq_broker_parameters;
    dynamodb_stream_parameters;
    filter_criteria;
    kinesis_stream_parameters;
    managed_streaming_kafka_parameters;
    rabbitmq_broker_parameters;
    self_managed_kafka_parameters;
    sqs_queue_parameters;
  }

let target_parameters__batch_job_parameters__array_properties ?size
    () : target_parameters__batch_job_parameters__array_properties =
  { size }

let target_parameters__batch_job_parameters__container_overrides__environment
    ?name ?value () :
    target_parameters__batch_job_parameters__container_overrides__environment
    =
  { name; value }

let target_parameters__batch_job_parameters__container_overrides__resource_requirement
    ~type_ ~value () :
    target_parameters__batch_job_parameters__container_overrides__resource_requirement
    =
  { type_; value }

let target_parameters__batch_job_parameters__container_overrides
    ?command ?instance_type ~environment ~resource_requirement () :
    target_parameters__batch_job_parameters__container_overrides =
  { command; instance_type; environment; resource_requirement }

let target_parameters__batch_job_parameters__depends_on ?job_id
    ?type_ () : target_parameters__batch_job_parameters__depends_on =
  { job_id; type_ }

let target_parameters__batch_job_parameters__retry_strategy ?attempts
    () : target_parameters__batch_job_parameters__retry_strategy =
  { attempts }

let target_parameters__batch_job_parameters ?parameters
    ~job_definition ~job_name ~array_properties ~container_overrides
    ~depends_on ~retry_strategy () :
    target_parameters__batch_job_parameters =
  {
    job_definition;
    job_name;
    parameters;
    array_properties;
    container_overrides;
    depends_on;
    retry_strategy;
  }

let target_parameters__cloudwatch_logs_parameters ?log_stream_name
    ?timestamp () : target_parameters__cloudwatch_logs_parameters =
  { log_stream_name; timestamp }

let target_parameters__ecs_task_parameters__capacity_provider_strategy
    ?base ?weight ~capacity_provider () :
    target_parameters__ecs_task_parameters__capacity_provider_strategy
    =
  { base; capacity_provider; weight }

let target_parameters__ecs_task_parameters__network_configuration__aws_vpc_configuration
    ?assign_public_ip ?security_groups ?subnets () :
    target_parameters__ecs_task_parameters__network_configuration__aws_vpc_configuration
    =
  { assign_public_ip; security_groups; subnets }

let target_parameters__ecs_task_parameters__network_configuration
    ~aws_vpc_configuration () :
    target_parameters__ecs_task_parameters__network_configuration =
  { aws_vpc_configuration }

let target_parameters__ecs_task_parameters__overrides__container_override__environment
    ?name ?value () :
    target_parameters__ecs_task_parameters__overrides__container_override__environment
    =
  { name; value }

let target_parameters__ecs_task_parameters__overrides__container_override__environment_file
    ~type_ ~value () :
    target_parameters__ecs_task_parameters__overrides__container_override__environment_file
    =
  { type_; value }

let target_parameters__ecs_task_parameters__overrides__container_override__resource_requirement
    ~type_ ~value () :
    target_parameters__ecs_task_parameters__overrides__container_override__resource_requirement
    =
  { type_; value }

let target_parameters__ecs_task_parameters__overrides__container_override
    ?command ?cpu ?memory ?memory_reservation ?name ~environment
    ~environment_file ~resource_requirement () :
    target_parameters__ecs_task_parameters__overrides__container_override
    =
  {
    command;
    cpu;
    memory;
    memory_reservation;
    name;
    environment;
    environment_file;
    resource_requirement;
  }

let target_parameters__ecs_task_parameters__overrides__ephemeral_storage
    ~size_in_gib () :
    target_parameters__ecs_task_parameters__overrides__ephemeral_storage
    =
  { size_in_gib }

let target_parameters__ecs_task_parameters__overrides__inference_accelerator_override
    ?device_name ?device_type () :
    target_parameters__ecs_task_parameters__overrides__inference_accelerator_override
    =
  { device_name; device_type }

let target_parameters__ecs_task_parameters__overrides ?cpu
    ?execution_role_arn ?memory ?task_role_arn ~container_override
    ~ephemeral_storage ~inference_accelerator_override () :
    target_parameters__ecs_task_parameters__overrides =
  {
    cpu;
    execution_role_arn;
    memory;
    task_role_arn;
    container_override;
    ephemeral_storage;
    inference_accelerator_override;
  }

let target_parameters__ecs_task_parameters__placement_constraint
    ?expression ?type_ () :
    target_parameters__ecs_task_parameters__placement_constraint =
  { expression; type_ }

let target_parameters__ecs_task_parameters__placement_strategy ?field
    ?type_ () :
    target_parameters__ecs_task_parameters__placement_strategy =
  { field; type_ }

let target_parameters__ecs_task_parameters ?enable_ecs_managed_tags
    ?enable_execute_command ?group ?launch_type ?platform_version
    ?propagate_tags ?reference_id ?tags ?task_count
    ~task_definition_arn ~capacity_provider_strategy
    ~network_configuration ~overrides ~placement_constraint
    ~placement_strategy () : target_parameters__ecs_task_parameters =
  {
    enable_ecs_managed_tags;
    enable_execute_command;
    group;
    launch_type;
    platform_version;
    propagate_tags;
    reference_id;
    tags;
    task_count;
    task_definition_arn;
    capacity_provider_strategy;
    network_configuration;
    overrides;
    placement_constraint;
    placement_strategy;
  }

let target_parameters__eventbridge_event_bus_parameters ?detail_type
    ?endpoint_id ?resources ?source ?time () :
    target_parameters__eventbridge_event_bus_parameters =
  { detail_type; endpoint_id; resources; source; time }

let target_parameters__http_parameters ?header_parameters
    ?path_parameter_values ?query_string_parameters () :
    target_parameters__http_parameters =
  {
    header_parameters;
    path_parameter_values;
    query_string_parameters;
  }

let target_parameters__kinesis_stream_parameters ~partition_key () :
    target_parameters__kinesis_stream_parameters =
  { partition_key }

let target_parameters__lambda_function_parameters ~invocation_type ()
    : target_parameters__lambda_function_parameters =
  { invocation_type }

let target_parameters__redshift_data_parameters ?db_user
    ?secret_manager_arn ?statement_name ?with_event ~database ~sqls
    () : target_parameters__redshift_data_parameters =
  {
    database;
    db_user;
    secret_manager_arn;
    sqls;
    statement_name;
    with_event;
  }

let target_parameters__sagemaker_pipeline_parameters__pipeline_parameter
    ~name ~value () :
    target_parameters__sagemaker_pipeline_parameters__pipeline_parameter
    =
  { name; value }

let target_parameters__sagemaker_pipeline_parameters
    ~pipeline_parameter () :
    target_parameters__sagemaker_pipeline_parameters =
  { pipeline_parameter }

let target_parameters__sqs_queue_parameters ?message_deduplication_id
    ?message_group_id () : target_parameters__sqs_queue_parameters =
  { message_deduplication_id; message_group_id }

let target_parameters__step_function_state_machine_parameters
    ~invocation_type () :
    target_parameters__step_function_state_machine_parameters =
  { invocation_type }

let target_parameters ?input_template ~batch_job_parameters
    ~cloudwatch_logs_parameters ~ecs_task_parameters
    ~eventbridge_event_bus_parameters ~http_parameters
    ~kinesis_stream_parameters ~lambda_function_parameters
    ~redshift_data_parameters ~sagemaker_pipeline_parameters
    ~sqs_queue_parameters ~step_function_state_machine_parameters ()
    : target_parameters =
  {
    input_template;
    batch_job_parameters;
    cloudwatch_logs_parameters;
    ecs_task_parameters;
    eventbridge_event_bus_parameters;
    http_parameters;
    kinesis_stream_parameters;
    lambda_function_parameters;
    redshift_data_parameters;
    sagemaker_pipeline_parameters;
    sqs_queue_parameters;
    step_function_state_machine_parameters;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_pipes_pipe ?description ?desired_state ?enrichment ?id ?name
    ?name_prefix ?tags ?tags_all ?timeouts ~role_arn ~source ~target
    ~enrichment_parameters ~source_parameters ~target_parameters () :
    aws_pipes_pipe =
  {
    description;
    desired_state;
    enrichment;
    id;
    name;
    name_prefix;
    role_arn;
    source;
    tags;
    tags_all;
    target;
    enrichment_parameters;
    source_parameters;
    target_parameters;
    timeouts;
  }

type t = {
  arn : string prop;
  description : string prop;
  desired_state : string prop;
  enrichment : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  role_arn : string prop;
  source : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target : string prop;
}

let make ?description ?desired_state ?enrichment ?id ?name
    ?name_prefix ?tags ?tags_all ?timeouts ~role_arn ~source ~target
    ~enrichment_parameters ~source_parameters ~target_parameters __id
    =
  let __type = "aws_pipes_pipe" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       desired_state = Prop.computed __type __id "desired_state";
       enrichment = Prop.computed __type __id "enrichment";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       role_arn = Prop.computed __type __id "role_arn";
       source = Prop.computed __type __id "source";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       target = Prop.computed __type __id "target";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_pipes_pipe
        (aws_pipes_pipe ?description ?desired_state ?enrichment ?id
           ?name ?name_prefix ?tags ?tags_all ?timeouts ~role_arn
           ~source ~target ~enrichment_parameters ~source_parameters
           ~target_parameters ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?desired_state ?enrichment ?id
    ?name ?name_prefix ?tags ?tags_all ?timeouts ~role_arn ~source
    ~target ~enrichment_parameters ~source_parameters
    ~target_parameters __id =
  let (r : _ Tf_core.resource) =
    make ?description ?desired_state ?enrichment ?id ?name
      ?name_prefix ?tags ?tags_all ?timeouts ~role_arn ~source
      ~target ~enrichment_parameters ~source_parameters
      ~target_parameters __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

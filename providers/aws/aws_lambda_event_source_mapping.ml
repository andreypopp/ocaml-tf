(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type amazon_managed_kafka_event_source_config = {
  consumer_group_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : amazon_managed_kafka_event_source_config) -> ()

let yojson_of_amazon_managed_kafka_event_source_config =
  (function
   | { consumer_group_id = v_consumer_group_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_consumer_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "consumer_group_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : amazon_managed_kafka_event_source_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_amazon_managed_kafka_event_source_config

[@@@deriving.end]

type destination_config__on_failure = {
  destination_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination_config__on_failure) -> ()

let yojson_of_destination_config__on_failure =
  (function
   | { destination_arn = v_destination_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_arn
         in
         ("destination_arn", arg) :: bnds
       in
       `Assoc bnds
    : destination_config__on_failure ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination_config__on_failure

[@@@deriving.end]

type destination_config = {
  on_failure : destination_config__on_failure list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination_config) -> ()

let yojson_of_destination_config =
  (function
   | { on_failure = v_on_failure } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_on_failure then bnds
         else
           let arg =
             (yojson_of_list yojson_of_destination_config__on_failure)
               v_on_failure
           in
           let bnd = "on_failure", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : destination_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination_config

[@@@deriving.end]

type document_db_event_source_config = {
  collection_name : string prop option; [@option]
  database_name : string prop;
  full_document : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : document_db_event_source_config) -> ()

let yojson_of_document_db_event_source_config =
  (function
   | {
       collection_name = v_collection_name;
       database_name = v_database_name;
       full_document = v_full_document;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_full_document with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "full_document", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       let bnds =
         match v_collection_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "collection_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : document_db_event_source_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_document_db_event_source_config

[@@@deriving.end]

type filter_criteria__filter = {
  pattern : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter_criteria__filter) -> ()

let yojson_of_filter_criteria__filter =
  (function
   | { pattern = v_pattern } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_pattern with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pattern", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filter_criteria__filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter_criteria__filter

[@@@deriving.end]

type filter_criteria = {
  filter : filter_criteria__filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter_criteria) -> ()

let yojson_of_filter_criteria =
  (function
   | { filter = v_filter } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_filter then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filter_criteria__filter)
               v_filter
           in
           let bnd = "filter", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : filter_criteria -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter_criteria

[@@@deriving.end]

type scaling_config = {
  maximum_concurrency : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scaling_config) -> ()

let yojson_of_scaling_config =
  (function
   | { maximum_concurrency = v_maximum_concurrency } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_maximum_concurrency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_concurrency", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : scaling_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scaling_config

[@@@deriving.end]

type self_managed_event_source = {
  endpoints : string prop Tf_core.assoc;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : self_managed_event_source) -> ()

let yojson_of_self_managed_event_source =
  (function
   | { endpoints = v_endpoints } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_endpoints
         in
         ("endpoints", arg) :: bnds
       in
       `Assoc bnds
    : self_managed_event_source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_self_managed_event_source

[@@@deriving.end]

type self_managed_kafka_event_source_config = {
  consumer_group_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : self_managed_kafka_event_source_config) -> ()

let yojson_of_self_managed_kafka_event_source_config =
  (function
   | { consumer_group_id = v_consumer_group_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_consumer_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "consumer_group_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : self_managed_kafka_event_source_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_self_managed_kafka_event_source_config

[@@@deriving.end]

type source_access_configuration = {
  type_ : string prop; [@key "type"]
  uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source_access_configuration) -> ()

let yojson_of_source_access_configuration =
  (function
   | { type_ = v_type_; uri = v_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : source_access_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_access_configuration

[@@@deriving.end]

type aws_lambda_event_source_mapping = {
  batch_size : float prop option; [@option]
  bisect_batch_on_function_error : bool prop option; [@option]
  enabled : bool prop option; [@option]
  event_source_arn : string prop option; [@option]
  function_name : string prop;
  function_response_types : string prop list option; [@option]
  id : string prop option; [@option]
  maximum_batching_window_in_seconds : float prop option; [@option]
  maximum_record_age_in_seconds : float prop option; [@option]
  maximum_retry_attempts : float prop option; [@option]
  parallelization_factor : float prop option; [@option]
  queues : string prop list option; [@option]
  starting_position : string prop option; [@option]
  starting_position_timestamp : string prop option; [@option]
  topics : string prop list option; [@option]
  tumbling_window_in_seconds : float prop option; [@option]
  amazon_managed_kafka_event_source_config :
    amazon_managed_kafka_event_source_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  destination_config : destination_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  document_db_event_source_config :
    document_db_event_source_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  filter_criteria : filter_criteria list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  scaling_config : scaling_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  self_managed_event_source : self_managed_event_source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  self_managed_kafka_event_source_config :
    self_managed_kafka_event_source_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source_access_configuration : source_access_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lambda_event_source_mapping) -> ()

let yojson_of_aws_lambda_event_source_mapping =
  (function
   | {
       batch_size = v_batch_size;
       bisect_batch_on_function_error =
         v_bisect_batch_on_function_error;
       enabled = v_enabled;
       event_source_arn = v_event_source_arn;
       function_name = v_function_name;
       function_response_types = v_function_response_types;
       id = v_id;
       maximum_batching_window_in_seconds =
         v_maximum_batching_window_in_seconds;
       maximum_record_age_in_seconds =
         v_maximum_record_age_in_seconds;
       maximum_retry_attempts = v_maximum_retry_attempts;
       parallelization_factor = v_parallelization_factor;
       queues = v_queues;
       starting_position = v_starting_position;
       starting_position_timestamp = v_starting_position_timestamp;
       topics = v_topics;
       tumbling_window_in_seconds = v_tumbling_window_in_seconds;
       amazon_managed_kafka_event_source_config =
         v_amazon_managed_kafka_event_source_config;
       destination_config = v_destination_config;
       document_db_event_source_config =
         v_document_db_event_source_config;
       filter_criteria = v_filter_criteria;
       scaling_config = v_scaling_config;
       self_managed_event_source = v_self_managed_event_source;
       self_managed_kafka_event_source_config =
         v_self_managed_kafka_event_source_config;
       source_access_configuration = v_source_access_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_source_access_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_source_access_configuration)
               v_source_access_configuration
           in
           let bnd = "source_access_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_self_managed_kafka_event_source_config
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_self_managed_kafka_event_source_config)
               v_self_managed_kafka_event_source_config
           in
           let bnd = "self_managed_kafka_event_source_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_self_managed_event_source then bnds
         else
           let arg =
             (yojson_of_list yojson_of_self_managed_event_source)
               v_self_managed_event_source
           in
           let bnd = "self_managed_event_source", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_scaling_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_scaling_config)
               v_scaling_config
           in
           let bnd = "scaling_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_filter_criteria then bnds
         else
           let arg =
             (yojson_of_list yojson_of_filter_criteria)
               v_filter_criteria
           in
           let bnd = "filter_criteria", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_document_db_event_source_config then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_document_db_event_source_config)
               v_document_db_event_source_config
           in
           let bnd = "document_db_event_source_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_destination_config)
               v_destination_config
           in
           let bnd = "destination_config", arg in
           bnd :: bnds
       in
       let bnds =
         if
           Stdlib.( = ) [] v_amazon_managed_kafka_event_source_config
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_amazon_managed_kafka_event_source_config)
               v_amazon_managed_kafka_event_source_config
           in
           let bnd =
             "amazon_managed_kafka_event_source_config", arg
           in
           bnd :: bnds
       in
       let bnds =
         match v_tumbling_window_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "tumbling_window_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_topics with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "topics", arg in
             bnd :: bnds
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
         match v_starting_position with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "starting_position", arg in
             bnd :: bnds
       in
       let bnds =
         match v_queues with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "queues", arg in
             bnd :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_function_response_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "function_response_types", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_function_name in
         ("function_name", arg) :: bnds
       in
       let bnds =
         match v_event_source_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event_source_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bisect_batch_on_function_error with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "bisect_batch_on_function_error", arg in
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
    : aws_lambda_event_source_mapping ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lambda_event_source_mapping

[@@@deriving.end]

let amazon_managed_kafka_event_source_config ?consumer_group_id () :
    amazon_managed_kafka_event_source_config =
  { consumer_group_id }

let destination_config__on_failure ~destination_arn () :
    destination_config__on_failure =
  { destination_arn }

let destination_config ?(on_failure = []) () : destination_config =
  { on_failure }

let document_db_event_source_config ?collection_name ?full_document
    ~database_name () : document_db_event_source_config =
  { collection_name; database_name; full_document }

let filter_criteria__filter ?pattern () : filter_criteria__filter =
  { pattern }

let filter_criteria ~filter () : filter_criteria = { filter }

let scaling_config ?maximum_concurrency () : scaling_config =
  { maximum_concurrency }

let self_managed_event_source ~endpoints () :
    self_managed_event_source =
  { endpoints }

let self_managed_kafka_event_source_config ?consumer_group_id () :
    self_managed_kafka_event_source_config =
  { consumer_group_id }

let source_access_configuration ~type_ ~uri () :
    source_access_configuration =
  { type_; uri }

let aws_lambda_event_source_mapping ?batch_size
    ?bisect_batch_on_function_error ?enabled ?event_source_arn
    ?function_response_types ?id ?maximum_batching_window_in_seconds
    ?maximum_record_age_in_seconds ?maximum_retry_attempts
    ?parallelization_factor ?queues ?starting_position
    ?starting_position_timestamp ?topics ?tumbling_window_in_seconds
    ?(amazon_managed_kafka_event_source_config = [])
    ?(destination_config = [])
    ?(document_db_event_source_config = []) ?(filter_criteria = [])
    ?(scaling_config = []) ?(self_managed_event_source = [])
    ?(self_managed_kafka_event_source_config = []) ~function_name
    ~source_access_configuration () : aws_lambda_event_source_mapping
    =
  {
    batch_size;
    bisect_batch_on_function_error;
    enabled;
    event_source_arn;
    function_name;
    function_response_types;
    id;
    maximum_batching_window_in_seconds;
    maximum_record_age_in_seconds;
    maximum_retry_attempts;
    parallelization_factor;
    queues;
    starting_position;
    starting_position_timestamp;
    topics;
    tumbling_window_in_seconds;
    amazon_managed_kafka_event_source_config;
    destination_config;
    document_db_event_source_config;
    filter_criteria;
    scaling_config;
    self_managed_event_source;
    self_managed_kafka_event_source_config;
    source_access_configuration;
  }

type t = {
  tf_name : string;
  batch_size : float prop;
  bisect_batch_on_function_error : bool prop;
  enabled : bool prop;
  event_source_arn : string prop;
  function_arn : string prop;
  function_name : string prop;
  function_response_types : string list prop;
  id : string prop;
  last_modified : string prop;
  last_processing_result : string prop;
  maximum_batching_window_in_seconds : float prop;
  maximum_record_age_in_seconds : float prop;
  maximum_retry_attempts : float prop;
  parallelization_factor : float prop;
  queues : string list prop;
  starting_position : string prop;
  starting_position_timestamp : string prop;
  state : string prop;
  state_transition_reason : string prop;
  topics : string list prop;
  tumbling_window_in_seconds : float prop;
  uuid : string prop;
}

let make ?batch_size ?bisect_batch_on_function_error ?enabled
    ?event_source_arn ?function_response_types ?id
    ?maximum_batching_window_in_seconds
    ?maximum_record_age_in_seconds ?maximum_retry_attempts
    ?parallelization_factor ?queues ?starting_position
    ?starting_position_timestamp ?topics ?tumbling_window_in_seconds
    ?(amazon_managed_kafka_event_source_config = [])
    ?(destination_config = [])
    ?(document_db_event_source_config = []) ?(filter_criteria = [])
    ?(scaling_config = []) ?(self_managed_event_source = [])
    ?(self_managed_kafka_event_source_config = []) ~function_name
    ~source_access_configuration __id =
  let __type = "aws_lambda_event_source_mapping" in
  let __attrs =
    ({
       tf_name = __id;
       batch_size = Prop.computed __type __id "batch_size";
       bisect_batch_on_function_error =
         Prop.computed __type __id "bisect_batch_on_function_error";
       enabled = Prop.computed __type __id "enabled";
       event_source_arn =
         Prop.computed __type __id "event_source_arn";
       function_arn = Prop.computed __type __id "function_arn";
       function_name = Prop.computed __type __id "function_name";
       function_response_types =
         Prop.computed __type __id "function_response_types";
       id = Prop.computed __type __id "id";
       last_modified = Prop.computed __type __id "last_modified";
       last_processing_result =
         Prop.computed __type __id "last_processing_result";
       maximum_batching_window_in_seconds =
         Prop.computed __type __id
           "maximum_batching_window_in_seconds";
       maximum_record_age_in_seconds =
         Prop.computed __type __id "maximum_record_age_in_seconds";
       maximum_retry_attempts =
         Prop.computed __type __id "maximum_retry_attempts";
       parallelization_factor =
         Prop.computed __type __id "parallelization_factor";
       queues = Prop.computed __type __id "queues";
       starting_position =
         Prop.computed __type __id "starting_position";
       starting_position_timestamp =
         Prop.computed __type __id "starting_position_timestamp";
       state = Prop.computed __type __id "state";
       state_transition_reason =
         Prop.computed __type __id "state_transition_reason";
       topics = Prop.computed __type __id "topics";
       tumbling_window_in_seconds =
         Prop.computed __type __id "tumbling_window_in_seconds";
       uuid = Prop.computed __type __id "uuid";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lambda_event_source_mapping
        (aws_lambda_event_source_mapping ?batch_size
           ?bisect_batch_on_function_error ?enabled ?event_source_arn
           ?function_response_types ?id
           ?maximum_batching_window_in_seconds
           ?maximum_record_age_in_seconds ?maximum_retry_attempts
           ?parallelization_factor ?queues ?starting_position
           ?starting_position_timestamp ?topics
           ?tumbling_window_in_seconds
           ~amazon_managed_kafka_event_source_config
           ~destination_config ~document_db_event_source_config
           ~filter_criteria ~scaling_config
           ~self_managed_event_source
           ~self_managed_kafka_event_source_config ~function_name
           ~source_access_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?batch_size ?bisect_batch_on_function_error
    ?enabled ?event_source_arn ?function_response_types ?id
    ?maximum_batching_window_in_seconds
    ?maximum_record_age_in_seconds ?maximum_retry_attempts
    ?parallelization_factor ?queues ?starting_position
    ?starting_position_timestamp ?topics ?tumbling_window_in_seconds
    ?(amazon_managed_kafka_event_source_config = [])
    ?(destination_config = [])
    ?(document_db_event_source_config = []) ?(filter_criteria = [])
    ?(scaling_config = []) ?(self_managed_event_source = [])
    ?(self_managed_kafka_event_source_config = []) ~function_name
    ~source_access_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?batch_size ?bisect_batch_on_function_error ?enabled
      ?event_source_arn ?function_response_types ?id
      ?maximum_batching_window_in_seconds
      ?maximum_record_age_in_seconds ?maximum_retry_attempts
      ?parallelization_factor ?queues ?starting_position
      ?starting_position_timestamp ?topics
      ?tumbling_window_in_seconds
      ~amazon_managed_kafka_event_source_config ~destination_config
      ~document_db_event_source_config ~filter_criteria
      ~scaling_config ~self_managed_event_source
      ~self_managed_kafka_event_source_config ~function_name
      ~source_access_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

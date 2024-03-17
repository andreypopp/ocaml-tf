(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lambda_event_source_mapping__amazon_managed_kafka_event_source_config = {
  consumer_group_id : string prop option; [@option]
      (** consumer_group_id *)
}
[@@deriving yojson_of]
(** aws_lambda_event_source_mapping__amazon_managed_kafka_event_source_config *)

type aws_lambda_event_source_mapping__destination_config__on_failure = {
  destination_arn : string prop;  (** destination_arn *)
}
[@@deriving yojson_of]
(** aws_lambda_event_source_mapping__destination_config__on_failure *)

type aws_lambda_event_source_mapping__destination_config = {
  on_failure :
    aws_lambda_event_source_mapping__destination_config__on_failure
    list;
}
[@@deriving yojson_of]
(** aws_lambda_event_source_mapping__destination_config *)

type aws_lambda_event_source_mapping__document_db_event_source_config = {
  collection_name : string prop option; [@option]
      (** collection_name *)
  database_name : string prop;  (** database_name *)
  full_document : string prop option; [@option]  (** full_document *)
}
[@@deriving yojson_of]
(** aws_lambda_event_source_mapping__document_db_event_source_config *)

type aws_lambda_event_source_mapping__filter_criteria__filter = {
  pattern : string prop option; [@option]  (** pattern *)
}
[@@deriving yojson_of]
(** aws_lambda_event_source_mapping__filter_criteria__filter *)

type aws_lambda_event_source_mapping__filter_criteria = {
  filter :
    aws_lambda_event_source_mapping__filter_criteria__filter list;
}
[@@deriving yojson_of]
(** aws_lambda_event_source_mapping__filter_criteria *)

type aws_lambda_event_source_mapping__scaling_config = {
  maximum_concurrency : float prop option; [@option]
      (** maximum_concurrency *)
}
[@@deriving yojson_of]
(** aws_lambda_event_source_mapping__scaling_config *)

type aws_lambda_event_source_mapping__self_managed_event_source = {
  endpoints : (string * string prop) list;  (** endpoints *)
}
[@@deriving yojson_of]
(** aws_lambda_event_source_mapping__self_managed_event_source *)

type aws_lambda_event_source_mapping__self_managed_kafka_event_source_config = {
  consumer_group_id : string prop option; [@option]
      (** consumer_group_id *)
}
[@@deriving yojson_of]
(** aws_lambda_event_source_mapping__self_managed_kafka_event_source_config *)

type aws_lambda_event_source_mapping__source_access_configuration = {
  type_ : string prop; [@key "type"]  (** type *)
  uri : string prop;  (** uri *)
}
[@@deriving yojson_of]
(** aws_lambda_event_source_mapping__source_access_configuration *)

type aws_lambda_event_source_mapping = {
  batch_size : float prop option; [@option]  (** batch_size *)
  bisect_batch_on_function_error : bool prop option; [@option]
      (** bisect_batch_on_function_error *)
  enabled : bool prop option; [@option]  (** enabled *)
  event_source_arn : string prop option; [@option]
      (** event_source_arn *)
  function_name : string prop;  (** function_name *)
  function_response_types : string prop list option; [@option]
      (** function_response_types *)
  id : string prop option; [@option]  (** id *)
  maximum_batching_window_in_seconds : float prop option; [@option]
      (** maximum_batching_window_in_seconds *)
  maximum_record_age_in_seconds : float prop option; [@option]
      (** maximum_record_age_in_seconds *)
  maximum_retry_attempts : float prop option; [@option]
      (** maximum_retry_attempts *)
  parallelization_factor : float prop option; [@option]
      (** parallelization_factor *)
  queues : string prop list option; [@option]  (** queues *)
  starting_position : string prop option; [@option]
      (** starting_position *)
  starting_position_timestamp : string prop option; [@option]
      (** starting_position_timestamp *)
  topics : string prop list option; [@option]  (** topics *)
  tumbling_window_in_seconds : float prop option; [@option]
      (** tumbling_window_in_seconds *)
  amazon_managed_kafka_event_source_config :
    aws_lambda_event_source_mapping__amazon_managed_kafka_event_source_config
    list;
  destination_config :
    aws_lambda_event_source_mapping__destination_config list;
  document_db_event_source_config :
    aws_lambda_event_source_mapping__document_db_event_source_config
    list;
  filter_criteria :
    aws_lambda_event_source_mapping__filter_criteria list;
  scaling_config :
    aws_lambda_event_source_mapping__scaling_config list;
  self_managed_event_source :
    aws_lambda_event_source_mapping__self_managed_event_source list;
  self_managed_kafka_event_source_config :
    aws_lambda_event_source_mapping__self_managed_kafka_event_source_config
    list;
  source_access_configuration :
    aws_lambda_event_source_mapping__source_access_configuration list;
}
[@@deriving yojson_of]
(** aws_lambda_event_source_mapping *)

type t = {
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

let aws_lambda_event_source_mapping ?batch_size
    ?bisect_batch_on_function_error ?enabled ?event_source_arn
    ?function_response_types ?id ?maximum_batching_window_in_seconds
    ?maximum_record_age_in_seconds ?maximum_retry_attempts
    ?parallelization_factor ?queues ?starting_position
    ?starting_position_timestamp ?topics ?tumbling_window_in_seconds
    ~function_name ~amazon_managed_kafka_event_source_config
    ~destination_config ~document_db_event_source_config
    ~filter_criteria ~scaling_config ~self_managed_event_source
    ~self_managed_kafka_event_source_config
    ~source_access_configuration __resource_id =
  let __resource_type = "aws_lambda_event_source_mapping" in
  let __resource =
    ({
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
      : aws_lambda_event_source_mapping)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lambda_event_source_mapping __resource);
  let __resource_attributes =
    ({
       batch_size =
         Prop.computed __resource_type __resource_id "batch_size";
       bisect_batch_on_function_error =
         Prop.computed __resource_type __resource_id
           "bisect_batch_on_function_error";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       event_source_arn =
         Prop.computed __resource_type __resource_id
           "event_source_arn";
       function_arn =
         Prop.computed __resource_type __resource_id "function_arn";
       function_name =
         Prop.computed __resource_type __resource_id "function_name";
       function_response_types =
         Prop.computed __resource_type __resource_id
           "function_response_types";
       id = Prop.computed __resource_type __resource_id "id";
       last_modified =
         Prop.computed __resource_type __resource_id "last_modified";
       last_processing_result =
         Prop.computed __resource_type __resource_id
           "last_processing_result";
       maximum_batching_window_in_seconds =
         Prop.computed __resource_type __resource_id
           "maximum_batching_window_in_seconds";
       maximum_record_age_in_seconds =
         Prop.computed __resource_type __resource_id
           "maximum_record_age_in_seconds";
       maximum_retry_attempts =
         Prop.computed __resource_type __resource_id
           "maximum_retry_attempts";
       parallelization_factor =
         Prop.computed __resource_type __resource_id
           "parallelization_factor";
       queues = Prop.computed __resource_type __resource_id "queues";
       starting_position =
         Prop.computed __resource_type __resource_id
           "starting_position";
       starting_position_timestamp =
         Prop.computed __resource_type __resource_id
           "starting_position_timestamp";
       state = Prop.computed __resource_type __resource_id "state";
       state_transition_reason =
         Prop.computed __resource_type __resource_id
           "state_transition_reason";
       topics = Prop.computed __resource_type __resource_id "topics";
       tumbling_window_in_seconds =
         Prop.computed __resource_type __resource_id
           "tumbling_window_in_seconds";
       uuid = Prop.computed __resource_type __resource_id "uuid";
     }
      : t)
  in
  __resource_attributes

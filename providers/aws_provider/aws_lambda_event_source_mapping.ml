(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lambda_event_source_mapping__amazon_managed_kafka_event_source_config = {
  consumer_group_id : string option; [@option]
      (** consumer_group_id *)
}
[@@deriving yojson_of]
(** aws_lambda_event_source_mapping__amazon_managed_kafka_event_source_config *)

type aws_lambda_event_source_mapping__destination_config__on_failure = {
  destination_arn : string;  (** destination_arn *)
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
  collection_name : string option; [@option]  (** collection_name *)
  database_name : string;  (** database_name *)
  full_document : string option; [@option]  (** full_document *)
}
[@@deriving yojson_of]
(** aws_lambda_event_source_mapping__document_db_event_source_config *)

type aws_lambda_event_source_mapping__filter_criteria__filter = {
  pattern : string option; [@option]  (** pattern *)
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
  maximum_concurrency : float option; [@option]
      (** maximum_concurrency *)
}
[@@deriving yojson_of]
(** aws_lambda_event_source_mapping__scaling_config *)

type aws_lambda_event_source_mapping__self_managed_event_source = {
  endpoints : (string * string) list;  (** endpoints *)
}
[@@deriving yojson_of]
(** aws_lambda_event_source_mapping__self_managed_event_source *)

type aws_lambda_event_source_mapping__self_managed_kafka_event_source_config = {
  consumer_group_id : string option; [@option]
      (** consumer_group_id *)
}
[@@deriving yojson_of]
(** aws_lambda_event_source_mapping__self_managed_kafka_event_source_config *)

type aws_lambda_event_source_mapping__source_access_configuration = {
  type_ : string; [@key "type"]  (** type *)
  uri : string;  (** uri *)
}
[@@deriving yojson_of]
(** aws_lambda_event_source_mapping__source_access_configuration *)

type aws_lambda_event_source_mapping = {
  batch_size : float option; [@option]  (** batch_size *)
  bisect_batch_on_function_error : bool option; [@option]
      (** bisect_batch_on_function_error *)
  enabled : bool option; [@option]  (** enabled *)
  event_source_arn : string option; [@option]
      (** event_source_arn *)
  function_name : string;  (** function_name *)
  function_response_types : string list option; [@option]
      (** function_response_types *)
  maximum_batching_window_in_seconds : float option; [@option]
      (** maximum_batching_window_in_seconds *)
  queues : string list option; [@option]  (** queues *)
  starting_position : string option; [@option]
      (** starting_position *)
  starting_position_timestamp : string option; [@option]
      (** starting_position_timestamp *)
  topics : string list option; [@option]  (** topics *)
  tumbling_window_in_seconds : float option; [@option]
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

let aws_lambda_event_source_mapping ?batch_size
    ?bisect_batch_on_function_error ?enabled ?event_source_arn
    ?function_response_types ?maximum_batching_window_in_seconds
    ?queues ?starting_position ?starting_position_timestamp ?topics
    ?tumbling_window_in_seconds ~function_name
    ~amazon_managed_kafka_event_source_config ~destination_config
    ~document_db_event_source_config ~filter_criteria ~scaling_config
    ~self_managed_event_source
    ~self_managed_kafka_event_source_config
    ~source_access_configuration __resource_id =
  let __resource_type = "aws_lambda_event_source_mapping" in
  let __resource =
    {
      batch_size;
      bisect_batch_on_function_error;
      enabled;
      event_source_arn;
      function_name;
      function_response_types;
      maximum_batching_window_in_seconds;
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lambda_event_source_mapping __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_sagemaker_endpoint__deployment_config__auto_rollback_configuration__alarms = {
  alarm_name : string;  (** alarm_name *)
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint__deployment_config__auto_rollback_configuration__alarms *)

type aws_sagemaker_endpoint__deployment_config__auto_rollback_configuration = {
  alarms :
    aws_sagemaker_endpoint__deployment_config__auto_rollback_configuration__alarms
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint__deployment_config__auto_rollback_configuration *)

type aws_sagemaker_endpoint__deployment_config__blue_green_update_policy__traffic_routing_configuration__canary_size = {
  type_ : string; [@key "type"]  (** type *)
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint__deployment_config__blue_green_update_policy__traffic_routing_configuration__canary_size *)

type aws_sagemaker_endpoint__deployment_config__blue_green_update_policy__traffic_routing_configuration__linear_step_size = {
  type_ : string; [@key "type"]  (** type *)
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint__deployment_config__blue_green_update_policy__traffic_routing_configuration__linear_step_size *)

type aws_sagemaker_endpoint__deployment_config__blue_green_update_policy__traffic_routing_configuration = {
  type_ : string; [@key "type"]  (** type *)
  wait_interval_in_seconds : float;  (** wait_interval_in_seconds *)
  canary_size :
    aws_sagemaker_endpoint__deployment_config__blue_green_update_policy__traffic_routing_configuration__canary_size
    list;
  linear_step_size :
    aws_sagemaker_endpoint__deployment_config__blue_green_update_policy__traffic_routing_configuration__linear_step_size
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint__deployment_config__blue_green_update_policy__traffic_routing_configuration *)

type aws_sagemaker_endpoint__deployment_config__blue_green_update_policy = {
  maximum_execution_timeout_in_seconds : float option; [@option]
      (** maximum_execution_timeout_in_seconds *)
  termination_wait_in_seconds : float option; [@option]
      (** termination_wait_in_seconds *)
  traffic_routing_configuration :
    aws_sagemaker_endpoint__deployment_config__blue_green_update_policy__traffic_routing_configuration
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint__deployment_config__blue_green_update_policy *)

type aws_sagemaker_endpoint__deployment_config__rolling_update_policy__maximum_batch_size = {
  type_ : string; [@key "type"]  (** type *)
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint__deployment_config__rolling_update_policy__maximum_batch_size *)

type aws_sagemaker_endpoint__deployment_config__rolling_update_policy__rollback_maximum_batch_size = {
  type_ : string; [@key "type"]  (** type *)
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint__deployment_config__rolling_update_policy__rollback_maximum_batch_size *)

type aws_sagemaker_endpoint__deployment_config__rolling_update_policy = {
  maximum_execution_timeout_in_seconds : float option; [@option]
      (** maximum_execution_timeout_in_seconds *)
  wait_interval_in_seconds : float;  (** wait_interval_in_seconds *)
  maximum_batch_size :
    aws_sagemaker_endpoint__deployment_config__rolling_update_policy__maximum_batch_size
    list;
  rollback_maximum_batch_size :
    aws_sagemaker_endpoint__deployment_config__rolling_update_policy__rollback_maximum_batch_size
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint__deployment_config__rolling_update_policy *)

type aws_sagemaker_endpoint__deployment_config = {
  auto_rollback_configuration :
    aws_sagemaker_endpoint__deployment_config__auto_rollback_configuration
    list;
  blue_green_update_policy :
    aws_sagemaker_endpoint__deployment_config__blue_green_update_policy
    list;
  rolling_update_policy :
    aws_sagemaker_endpoint__deployment_config__rolling_update_policy
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint__deployment_config *)

type aws_sagemaker_endpoint = {
  endpoint_config_name : string;  (** endpoint_config_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  deployment_config : aws_sagemaker_endpoint__deployment_config list;
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint *)

let aws_sagemaker_endpoint ?tags ~endpoint_config_name
    ~deployment_config __resource_id =
  let __resource_type = "aws_sagemaker_endpoint" in
  let __resource =
    { endpoint_config_name; tags; deployment_config }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_endpoint __resource);
  ()

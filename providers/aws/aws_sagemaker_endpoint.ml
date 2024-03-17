(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_endpoint__deployment_config__auto_rollback_configuration__alarms = {
  alarm_name : string prop;  (** alarm_name *)
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
  type_ : string prop; [@key "type"]  (** type *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint__deployment_config__blue_green_update_policy__traffic_routing_configuration__canary_size *)

type aws_sagemaker_endpoint__deployment_config__blue_green_update_policy__traffic_routing_configuration__linear_step_size = {
  type_ : string prop; [@key "type"]  (** type *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint__deployment_config__blue_green_update_policy__traffic_routing_configuration__linear_step_size *)

type aws_sagemaker_endpoint__deployment_config__blue_green_update_policy__traffic_routing_configuration = {
  type_ : string prop; [@key "type"]  (** type *)
  wait_interval_in_seconds : float prop;
      (** wait_interval_in_seconds *)
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
  maximum_execution_timeout_in_seconds : float prop option; [@option]
      (** maximum_execution_timeout_in_seconds *)
  termination_wait_in_seconds : float prop option; [@option]
      (** termination_wait_in_seconds *)
  traffic_routing_configuration :
    aws_sagemaker_endpoint__deployment_config__blue_green_update_policy__traffic_routing_configuration
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint__deployment_config__blue_green_update_policy *)

type aws_sagemaker_endpoint__deployment_config__rolling_update_policy__maximum_batch_size = {
  type_ : string prop; [@key "type"]  (** type *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint__deployment_config__rolling_update_policy__maximum_batch_size *)

type aws_sagemaker_endpoint__deployment_config__rolling_update_policy__rollback_maximum_batch_size = {
  type_ : string prop; [@key "type"]  (** type *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint__deployment_config__rolling_update_policy__rollback_maximum_batch_size *)

type aws_sagemaker_endpoint__deployment_config__rolling_update_policy = {
  maximum_execution_timeout_in_seconds : float prop option; [@option]
      (** maximum_execution_timeout_in_seconds *)
  wait_interval_in_seconds : float prop;
      (** wait_interval_in_seconds *)
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
  endpoint_config_name : string prop;  (** endpoint_config_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  deployment_config : aws_sagemaker_endpoint__deployment_config list;
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint *)

type t = {
  arn : string prop;
  endpoint_config_name : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_sagemaker_endpoint ?id ?name ?tags ?tags_all
    ~endpoint_config_name ~deployment_config __resource_id =
  let __resource_type = "aws_sagemaker_endpoint" in
  let __resource =
    ({
       endpoint_config_name;
       id;
       name;
       tags;
       tags_all;
       deployment_config;
     }
      : aws_sagemaker_endpoint)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_endpoint __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       endpoint_config_name =
         Prop.computed __resource_type __resource_id
           "endpoint_config_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type deployment_config__auto_rollback_configuration__alarms = {
  alarm_name : string prop;  (** alarm_name *)
}
[@@deriving yojson_of]
(** deployment_config__auto_rollback_configuration__alarms *)

type deployment_config__auto_rollback_configuration = {
  alarms :
    deployment_config__auto_rollback_configuration__alarms list;
}
[@@deriving yojson_of]
(** deployment_config__auto_rollback_configuration *)

type deployment_config__blue_green_update_policy__traffic_routing_configuration__canary_size = {
  type_ : string prop; [@key "type"]  (** type *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** deployment_config__blue_green_update_policy__traffic_routing_configuration__canary_size *)

type deployment_config__blue_green_update_policy__traffic_routing_configuration__linear_step_size = {
  type_ : string prop; [@key "type"]  (** type *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** deployment_config__blue_green_update_policy__traffic_routing_configuration__linear_step_size *)

type deployment_config__blue_green_update_policy__traffic_routing_configuration = {
  type_ : string prop; [@key "type"]  (** type *)
  wait_interval_in_seconds : float prop;
      (** wait_interval_in_seconds *)
  canary_size :
    deployment_config__blue_green_update_policy__traffic_routing_configuration__canary_size
    list;
  linear_step_size :
    deployment_config__blue_green_update_policy__traffic_routing_configuration__linear_step_size
    list;
}
[@@deriving yojson_of]
(** deployment_config__blue_green_update_policy__traffic_routing_configuration *)

type deployment_config__blue_green_update_policy = {
  maximum_execution_timeout_in_seconds : float prop option; [@option]
      (** maximum_execution_timeout_in_seconds *)
  termination_wait_in_seconds : float prop option; [@option]
      (** termination_wait_in_seconds *)
  traffic_routing_configuration :
    deployment_config__blue_green_update_policy__traffic_routing_configuration
    list;
}
[@@deriving yojson_of]
(** deployment_config__blue_green_update_policy *)

type deployment_config__rolling_update_policy__maximum_batch_size = {
  type_ : string prop; [@key "type"]  (** type *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** deployment_config__rolling_update_policy__maximum_batch_size *)

type deployment_config__rolling_update_policy__rollback_maximum_batch_size = {
  type_ : string prop; [@key "type"]  (** type *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** deployment_config__rolling_update_policy__rollback_maximum_batch_size *)

type deployment_config__rolling_update_policy = {
  maximum_execution_timeout_in_seconds : float prop option; [@option]
      (** maximum_execution_timeout_in_seconds *)
  wait_interval_in_seconds : float prop;
      (** wait_interval_in_seconds *)
  maximum_batch_size :
    deployment_config__rolling_update_policy__maximum_batch_size list;
  rollback_maximum_batch_size :
    deployment_config__rolling_update_policy__rollback_maximum_batch_size
    list;
}
[@@deriving yojson_of]
(** deployment_config__rolling_update_policy *)

type deployment_config = {
  auto_rollback_configuration :
    deployment_config__auto_rollback_configuration list;
  blue_green_update_policy :
    deployment_config__blue_green_update_policy list;
  rolling_update_policy :
    deployment_config__rolling_update_policy list;
}
[@@deriving yojson_of]
(** deployment_config *)

type aws_sagemaker_endpoint = {
  endpoint_config_name : string prop;  (** endpoint_config_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  deployment_config : deployment_config list;
}
[@@deriving yojson_of]
(** aws_sagemaker_endpoint *)

let deployment_config__auto_rollback_configuration__alarms
    ~alarm_name () :
    deployment_config__auto_rollback_configuration__alarms =
  { alarm_name }

let deployment_config__auto_rollback_configuration ~alarms () :
    deployment_config__auto_rollback_configuration =
  { alarms }

let deployment_config__blue_green_update_policy__traffic_routing_configuration__canary_size
    ~type_ ~value () :
    deployment_config__blue_green_update_policy__traffic_routing_configuration__canary_size
    =
  { type_; value }

let deployment_config__blue_green_update_policy__traffic_routing_configuration__linear_step_size
    ~type_ ~value () :
    deployment_config__blue_green_update_policy__traffic_routing_configuration__linear_step_size
    =
  { type_; value }

let deployment_config__blue_green_update_policy__traffic_routing_configuration
    ~type_ ~wait_interval_in_seconds ~canary_size ~linear_step_size
    () :
    deployment_config__blue_green_update_policy__traffic_routing_configuration
    =
  { type_; wait_interval_in_seconds; canary_size; linear_step_size }

let deployment_config__blue_green_update_policy
    ?maximum_execution_timeout_in_seconds
    ?termination_wait_in_seconds ~traffic_routing_configuration () :
    deployment_config__blue_green_update_policy =
  {
    maximum_execution_timeout_in_seconds;
    termination_wait_in_seconds;
    traffic_routing_configuration;
  }

let deployment_config__rolling_update_policy__maximum_batch_size
    ~type_ ~value () :
    deployment_config__rolling_update_policy__maximum_batch_size =
  { type_; value }

let deployment_config__rolling_update_policy__rollback_maximum_batch_size
    ~type_ ~value () :
    deployment_config__rolling_update_policy__rollback_maximum_batch_size
    =
  { type_; value }

let deployment_config__rolling_update_policy
    ?maximum_execution_timeout_in_seconds ~wait_interval_in_seconds
    ~maximum_batch_size ~rollback_maximum_batch_size () :
    deployment_config__rolling_update_policy =
  {
    maximum_execution_timeout_in_seconds;
    wait_interval_in_seconds;
    maximum_batch_size;
    rollback_maximum_batch_size;
  }

let deployment_config ~auto_rollback_configuration
    ~blue_green_update_policy ~rolling_update_policy () :
    deployment_config =
  {
    auto_rollback_configuration;
    blue_green_update_policy;
    rolling_update_policy;
  }

let aws_sagemaker_endpoint ?id ?name ?tags ?tags_all
    ~endpoint_config_name ~deployment_config () :
    aws_sagemaker_endpoint =
  {
    endpoint_config_name;
    id;
    name;
    tags;
    tags_all;
    deployment_config;
  }

type t = {
  arn : string prop;
  endpoint_config_name : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?name ?tags ?tags_all ~endpoint_config_name
    ~deployment_config __id =
  let __type = "aws_sagemaker_endpoint" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       endpoint_config_name =
         Prop.computed __type __id "endpoint_config_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sagemaker_endpoint
        (aws_sagemaker_endpoint ?id ?name ?tags ?tags_all
           ~endpoint_config_name ~deployment_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?tags ?tags_all
    ~endpoint_config_name ~deployment_config __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?tags ?tags_all ~endpoint_config_name
      ~deployment_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

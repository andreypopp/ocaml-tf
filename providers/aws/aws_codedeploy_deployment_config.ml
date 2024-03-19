(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type minimum_healthy_hosts = {
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  value : float prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** minimum_healthy_hosts *)

type traffic_routing_config__time_based_canary = {
  interval : float prop option; [@option]  (** interval *)
  percentage : float prop option; [@option]  (** percentage *)
}
[@@deriving yojson_of]
(** traffic_routing_config__time_based_canary *)

type traffic_routing_config__time_based_linear = {
  interval : float prop option; [@option]  (** interval *)
  percentage : float prop option; [@option]  (** percentage *)
}
[@@deriving yojson_of]
(** traffic_routing_config__time_based_linear *)

type traffic_routing_config = {
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  time_based_canary : traffic_routing_config__time_based_canary list;
  time_based_linear : traffic_routing_config__time_based_linear list;
}
[@@deriving yojson_of]
(** traffic_routing_config *)

type aws_codedeploy_deployment_config = {
  compute_platform : string prop option; [@option]
      (** compute_platform *)
  deployment_config_name : string prop;
      (** deployment_config_name *)
  id : string prop option; [@option]  (** id *)
  minimum_healthy_hosts : minimum_healthy_hosts list;
  traffic_routing_config : traffic_routing_config list;
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_config *)

let minimum_healthy_hosts ?type_ ?value () : minimum_healthy_hosts =
  { type_; value }

let traffic_routing_config__time_based_canary ?interval ?percentage
    () : traffic_routing_config__time_based_canary =
  { interval; percentage }

let traffic_routing_config__time_based_linear ?interval ?percentage
    () : traffic_routing_config__time_based_linear =
  { interval; percentage }

let traffic_routing_config ?type_ ~time_based_canary
    ~time_based_linear () : traffic_routing_config =
  { type_; time_based_canary; time_based_linear }

let aws_codedeploy_deployment_config ?compute_platform ?id
    ~deployment_config_name ~minimum_healthy_hosts
    ~traffic_routing_config () : aws_codedeploy_deployment_config =
  {
    compute_platform;
    deployment_config_name;
    id;
    minimum_healthy_hosts;
    traffic_routing_config;
  }

type t = {
  arn : string prop;
  compute_platform : string prop;
  deployment_config_id : string prop;
  deployment_config_name : string prop;
  id : string prop;
}

let register ?tf_module ?compute_platform ?id ~deployment_config_name
    ~minimum_healthy_hosts ~traffic_routing_config __resource_id =
  let __resource_type = "aws_codedeploy_deployment_config" in
  let __resource =
    aws_codedeploy_deployment_config ?compute_platform ?id
      ~deployment_config_name ~minimum_healthy_hosts
      ~traffic_routing_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codedeploy_deployment_config __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       compute_platform =
         Prop.computed __resource_type __resource_id
           "compute_platform";
       deployment_config_id =
         Prop.computed __resource_type __resource_id
           "deployment_config_id";
       deployment_config_name =
         Prop.computed __resource_type __resource_id
           "deployment_config_name";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_codedeploy_deployment_config__minimum_healthy_hosts = {
  type_ : string option; [@option] [@key "type"]  (** type *)
  value : float option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_config__minimum_healthy_hosts *)

type aws_codedeploy_deployment_config__traffic_routing_config__time_based_canary = {
  interval : float option; [@option]  (** interval *)
  percentage : float option; [@option]  (** percentage *)
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_config__traffic_routing_config__time_based_canary *)

type aws_codedeploy_deployment_config__traffic_routing_config__time_based_linear = {
  interval : float option; [@option]  (** interval *)
  percentage : float option; [@option]  (** percentage *)
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_config__traffic_routing_config__time_based_linear *)

type aws_codedeploy_deployment_config__traffic_routing_config = {
  type_ : string option; [@option] [@key "type"]  (** type *)
  time_based_canary :
    aws_codedeploy_deployment_config__traffic_routing_config__time_based_canary
    list;
  time_based_linear :
    aws_codedeploy_deployment_config__traffic_routing_config__time_based_linear
    list;
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_config__traffic_routing_config *)

type aws_codedeploy_deployment_config = {
  compute_platform : string option; [@option]
      (** compute_platform *)
  deployment_config_name : string;  (** deployment_config_name *)
  minimum_healthy_hosts :
    aws_codedeploy_deployment_config__minimum_healthy_hosts list;
  traffic_routing_config :
    aws_codedeploy_deployment_config__traffic_routing_config list;
}
[@@deriving yojson_of]
(** aws_codedeploy_deployment_config *)

let aws_codedeploy_deployment_config ?compute_platform
    ~deployment_config_name ~minimum_healthy_hosts
    ~traffic_routing_config __resource_id =
  let __resource_type = "aws_codedeploy_deployment_config" in
  let __resource =
    {
      compute_platform;
      deployment_config_name;
      minimum_healthy_hosts;
      traffic_routing_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codedeploy_deployment_config __resource);
  ()

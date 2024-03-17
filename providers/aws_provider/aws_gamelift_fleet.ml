(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_gamelift_fleet__certificate_configuration = {
  certificate_type : string option; [@option]  (** certificate_type *)
}
[@@deriving yojson_of]
(** aws_gamelift_fleet__certificate_configuration *)

type aws_gamelift_fleet__ec2_inbound_permission = {
  from_port : float;  (** from_port *)
  ip_range : string;  (** ip_range *)
  protocol : string;  (** protocol *)
  to_port : float;  (** to_port *)
}
[@@deriving yojson_of]
(** aws_gamelift_fleet__ec2_inbound_permission *)

type aws_gamelift_fleet__resource_creation_limit_policy = {
  new_game_sessions_per_creator : float option; [@option]
      (** new_game_sessions_per_creator *)
  policy_period_in_minutes : float option; [@option]
      (** policy_period_in_minutes *)
}
[@@deriving yojson_of]
(** aws_gamelift_fleet__resource_creation_limit_policy *)

type aws_gamelift_fleet__runtime_configuration__server_process = {
  concurrent_executions : float;  (** concurrent_executions *)
  launch_path : string;  (** launch_path *)
  parameters : string option; [@option]  (** parameters *)
}
[@@deriving yojson_of]
(** aws_gamelift_fleet__runtime_configuration__server_process *)

type aws_gamelift_fleet__runtime_configuration = {
  game_session_activation_timeout_seconds : float option; [@option]
      (** game_session_activation_timeout_seconds *)
  max_concurrent_game_session_activations : float option; [@option]
      (** max_concurrent_game_session_activations *)
  server_process :
    aws_gamelift_fleet__runtime_configuration__server_process list;
}
[@@deriving yojson_of]
(** aws_gamelift_fleet__runtime_configuration *)

type aws_gamelift_fleet__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_gamelift_fleet__timeouts *)

type aws_gamelift_fleet = {
  build_id : string option; [@option]  (** build_id *)
  description : string option; [@option]  (** description *)
  ec2_instance_type : string;  (** ec2_instance_type *)
  fleet_type : string option; [@option]  (** fleet_type *)
  id : string option; [@option]  (** id *)
  instance_role_arn : string option; [@option]
      (** instance_role_arn *)
  metric_groups : string list option; [@option]  (** metric_groups *)
  name : string;  (** name *)
  new_game_session_protection_policy : string option; [@option]
      (** new_game_session_protection_policy *)
  script_id : string option; [@option]  (** script_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  certificate_configuration :
    aws_gamelift_fleet__certificate_configuration list;
  ec2_inbound_permission :
    aws_gamelift_fleet__ec2_inbound_permission list;
  resource_creation_limit_policy :
    aws_gamelift_fleet__resource_creation_limit_policy list;
  runtime_configuration :
    aws_gamelift_fleet__runtime_configuration list;
  timeouts : aws_gamelift_fleet__timeouts option;
}
[@@deriving yojson_of]
(** aws_gamelift_fleet *)

let aws_gamelift_fleet ?build_id ?description ?fleet_type ?id
    ?instance_role_arn ?metric_groups
    ?new_game_session_protection_policy ?script_id ?tags ?tags_all
    ?timeouts ~ec2_instance_type ~name ~certificate_configuration
    ~ec2_inbound_permission ~resource_creation_limit_policy
    ~runtime_configuration __resource_id =
  let __resource_type = "aws_gamelift_fleet" in
  let __resource =
    {
      build_id;
      description;
      ec2_instance_type;
      fleet_type;
      id;
      instance_role_arn;
      metric_groups;
      name;
      new_game_session_protection_policy;
      script_id;
      tags;
      tags_all;
      certificate_configuration;
      ec2_inbound_permission;
      resource_creation_limit_policy;
      runtime_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_gamelift_fleet __resource);
  ()

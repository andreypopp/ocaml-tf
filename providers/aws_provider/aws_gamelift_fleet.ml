(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_gamelift_fleet__certificate_configuration = {
  certificate_type : string prop option; [@option]
      (** certificate_type *)
}
[@@deriving yojson_of]
(** aws_gamelift_fleet__certificate_configuration *)

type aws_gamelift_fleet__ec2_inbound_permission = {
  from_port : float prop;  (** from_port *)
  ip_range : string prop;  (** ip_range *)
  protocol : string prop;  (** protocol *)
  to_port : float prop;  (** to_port *)
}
[@@deriving yojson_of]
(** aws_gamelift_fleet__ec2_inbound_permission *)

type aws_gamelift_fleet__resource_creation_limit_policy = {
  new_game_sessions_per_creator : float prop option; [@option]
      (** new_game_sessions_per_creator *)
  policy_period_in_minutes : float prop option; [@option]
      (** policy_period_in_minutes *)
}
[@@deriving yojson_of]
(** aws_gamelift_fleet__resource_creation_limit_policy *)

type aws_gamelift_fleet__runtime_configuration__server_process = {
  concurrent_executions : float prop;  (** concurrent_executions *)
  launch_path : string prop;  (** launch_path *)
  parameters : string prop option; [@option]  (** parameters *)
}
[@@deriving yojson_of]
(** aws_gamelift_fleet__runtime_configuration__server_process *)

type aws_gamelift_fleet__runtime_configuration = {
  game_session_activation_timeout_seconds : float prop option;
      [@option]
      (** game_session_activation_timeout_seconds *)
  max_concurrent_game_session_activations : float prop option;
      [@option]
      (** max_concurrent_game_session_activations *)
  server_process :
    aws_gamelift_fleet__runtime_configuration__server_process list;
}
[@@deriving yojson_of]
(** aws_gamelift_fleet__runtime_configuration *)

type aws_gamelift_fleet__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_gamelift_fleet__timeouts *)

type aws_gamelift_fleet = {
  build_id : string prop option; [@option]  (** build_id *)
  description : string prop option; [@option]  (** description *)
  ec2_instance_type : string prop;  (** ec2_instance_type *)
  fleet_type : string prop option; [@option]  (** fleet_type *)
  id : string prop option; [@option]  (** id *)
  instance_role_arn : string prop option; [@option]
      (** instance_role_arn *)
  metric_groups : string prop list option; [@option]
      (** metric_groups *)
  name : string prop;  (** name *)
  new_game_session_protection_policy : string prop option; [@option]
      (** new_game_session_protection_policy *)
  script_id : string prop option; [@option]  (** script_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
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

type t = {
  arn : string prop;
  build_arn : string prop;
  build_id : string prop;
  description : string prop;
  ec2_instance_type : string prop;
  fleet_type : string prop;
  id : string prop;
  instance_role_arn : string prop;
  log_paths : string list prop;
  metric_groups : string list prop;
  name : string prop;
  new_game_session_protection_policy : string prop;
  operating_system : string prop;
  script_arn : string prop;
  script_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_gamelift_fleet ?build_id ?description ?fleet_type ?id
    ?instance_role_arn ?metric_groups
    ?new_game_session_protection_policy ?script_id ?tags ?tags_all
    ?timeouts ~ec2_instance_type ~name ~certificate_configuration
    ~ec2_inbound_permission ~resource_creation_limit_policy
    ~runtime_configuration __resource_id =
  let __resource_type = "aws_gamelift_fleet" in
  let __resource =
    ({
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
      : aws_gamelift_fleet)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_gamelift_fleet __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       build_arn =
         Prop.computed __resource_type __resource_id "build_arn";
       build_id =
         Prop.computed __resource_type __resource_id "build_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       ec2_instance_type =
         Prop.computed __resource_type __resource_id
           "ec2_instance_type";
       fleet_type =
         Prop.computed __resource_type __resource_id "fleet_type";
       id = Prop.computed __resource_type __resource_id "id";
       instance_role_arn =
         Prop.computed __resource_type __resource_id
           "instance_role_arn";
       log_paths =
         Prop.computed __resource_type __resource_id "log_paths";
       metric_groups =
         Prop.computed __resource_type __resource_id "metric_groups";
       name = Prop.computed __resource_type __resource_id "name";
       new_game_session_protection_policy =
         Prop.computed __resource_type __resource_id
           "new_game_session_protection_policy";
       operating_system =
         Prop.computed __resource_type __resource_id
           "operating_system";
       script_arn =
         Prop.computed __resource_type __resource_id "script_arn";
       script_id =
         Prop.computed __resource_type __resource_id "script_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes

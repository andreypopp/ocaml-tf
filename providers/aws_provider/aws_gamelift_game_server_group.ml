(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_gamelift_game_server_group__auto_scaling_policy__target_tracking_configuration = {
  target_value : float prop;  (** target_value *)
}
[@@deriving yojson_of]
(** aws_gamelift_game_server_group__auto_scaling_policy__target_tracking_configuration *)

type aws_gamelift_game_server_group__auto_scaling_policy = {
  estimated_instance_warmup : float prop option; [@option]
      (** estimated_instance_warmup *)
  target_tracking_configuration :
    aws_gamelift_game_server_group__auto_scaling_policy__target_tracking_configuration
    list;
}
[@@deriving yojson_of]
(** aws_gamelift_game_server_group__auto_scaling_policy *)

type aws_gamelift_game_server_group__instance_definition = {
  instance_type : string prop;  (** instance_type *)
  weighted_capacity : string prop option; [@option]
      (** weighted_capacity *)
}
[@@deriving yojson_of]
(** aws_gamelift_game_server_group__instance_definition *)

type aws_gamelift_game_server_group__launch_template = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  version : string prop option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** aws_gamelift_game_server_group__launch_template *)

type aws_gamelift_game_server_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_gamelift_game_server_group__timeouts *)

type aws_gamelift_game_server_group = {
  balancing_strategy : string prop option; [@option]
      (** balancing_strategy *)
  game_server_group_name : string prop;
      (** game_server_group_name *)
  game_server_protection_policy : string prop option; [@option]
      (** game_server_protection_policy *)
  id : string prop option; [@option]  (** id *)
  max_size : float prop;  (** max_size *)
  min_size : float prop;  (** min_size *)
  role_arn : string prop;  (** role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_subnets : string prop list option; [@option]
      (** vpc_subnets *)
  auto_scaling_policy :
    aws_gamelift_game_server_group__auto_scaling_policy list;
  instance_definition :
    aws_gamelift_game_server_group__instance_definition list;
  launch_template :
    aws_gamelift_game_server_group__launch_template list;
  timeouts : aws_gamelift_game_server_group__timeouts option;
}
[@@deriving yojson_of]
(** aws_gamelift_game_server_group *)

let aws_gamelift_game_server_group ?balancing_strategy
    ?game_server_protection_policy ?id ?tags ?tags_all ?vpc_subnets
    ?timeouts ~game_server_group_name ~max_size ~min_size ~role_arn
    ~auto_scaling_policy ~instance_definition ~launch_template
    __resource_id =
  let __resource_type = "aws_gamelift_game_server_group" in
  let __resource =
    {
      balancing_strategy;
      game_server_group_name;
      game_server_protection_policy;
      id;
      max_size;
      min_size;
      role_arn;
      tags;
      tags_all;
      vpc_subnets;
      auto_scaling_policy;
      instance_definition;
      launch_template;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_gamelift_game_server_group __resource);
  ()

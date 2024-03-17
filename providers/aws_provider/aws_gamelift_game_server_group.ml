(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_gamelift_game_server_group__auto_scaling_policy__target_tracking_configuration = {
  target_value : float;  (** target_value *)
}
[@@deriving yojson_of]
(** aws_gamelift_game_server_group__auto_scaling_policy__target_tracking_configuration *)

type aws_gamelift_game_server_group__auto_scaling_policy = {
  estimated_instance_warmup : float option; [@option]
      (** estimated_instance_warmup *)
  target_tracking_configuration :
    aws_gamelift_game_server_group__auto_scaling_policy__target_tracking_configuration
    list;
}
[@@deriving yojson_of]
(** aws_gamelift_game_server_group__auto_scaling_policy *)

type aws_gamelift_game_server_group__instance_definition = {
  instance_type : string;  (** instance_type *)
  weighted_capacity : string option; [@option]
      (** weighted_capacity *)
}
[@@deriving yojson_of]
(** aws_gamelift_game_server_group__instance_definition *)

type aws_gamelift_game_server_group__launch_template = {
  id : string option; [@option]  (** id *)
  name : string option; [@option]  (** name *)
  version : string option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** aws_gamelift_game_server_group__launch_template *)

type aws_gamelift_game_server_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_gamelift_game_server_group__timeouts *)

type aws_gamelift_game_server_group = {
  game_server_group_name : string;  (** game_server_group_name *)
  max_size : float;  (** max_size *)
  min_size : float;  (** min_size *)
  role_arn : string;  (** role_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  vpc_subnets : string list option; [@option]  (** vpc_subnets *)
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

let aws_gamelift_game_server_group ?tags ?vpc_subnets ?timeouts
    ~game_server_group_name ~max_size ~min_size ~role_arn
    ~auto_scaling_policy ~instance_definition ~launch_template
    __resource_id =
  let __resource_type = "aws_gamelift_game_server_group" in
  let __resource =
    {
      game_server_group_name;
      max_size;
      min_size;
      role_arn;
      tags;
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

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type auto_scaling_policy__target_tracking_configuration = {
  target_value : float prop;  (** target_value *)
}
[@@deriving yojson_of]
(** auto_scaling_policy__target_tracking_configuration *)

type auto_scaling_policy = {
  estimated_instance_warmup : float prop option; [@option]
      (** estimated_instance_warmup *)
  target_tracking_configuration :
    auto_scaling_policy__target_tracking_configuration list;
}
[@@deriving yojson_of]
(** auto_scaling_policy *)

type instance_definition = {
  instance_type : string prop;  (** instance_type *)
  weighted_capacity : string prop option; [@option]
      (** weighted_capacity *)
}
[@@deriving yojson_of]
(** instance_definition *)

type launch_template = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  version : string prop option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** launch_template *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  auto_scaling_policy : auto_scaling_policy list;
  instance_definition : instance_definition list;
  launch_template : launch_template list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_gamelift_game_server_group *)

let auto_scaling_policy__target_tracking_configuration ~target_value
    () : auto_scaling_policy__target_tracking_configuration =
  { target_value }

let auto_scaling_policy ?estimated_instance_warmup
    ~target_tracking_configuration () : auto_scaling_policy =
  { estimated_instance_warmup; target_tracking_configuration }

let instance_definition ?weighted_capacity ~instance_type () :
    instance_definition =
  { instance_type; weighted_capacity }

let launch_template ?id ?name ?version () : launch_template =
  { id; name; version }

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_gamelift_game_server_group ?balancing_strategy
    ?game_server_protection_policy ?id ?tags ?tags_all ?vpc_subnets
    ?timeouts ~game_server_group_name ~max_size ~min_size ~role_arn
    ~auto_scaling_policy ~instance_definition ~launch_template () :
    aws_gamelift_game_server_group =
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

type t = {
  arn : string prop;
  auto_scaling_group_arn : string prop;
  balancing_strategy : string prop;
  game_server_group_name : string prop;
  game_server_protection_policy : string prop;
  id : string prop;
  max_size : float prop;
  min_size : float prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_subnets : string list prop;
}

let register ?tf_module ?balancing_strategy
    ?game_server_protection_policy ?id ?tags ?tags_all ?vpc_subnets
    ?timeouts ~game_server_group_name ~max_size ~min_size ~role_arn
    ~auto_scaling_policy ~instance_definition ~launch_template
    __resource_id =
  let __resource_type = "aws_gamelift_game_server_group" in
  let __resource =
    aws_gamelift_game_server_group ?balancing_strategy
      ?game_server_protection_policy ?id ?tags ?tags_all ?vpc_subnets
      ?timeouts ~game_server_group_name ~max_size ~min_size ~role_arn
      ~auto_scaling_policy ~instance_definition ~launch_template ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_gamelift_game_server_group __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       auto_scaling_group_arn =
         Prop.computed __resource_type __resource_id
           "auto_scaling_group_arn";
       balancing_strategy =
         Prop.computed __resource_type __resource_id
           "balancing_strategy";
       game_server_group_name =
         Prop.computed __resource_type __resource_id
           "game_server_group_name";
       game_server_protection_policy =
         Prop.computed __resource_type __resource_id
           "game_server_protection_policy";
       id = Prop.computed __resource_type __resource_id "id";
       max_size =
         Prop.computed __resource_type __resource_id "max_size";
       min_size =
         Prop.computed __resource_type __resource_id "min_size";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       vpc_subnets =
         Prop.computed __resource_type __resource_id "vpc_subnets";
     }
      : t)
  in
  __resource_attributes

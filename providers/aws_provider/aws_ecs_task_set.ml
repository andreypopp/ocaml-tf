(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ecs_task_set__capacity_provider_strategy = {
  base : float prop option; [@option]  (** base *)
  capacity_provider : string prop;  (** capacity_provider *)
  weight : float prop;  (** weight *)
}
[@@deriving yojson_of]
(** aws_ecs_task_set__capacity_provider_strategy *)

type aws_ecs_task_set__load_balancer = {
  container_name : string prop;  (** container_name *)
  container_port : float prop option; [@option]
      (** container_port *)
  load_balancer_name : string prop option; [@option]
      (** load_balancer_name *)
  target_group_arn : string prop option; [@option]
      (** target_group_arn *)
}
[@@deriving yojson_of]
(** aws_ecs_task_set__load_balancer *)

type aws_ecs_task_set__network_configuration = {
  assign_public_ip : bool prop option; [@option]
      (** assign_public_ip *)
  security_groups : string prop list option; [@option]
      (** security_groups *)
  subnets : string prop list;  (** subnets *)
}
[@@deriving yojson_of]
(** aws_ecs_task_set__network_configuration *)

type aws_ecs_task_set__scale = {
  unit : string prop option; [@option]  (** unit *)
  value : float prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_ecs_task_set__scale *)

type aws_ecs_task_set__service_registries = {
  container_name : string prop option; [@option]
      (** container_name *)
  container_port : float prop option; [@option]
      (** container_port *)
  port : float prop option; [@option]  (** port *)
  registry_arn : string prop;  (** registry_arn *)
}
[@@deriving yojson_of]
(** aws_ecs_task_set__service_registries *)

type aws_ecs_task_set = {
  cluster : string prop;  (** cluster *)
  external_id : string prop option; [@option]  (** external_id *)
  force_delete : bool prop option; [@option]  (** force_delete *)
  id : string prop option; [@option]  (** id *)
  launch_type : string prop option; [@option]  (** launch_type *)
  platform_version : string prop option; [@option]
      (** platform_version *)
  service : string prop;  (** service *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  task_definition : string prop;  (** task_definition *)
  wait_until_stable : bool prop option; [@option]
      (** wait_until_stable *)
  wait_until_stable_timeout : string prop option; [@option]
      (** wait_until_stable_timeout *)
  capacity_provider_strategy :
    aws_ecs_task_set__capacity_provider_strategy list;
  load_balancer : aws_ecs_task_set__load_balancer list;
  network_configuration :
    aws_ecs_task_set__network_configuration list;
  scale : aws_ecs_task_set__scale list;
  service_registries : aws_ecs_task_set__service_registries list;
}
[@@deriving yojson_of]
(** aws_ecs_task_set *)

type t = {
  arn : string prop;
  cluster : string prop;
  external_id : string prop;
  force_delete : bool prop;
  id : string prop;
  launch_type : string prop;
  platform_version : string prop;
  service : string prop;
  stability_status : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  task_definition : string prop;
  task_set_id : string prop;
  wait_until_stable : bool prop;
  wait_until_stable_timeout : string prop;
}

let aws_ecs_task_set ?external_id ?force_delete ?id ?launch_type
    ?platform_version ?tags ?tags_all ?wait_until_stable
    ?wait_until_stable_timeout ~cluster ~service ~task_definition
    ~capacity_provider_strategy ~load_balancer ~network_configuration
    ~scale ~service_registries __resource_id =
  let __resource_type = "aws_ecs_task_set" in
  let __resource =
    ({
       cluster;
       external_id;
       force_delete;
       id;
       launch_type;
       platform_version;
       service;
       tags;
       tags_all;
       task_definition;
       wait_until_stable;
       wait_until_stable_timeout;
       capacity_provider_strategy;
       load_balancer;
       network_configuration;
       scale;
       service_registries;
     }
      : aws_ecs_task_set)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ecs_task_set __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       cluster =
         Prop.computed __resource_type __resource_id "cluster";
       external_id =
         Prop.computed __resource_type __resource_id "external_id";
       force_delete =
         Prop.computed __resource_type __resource_id "force_delete";
       id = Prop.computed __resource_type __resource_id "id";
       launch_type =
         Prop.computed __resource_type __resource_id "launch_type";
       platform_version =
         Prop.computed __resource_type __resource_id
           "platform_version";
       service =
         Prop.computed __resource_type __resource_id "service";
       stability_status =
         Prop.computed __resource_type __resource_id
           "stability_status";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       task_definition =
         Prop.computed __resource_type __resource_id
           "task_definition";
       task_set_id =
         Prop.computed __resource_type __resource_id "task_set_id";
       wait_until_stable =
         Prop.computed __resource_type __resource_id
           "wait_until_stable";
       wait_until_stable_timeout =
         Prop.computed __resource_type __resource_id
           "wait_until_stable_timeout";
     }
      : t)
  in
  __resource_attributes

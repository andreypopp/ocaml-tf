(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ecs_task_set__capacity_provider_strategy = {
  base : float option; [@option]  (** base *)
  capacity_provider : string;  (** capacity_provider *)
  weight : float;  (** weight *)
}
[@@deriving yojson_of]
(** aws_ecs_task_set__capacity_provider_strategy *)

type aws_ecs_task_set__load_balancer = {
  container_name : string;  (** container_name *)
  container_port : float option; [@option]  (** container_port *)
  load_balancer_name : string option; [@option]
      (** load_balancer_name *)
  target_group_arn : string option; [@option]  (** target_group_arn *)
}
[@@deriving yojson_of]
(** aws_ecs_task_set__load_balancer *)

type aws_ecs_task_set__network_configuration = {
  assign_public_ip : bool option; [@option]  (** assign_public_ip *)
  security_groups : string list option; [@option]
      (** security_groups *)
  subnets : string list;  (** subnets *)
}
[@@deriving yojson_of]
(** aws_ecs_task_set__network_configuration *)

type aws_ecs_task_set__scale = {
  unit : string option; [@option]  (** unit *)
  value : float option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_ecs_task_set__scale *)

type aws_ecs_task_set__service_registries = {
  container_name : string option; [@option]  (** container_name *)
  container_port : float option; [@option]  (** container_port *)
  port : float option; [@option]  (** port *)
  registry_arn : string;  (** registry_arn *)
}
[@@deriving yojson_of]
(** aws_ecs_task_set__service_registries *)

type aws_ecs_task_set = {
  cluster : string;  (** cluster *)
  force_delete : bool option; [@option]  (** force_delete *)
  service : string;  (** service *)
  tags : (string * string) list option; [@option]  (** tags *)
  task_definition : string;  (** task_definition *)
  wait_until_stable : bool option; [@option]
      (** wait_until_stable *)
  wait_until_stable_timeout : string option; [@option]
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

let aws_ecs_task_set ?force_delete ?tags ?wait_until_stable
    ?wait_until_stable_timeout ~cluster ~service ~task_definition
    ~capacity_provider_strategy ~load_balancer ~network_configuration
    ~scale ~service_registries __resource_id =
  let __resource_type = "aws_ecs_task_set" in
  let __resource =
    {
      cluster;
      force_delete;
      service;
      tags;
      task_definition;
      wait_until_stable;
      wait_until_stable_timeout;
      capacity_provider_strategy;
      load_balancer;
      network_configuration;
      scale;
      service_registries;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ecs_task_set __resource);
  ()

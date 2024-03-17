(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ecs_capacity_provider__auto_scaling_group_provider__managed_scaling = {
  instance_warmup_period : float option; [@option]
      (** instance_warmup_period *)
  maximum_scaling_step_size : float option; [@option]
      (** maximum_scaling_step_size *)
  minimum_scaling_step_size : float option; [@option]
      (** minimum_scaling_step_size *)
  status : string option; [@option]  (** status *)
  target_capacity : float option; [@option]  (** target_capacity *)
}
[@@deriving yojson_of]
(** aws_ecs_capacity_provider__auto_scaling_group_provider__managed_scaling *)

type aws_ecs_capacity_provider__auto_scaling_group_provider = {
  auto_scaling_group_arn : string;  (** auto_scaling_group_arn *)
  managed_draining : string option; [@option]
      (** managed_draining *)
  managed_termination_protection : string option; [@option]
      (** managed_termination_protection *)
  managed_scaling :
    aws_ecs_capacity_provider__auto_scaling_group_provider__managed_scaling
    list;
}
[@@deriving yojson_of]
(** aws_ecs_capacity_provider__auto_scaling_group_provider *)

type aws_ecs_capacity_provider = {
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  auto_scaling_group_provider :
    aws_ecs_capacity_provider__auto_scaling_group_provider list;
}
[@@deriving yojson_of]
(** aws_ecs_capacity_provider *)

let aws_ecs_capacity_provider ?id ?tags ?tags_all ~name
    ~auto_scaling_group_provider __resource_id =
  let __resource_type = "aws_ecs_capacity_provider" in
  let __resource =
    { id; name; tags; tags_all; auto_scaling_group_provider }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ecs_capacity_provider __resource);
  ()

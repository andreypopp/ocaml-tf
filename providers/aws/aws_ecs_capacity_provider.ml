(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type auto_scaling_group_provider__managed_scaling = {
  instance_warmup_period : float prop option; [@option]
      (** instance_warmup_period *)
  maximum_scaling_step_size : float prop option; [@option]
      (** maximum_scaling_step_size *)
  minimum_scaling_step_size : float prop option; [@option]
      (** minimum_scaling_step_size *)
  status : string prop option; [@option]  (** status *)
  target_capacity : float prop option; [@option]
      (** target_capacity *)
}
[@@deriving yojson_of]
(** auto_scaling_group_provider__managed_scaling *)

type auto_scaling_group_provider = {
  auto_scaling_group_arn : string prop;
      (** auto_scaling_group_arn *)
  managed_draining : string prop option; [@option]
      (** managed_draining *)
  managed_termination_protection : string prop option; [@option]
      (** managed_termination_protection *)
  managed_scaling : auto_scaling_group_provider__managed_scaling list;
}
[@@deriving yojson_of]
(** auto_scaling_group_provider *)

type aws_ecs_capacity_provider = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  auto_scaling_group_provider : auto_scaling_group_provider list;
}
[@@deriving yojson_of]
(** aws_ecs_capacity_provider *)

let auto_scaling_group_provider__managed_scaling
    ?instance_warmup_period ?maximum_scaling_step_size
    ?minimum_scaling_step_size ?status ?target_capacity () :
    auto_scaling_group_provider__managed_scaling =
  {
    instance_warmup_period;
    maximum_scaling_step_size;
    minimum_scaling_step_size;
    status;
    target_capacity;
  }

let auto_scaling_group_provider ?managed_draining
    ?managed_termination_protection ~auto_scaling_group_arn
    ~managed_scaling () : auto_scaling_group_provider =
  {
    auto_scaling_group_arn;
    managed_draining;
    managed_termination_protection;
    managed_scaling;
  }

let aws_ecs_capacity_provider ?id ?tags ?tags_all ~name
    ~auto_scaling_group_provider () : aws_ecs_capacity_provider =
  { id; name; tags; tags_all; auto_scaling_group_provider }

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?tags_all ~name
    ~auto_scaling_group_provider __resource_id =
  let __resource_type = "aws_ecs_capacity_provider" in
  let __resource =
    aws_ecs_capacity_provider ?id ?tags ?tags_all ~name
      ~auto_scaling_group_provider ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ecs_capacity_provider __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes

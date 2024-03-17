(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_connect_user_hierarchy_group__hierarchy_path__level_two = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]

type aws_connect_user_hierarchy_group__hierarchy_path__level_three = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]

type aws_connect_user_hierarchy_group__hierarchy_path__level_one = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]

type aws_connect_user_hierarchy_group__hierarchy_path__level_four = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]

type aws_connect_user_hierarchy_group__hierarchy_path__level_five = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]

type aws_connect_user_hierarchy_group__hierarchy_path = {
  level_five :
    aws_connect_user_hierarchy_group__hierarchy_path__level_five list;
      (** level_five *)
  level_four :
    aws_connect_user_hierarchy_group__hierarchy_path__level_four list;
      (** level_four *)
  level_one :
    aws_connect_user_hierarchy_group__hierarchy_path__level_one list;
      (** level_one *)
  level_three :
    aws_connect_user_hierarchy_group__hierarchy_path__level_three
    list;
      (** level_three *)
  level_two :
    aws_connect_user_hierarchy_group__hierarchy_path__level_two list;
      (** level_two *)
}
[@@deriving yojson_of]

type aws_connect_user_hierarchy_group = {
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;  (** instance_id *)
  name : string prop;  (** name *)
  parent_group_id : string prop option; [@option]
      (** parent_group_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_connect_user_hierarchy_group *)

type t = {
  arn : string prop;
  hierarchy_group_id : string prop;
  hierarchy_path :
    aws_connect_user_hierarchy_group__hierarchy_path list prop;
  id : string prop;
  instance_id : string prop;
  level_id : string prop;
  name : string prop;
  parent_group_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_connect_user_hierarchy_group ?id ?parent_group_id ?tags
    ?tags_all ~instance_id ~name __resource_id =
  let __resource_type = "aws_connect_user_hierarchy_group" in
  let __resource =
    ({ id; instance_id; name; parent_group_id; tags; tags_all }
      : aws_connect_user_hierarchy_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_connect_user_hierarchy_group __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       hierarchy_group_id =
         Prop.computed __resource_type __resource_id
           "hierarchy_group_id";
       hierarchy_path =
         Prop.computed __resource_type __resource_id "hierarchy_path";
       id = Prop.computed __resource_type __resource_id "id";
       instance_id =
         Prop.computed __resource_type __resource_id "instance_id";
       level_id =
         Prop.computed __resource_type __resource_id "level_id";
       name = Prop.computed __resource_type __resource_id "name";
       parent_group_id =
         Prop.computed __resource_type __resource_id
           "parent_group_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes

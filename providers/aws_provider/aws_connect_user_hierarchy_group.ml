(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_connect_user_hierarchy_group__hierarchy_path__level_two = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_connect_user_hierarchy_group__hierarchy_path__level_three = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_connect_user_hierarchy_group__hierarchy_path__level_one = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_connect_user_hierarchy_group__hierarchy_path__level_four = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type aws_connect_user_hierarchy_group__hierarchy_path__level_five = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
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
  id : string option; [@option]  (** id *)
  instance_id : string;  (** instance_id *)
  name : string;  (** name *)
  parent_group_id : string option; [@option]  (** parent_group_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_connect_user_hierarchy_group *)

let aws_connect_user_hierarchy_group ?id ?parent_group_id ?tags
    ?tags_all ~instance_id ~name __resource_id =
  let __resource_type = "aws_connect_user_hierarchy_group" in
  let __resource =
    { id; instance_id; name; parent_group_id; tags; tags_all }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_connect_user_hierarchy_group __resource);
  ()

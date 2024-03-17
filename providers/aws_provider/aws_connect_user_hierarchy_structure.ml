(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_connect_user_hierarchy_structure__hierarchy_structure__level_five = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_connect_user_hierarchy_structure__hierarchy_structure__level_five *)

type aws_connect_user_hierarchy_structure__hierarchy_structure__level_four = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_connect_user_hierarchy_structure__hierarchy_structure__level_four *)

type aws_connect_user_hierarchy_structure__hierarchy_structure__level_one = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_connect_user_hierarchy_structure__hierarchy_structure__level_one *)

type aws_connect_user_hierarchy_structure__hierarchy_structure__level_three = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_connect_user_hierarchy_structure__hierarchy_structure__level_three *)

type aws_connect_user_hierarchy_structure__hierarchy_structure__level_two = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_connect_user_hierarchy_structure__hierarchy_structure__level_two *)

type aws_connect_user_hierarchy_structure__hierarchy_structure = {
  level_five :
    aws_connect_user_hierarchy_structure__hierarchy_structure__level_five
    list;
  level_four :
    aws_connect_user_hierarchy_structure__hierarchy_structure__level_four
    list;
  level_one :
    aws_connect_user_hierarchy_structure__hierarchy_structure__level_one
    list;
  level_three :
    aws_connect_user_hierarchy_structure__hierarchy_structure__level_three
    list;
  level_two :
    aws_connect_user_hierarchy_structure__hierarchy_structure__level_two
    list;
}
[@@deriving yojson_of]
(** aws_connect_user_hierarchy_structure__hierarchy_structure *)

type aws_connect_user_hierarchy_structure = {
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;  (** instance_id *)
  hierarchy_structure :
    aws_connect_user_hierarchy_structure__hierarchy_structure list;
}
[@@deriving yojson_of]
(** aws_connect_user_hierarchy_structure *)

let aws_connect_user_hierarchy_structure ?id ~instance_id
    ~hierarchy_structure __resource_id =
  let __resource_type = "aws_connect_user_hierarchy_structure" in
  let __resource = { id; instance_id; hierarchy_structure } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_connect_user_hierarchy_structure __resource);
  ()

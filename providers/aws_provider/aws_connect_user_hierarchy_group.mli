(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_connect_user_hierarchy_group__hierarchy_path__level_two = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}

type aws_connect_user_hierarchy_group__hierarchy_path__level_three = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}

type aws_connect_user_hierarchy_group__hierarchy_path__level_one = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}

type aws_connect_user_hierarchy_group__hierarchy_path__level_four = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}

type aws_connect_user_hierarchy_group__hierarchy_path__level_five = {
  arn : string;  (** arn *)
  id : string;  (** id *)
  name : string;  (** name *)
}

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

type aws_connect_user_hierarchy_group

val aws_connect_user_hierarchy_group :
  ?id:string ->
  ?parent_group_id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  instance_id:string ->
  name:string ->
  string ->
  unit

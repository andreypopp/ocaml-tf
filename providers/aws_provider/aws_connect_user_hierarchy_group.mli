(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_connect_user_hierarchy_group__hierarchy_path__level_two = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type aws_connect_user_hierarchy_group__hierarchy_path__level_three = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type aws_connect_user_hierarchy_group__hierarchy_path__level_one = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type aws_connect_user_hierarchy_group__hierarchy_path__level_four = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type aws_connect_user_hierarchy_group__hierarchy_path__level_five = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
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
  ?id:string prop ->
  ?parent_group_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  instance_id:string prop ->
  name:string prop ->
  string ->
  unit

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hierarchy_path__level_two = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type hierarchy_path__level_three = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type hierarchy_path__level_one = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type hierarchy_path__level_four = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type hierarchy_path__level_five = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type hierarchy_path = {
  level_five : hierarchy_path__level_five list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** level_five *)
  level_four : hierarchy_path__level_four list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** level_four *)
  level_one : hierarchy_path__level_one list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** level_one *)
  level_three : hierarchy_path__level_three list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** level_three *)
  level_two : hierarchy_path__level_two list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** level_two *)
}

type aws_connect_user_hierarchy_group

val aws_connect_user_hierarchy_group :
  ?id:string prop ->
  ?parent_group_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  instance_id:string prop ->
  name:string prop ->
  unit ->
  aws_connect_user_hierarchy_group

val yojson_of_aws_connect_user_hierarchy_group :
  aws_connect_user_hierarchy_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  hierarchy_group_id : string prop;
  hierarchy_path : hierarchy_path list prop;
  id : string prop;
  instance_id : string prop;
  level_id : string prop;
  name : string prop;
  parent_group_id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?parent_group_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  instance_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?parent_group_id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  instance_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource

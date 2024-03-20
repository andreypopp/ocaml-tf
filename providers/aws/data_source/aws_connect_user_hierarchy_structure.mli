(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hierarchy_structure__level_two = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type hierarchy_structure__level_three = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type hierarchy_structure__level_one = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type hierarchy_structure__level_four = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type hierarchy_structure__level_five = {
  arn : string prop;  (** arn *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type hierarchy_structure = {
  level_five : hierarchy_structure__level_five list;
      (** level_five *)
  level_four : hierarchy_structure__level_four list;
      (** level_four *)
  level_one : hierarchy_structure__level_one list;  (** level_one *)
  level_three : hierarchy_structure__level_three list;
      (** level_three *)
  level_two : hierarchy_structure__level_two list;  (** level_two *)
}

type aws_connect_user_hierarchy_structure

val aws_connect_user_hierarchy_structure :
  ?id:string prop ->
  instance_id:string prop ->
  unit ->
  aws_connect_user_hierarchy_structure

val yojson_of_aws_connect_user_hierarchy_structure :
  aws_connect_user_hierarchy_structure -> json

(** RESOURCE REGISTRATION *)

type t = private {
  hierarchy_structure : hierarchy_structure list prop;
  id : string prop;
  instance_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  instance_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  instance_id:string prop ->
  string ->
  t Tf_core.resource

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
  level_five : hierarchy_path__level_five list;  (** level_five *)
  level_four : hierarchy_path__level_four list;  (** level_four *)
  level_one : hierarchy_path__level_one list;  (** level_one *)
  level_three : hierarchy_path__level_three list;  (** level_three *)
  level_two : hierarchy_path__level_two list;  (** level_two *)
}

type aws_connect_user_hierarchy_group

val aws_connect_user_hierarchy_group :
  ?hierarchy_group_id:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  instance_id:string prop ->
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
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?hierarchy_group_id:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  instance_id:string prop ->
  string ->
  t

val make :
  ?hierarchy_group_id:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?tags:(string * string prop) list ->
  instance_id:string prop ->
  string ->
  t Tf_core.resource

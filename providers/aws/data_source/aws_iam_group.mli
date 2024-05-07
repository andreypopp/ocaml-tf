(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type users = {
  arn : string prop;  (** arn *)
  path : string prop;  (** path *)
  user_id : string prop;  (** user_id *)
  user_name : string prop;  (** user_name *)
}

type aws_iam_group

val aws_iam_group :
  ?id:string prop -> group_name:string prop -> unit -> aws_iam_group

val yojson_of_aws_iam_group : aws_iam_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  group_id : string prop;
  group_name : string prop;
  id : string prop;
  path : string prop;
  users : users list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  group_name:string prop ->
  string ->
  t Tf_core.resource

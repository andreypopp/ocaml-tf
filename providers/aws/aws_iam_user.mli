(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_iam_user

val aws_iam_user :
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?path:string prop ->
  ?permissions_boundary:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  unit ->
  aws_iam_user

val yojson_of_aws_iam_user : aws_iam_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  force_destroy : bool prop;
  id : string prop;
  name : string prop;
  path : string prop;
  permissions_boundary : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  unique_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?path:string prop ->
  ?permissions_boundary:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  string ->
  t

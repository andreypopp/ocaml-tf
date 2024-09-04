(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type role_last_used = {
  last_used_date : string prop;  (** last_used_date *)
  region : string prop;  (** region *)
}

type aws_iam_role

val aws_iam_role :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  aws_iam_role

val yojson_of_aws_iam_role : aws_iam_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  assume_role_policy : string prop;
  create_date : string prop;
  description : string prop;
  id : string prop;
  max_session_duration : float prop;
  name : string prop;
  path : string prop;
  permissions_boundary : string prop;
  role_last_used : role_last_used list prop;
  tags : string Tf_core.assoc prop;
  unique_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  name:string prop ->
  string ->
  t Tf_core.resource

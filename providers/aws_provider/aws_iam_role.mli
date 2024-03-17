(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_role__inline_policy
type aws_iam_role

type t = private {
  arn : string prop;
  assume_role_policy : string prop;
  create_date : string prop;
  description : string prop;
  force_detach_policies : bool prop;
  id : string prop;
  managed_policy_arns : string list prop;
  max_session_duration : float prop;
  name : string prop;
  name_prefix : string prop;
  path : string prop;
  permissions_boundary : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  unique_id : string prop;
}

val aws_iam_role :
  ?description:string prop ->
  ?force_detach_policies:bool prop ->
  ?id:string prop ->
  ?managed_policy_arns:string prop list ->
  ?max_session_duration:float prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?path:string prop ->
  ?permissions_boundary:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  assume_role_policy:string prop ->
  inline_policy:aws_iam_role__inline_policy list ->
  string ->
  t

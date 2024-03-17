(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_organizations_policy_attachment

type t = private {
  id : string prop;
  policy_id : string prop;
  skip_destroy : bool prop;
  target_id : string prop;
}

val aws_organizations_policy_attachment :
  ?id:string prop ->
  ?skip_destroy:bool prop ->
  policy_id:string prop ->
  target_id:string prop ->
  string ->
  t

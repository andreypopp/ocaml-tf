(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssoadmin_account_assignment__timeouts
type aws_ssoadmin_account_assignment

type t = private {
  id : string prop;
  instance_arn : string prop;
  permission_set_arn : string prop;
  principal_id : string prop;
  principal_type : string prop;
  target_id : string prop;
  target_type : string prop;
}

val aws_ssoadmin_account_assignment :
  ?id:string prop ->
  ?target_type:string prop ->
  ?timeouts:aws_ssoadmin_account_assignment__timeouts ->
  instance_arn:string prop ->
  permission_set_arn:string prop ->
  principal_id:string prop ->
  principal_type:string prop ->
  target_id:string prop ->
  string ->
  t

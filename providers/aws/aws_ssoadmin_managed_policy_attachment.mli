(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssoadmin_managed_policy_attachment__timeouts
type aws_ssoadmin_managed_policy_attachment

type t = private {
  id : string prop;
  instance_arn : string prop;
  managed_policy_arn : string prop;
  managed_policy_name : string prop;
  permission_set_arn : string prop;
}

val aws_ssoadmin_managed_policy_attachment :
  ?id:string prop ->
  ?timeouts:aws_ssoadmin_managed_policy_attachment__timeouts ->
  instance_arn:string prop ->
  managed_policy_arn:string prop ->
  permission_set_arn:string prop ->
  string ->
  t

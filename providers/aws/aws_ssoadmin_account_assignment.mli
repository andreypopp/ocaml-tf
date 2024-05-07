(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_ssoadmin_account_assignment

val aws_ssoadmin_account_assignment :
  ?id:string prop ->
  ?target_type:string prop ->
  ?timeouts:timeouts ->
  instance_arn:string prop ->
  permission_set_arn:string prop ->
  principal_id:string prop ->
  principal_type:string prop ->
  target_id:string prop ->
  unit ->
  aws_ssoadmin_account_assignment

val yojson_of_aws_ssoadmin_account_assignment :
  aws_ssoadmin_account_assignment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  instance_arn : string prop;
  permission_set_arn : string prop;
  principal_id : string prop;
  principal_type : string prop;
  target_id : string prop;
  target_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?target_type:string prop ->
  ?timeouts:timeouts ->
  instance_arn:string prop ->
  permission_set_arn:string prop ->
  principal_id:string prop ->
  principal_type:string prop ->
  target_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?target_type:string prop ->
  ?timeouts:timeouts ->
  instance_arn:string prop ->
  permission_set_arn:string prop ->
  principal_id:string prop ->
  principal_type:string prop ->
  target_id:string prop ->
  string ->
  t Tf_core.resource

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_ssoadmin_managed_policy_attachment

val aws_ssoadmin_managed_policy_attachment :
  ?id:string prop ->
  ?timeouts:timeouts ->
  instance_arn:string prop ->
  managed_policy_arn:string prop ->
  permission_set_arn:string prop ->
  unit ->
  aws_ssoadmin_managed_policy_attachment

val yojson_of_aws_ssoadmin_managed_policy_attachment :
  aws_ssoadmin_managed_policy_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  instance_arn : string prop;
  managed_policy_arn : string prop;
  managed_policy_name : string prop;
  permission_set_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  instance_arn:string prop ->
  managed_policy_arn:string prop ->
  permission_set_arn:string prop ->
  string ->
  t

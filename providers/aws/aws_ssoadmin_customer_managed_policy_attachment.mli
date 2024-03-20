(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type customer_managed_policy_reference

val customer_managed_policy_reference :
  ?path:string prop ->
  name:string prop ->
  unit ->
  customer_managed_policy_reference

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_ssoadmin_customer_managed_policy_attachment

val aws_ssoadmin_customer_managed_policy_attachment :
  ?id:string prop ->
  ?timeouts:timeouts ->
  instance_arn:string prop ->
  permission_set_arn:string prop ->
  customer_managed_policy_reference:
    customer_managed_policy_reference list ->
  unit ->
  aws_ssoadmin_customer_managed_policy_attachment

val yojson_of_aws_ssoadmin_customer_managed_policy_attachment :
  aws_ssoadmin_customer_managed_policy_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  instance_arn : string prop;
  permission_set_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  instance_arn:string prop ->
  permission_set_arn:string prop ->
  customer_managed_policy_reference:
    customer_managed_policy_reference list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  instance_arn:string prop ->
  permission_set_arn:string prop ->
  customer_managed_policy_reference:
    customer_managed_policy_reference list ->
  string ->
  t Tf_core.resource

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type permissions_boundary__customer_managed_policy_reference

val permissions_boundary__customer_managed_policy_reference :
  ?path:string prop ->
  name:string prop ->
  unit ->
  permissions_boundary__customer_managed_policy_reference

type permissions_boundary

val permissions_boundary :
  ?managed_policy_arn:string prop ->
  ?customer_managed_policy_reference:
    permissions_boundary__customer_managed_policy_reference list ->
  unit ->
  permissions_boundary

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_ssoadmin_permissions_boundary_attachment

val aws_ssoadmin_permissions_boundary_attachment :
  ?id:string prop ->
  ?timeouts:timeouts ->
  instance_arn:string prop ->
  permission_set_arn:string prop ->
  permissions_boundary:permissions_boundary list ->
  unit ->
  aws_ssoadmin_permissions_boundary_attachment

val yojson_of_aws_ssoadmin_permissions_boundary_attachment :
  aws_ssoadmin_permissions_boundary_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  permissions_boundary:permissions_boundary list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  instance_arn:string prop ->
  permission_set_arn:string prop ->
  permissions_boundary:permissions_boundary list ->
  string ->
  t Tf_core.resource

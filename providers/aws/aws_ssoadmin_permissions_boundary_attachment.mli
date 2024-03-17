(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssoadmin_permissions_boundary_attachment__permissions_boundary__customer_managed_policy_reference

type aws_ssoadmin_permissions_boundary_attachment__permissions_boundary

type aws_ssoadmin_permissions_boundary_attachment__timeouts
type aws_ssoadmin_permissions_boundary_attachment

type t = private {
  id : string prop;
  instance_arn : string prop;
  permission_set_arn : string prop;
}

val aws_ssoadmin_permissions_boundary_attachment :
  ?id:string prop ->
  ?timeouts:aws_ssoadmin_permissions_boundary_attachment__timeouts ->
  instance_arn:string prop ->
  permission_set_arn:string prop ->
  permissions_boundary:
    aws_ssoadmin_permissions_boundary_attachment__permissions_boundary
    list ->
  string ->
  t

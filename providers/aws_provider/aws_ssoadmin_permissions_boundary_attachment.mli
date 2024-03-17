(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssoadmin_permissions_boundary_attachment__permissions_boundary__customer_managed_policy_reference

type aws_ssoadmin_permissions_boundary_attachment__permissions_boundary

type aws_ssoadmin_permissions_boundary_attachment__timeouts
type aws_ssoadmin_permissions_boundary_attachment

val aws_ssoadmin_permissions_boundary_attachment :
  ?id:string ->
  ?timeouts:aws_ssoadmin_permissions_boundary_attachment__timeouts ->
  instance_arn:string ->
  permission_set_arn:string ->
  permissions_boundary:
    aws_ssoadmin_permissions_boundary_attachment__permissions_boundary
    list ->
  string ->
  unit

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ami_launch_permission

val aws_ami_launch_permission :
  ?account_id:string prop ->
  ?group:string prop ->
  ?id:string prop ->
  ?organization_arn:string prop ->
  ?organizational_unit_arn:string prop ->
  image_id:string prop ->
  string ->
  unit

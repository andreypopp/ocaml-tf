(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssoadmin_instance_access_control_attributes__attribute__value
type aws_ssoadmin_instance_access_control_attributes__attribute
type aws_ssoadmin_instance_access_control_attributes

val aws_ssoadmin_instance_access_control_attributes :
  ?id:string prop ->
  instance_arn:string prop ->
  attribute:
    aws_ssoadmin_instance_access_control_attributes__attribute list ->
  string ->
  unit

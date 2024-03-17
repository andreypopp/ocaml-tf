(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_endpoint_security_group_association

val aws_vpc_endpoint_security_group_association :
  ?replace_default_association:bool ->
  security_group_id:string ->
  vpc_endpoint_id:string ->
  string ->
  unit

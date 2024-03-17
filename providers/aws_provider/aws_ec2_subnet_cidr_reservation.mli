(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_subnet_cidr_reservation

val aws_ec2_subnet_cidr_reservation :
  ?description:string prop ->
  ?id:string prop ->
  cidr_block:string prop ->
  reservation_type:string prop ->
  subnet_id:string prop ->
  string ->
  unit

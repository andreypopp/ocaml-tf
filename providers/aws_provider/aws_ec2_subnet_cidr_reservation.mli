(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_subnet_cidr_reservation

type t = private {
  cidr_block : string prop;
  description : string prop;
  id : string prop;
  owner_id : string prop;
  reservation_type : string prop;
  subnet_id : string prop;
}

val aws_ec2_subnet_cidr_reservation :
  ?description:string prop ->
  ?id:string prop ->
  cidr_block:string prop ->
  reservation_type:string prop ->
  subnet_id:string prop ->
  string ->
  t

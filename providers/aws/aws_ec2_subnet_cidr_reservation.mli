(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ec2_subnet_cidr_reservation

val aws_ec2_subnet_cidr_reservation :
  ?description:string prop ->
  ?id:string prop ->
  cidr_block:string prop ->
  reservation_type:string prop ->
  subnet_id:string prop ->
  unit ->
  aws_ec2_subnet_cidr_reservation

val yojson_of_aws_ec2_subnet_cidr_reservation :
  aws_ec2_subnet_cidr_reservation -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cidr_block : string prop;
  description : string prop;
  id : string prop;
  owner_id : string prop;
  reservation_type : string prop;
  subnet_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  cidr_block:string prop ->
  reservation_type:string prop ->
  subnet_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  cidr_block:string prop ->
  reservation_type:string prop ->
  subnet_id:string prop ->
  string ->
  t Tf_core.resource

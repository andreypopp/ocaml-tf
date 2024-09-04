(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type aws_ec2_capacity_block_reservation

val aws_ec2_capacity_block_reservation :
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  capacity_block_offering_id:string prop ->
  instance_platform:string prop ->
  unit ->
  aws_ec2_capacity_block_reservation

val yojson_of_aws_ec2_capacity_block_reservation :
  aws_ec2_capacity_block_reservation -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  availability_zone : string prop;
  capacity_block_offering_id : string prop;
  created_date : string prop;
  ebs_optimized : bool prop;
  end_date : string prop;
  end_date_type : string prop;
  id : string prop;
  instance_count : float prop;
  instance_platform : string prop;
  instance_type : string prop;
  outpost_arn : string prop;
  placement_group_arn : string prop;
  reservation_type : string prop;
  start_date : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  tenancy : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  capacity_block_offering_id:string prop ->
  instance_platform:string prop ->
  string ->
  t

val make :
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  capacity_block_offering_id:string prop ->
  instance_platform:string prop ->
  string ->
  t Tf_core.resource

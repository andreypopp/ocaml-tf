(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ec2_capacity_block_offering

val aws_ec2_capacity_block_offering :
  ?end_date_range:string prop ->
  ?start_date_range:string prop ->
  capacity_duration_hours:float prop ->
  instance_count:float prop ->
  instance_type:string prop ->
  unit ->
  aws_ec2_capacity_block_offering

val yojson_of_aws_ec2_capacity_block_offering :
  aws_ec2_capacity_block_offering -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  availability_zone : string prop;
  capacity_block_offering_id : string prop;
  capacity_duration_hours : float prop;
  currency_code : string prop;
  end_date_range : string prop;
  instance_count : float prop;
  instance_type : string prop;
  start_date_range : string prop;
  tenancy : string prop;
  upfront_fee : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?end_date_range:string prop ->
  ?start_date_range:string prop ->
  capacity_duration_hours:float prop ->
  instance_count:float prop ->
  instance_type:string prop ->
  string ->
  t

val make :
  ?end_date_range:string prop ->
  ?start_date_range:string prop ->
  capacity_duration_hours:float prop ->
  instance_count:float prop ->
  instance_type:string prop ->
  string ->
  t Tf_core.resource

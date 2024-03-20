(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ec2_capacity_reservation

val aws_ec2_capacity_reservation :
  ?ebs_optimized:bool prop ->
  ?end_date:string prop ->
  ?end_date_type:string prop ->
  ?ephemeral_storage:bool prop ->
  ?id:string prop ->
  ?instance_match_criteria:string prop ->
  ?outpost_arn:string prop ->
  ?placement_group_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?tenancy:string prop ->
  availability_zone:string prop ->
  instance_count:float prop ->
  instance_platform:string prop ->
  instance_type:string prop ->
  unit ->
  aws_ec2_capacity_reservation

val yojson_of_aws_ec2_capacity_reservation :
  aws_ec2_capacity_reservation -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  availability_zone : string prop;
  ebs_optimized : bool prop;
  end_date : string prop;
  end_date_type : string prop;
  ephemeral_storage : bool prop;
  id : string prop;
  instance_count : float prop;
  instance_match_criteria : string prop;
  instance_platform : string prop;
  instance_type : string prop;
  outpost_arn : string prop;
  owner_id : string prop;
  placement_group_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  tenancy : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?ebs_optimized:bool prop ->
  ?end_date:string prop ->
  ?end_date_type:string prop ->
  ?ephemeral_storage:bool prop ->
  ?id:string prop ->
  ?instance_match_criteria:string prop ->
  ?outpost_arn:string prop ->
  ?placement_group_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?tenancy:string prop ->
  availability_zone:string prop ->
  instance_count:float prop ->
  instance_platform:string prop ->
  instance_type:string prop ->
  string ->
  t

val make :
  ?ebs_optimized:bool prop ->
  ?end_date:string prop ->
  ?end_date_type:string prop ->
  ?ephemeral_storage:bool prop ->
  ?id:string prop ->
  ?instance_match_criteria:string prop ->
  ?outpost_arn:string prop ->
  ?placement_group_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?tenancy:string prop ->
  availability_zone:string prop ->
  instance_count:float prop ->
  instance_platform:string prop ->
  instance_type:string prop ->
  string ->
  t Tf_core.resource

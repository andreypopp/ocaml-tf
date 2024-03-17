(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  string ->
  unit

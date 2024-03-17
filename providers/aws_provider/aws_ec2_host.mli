(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_host

type t = private {
  arn : string prop;
  asset_id : string prop;
  auto_placement : string prop;
  availability_zone : string prop;
  host_recovery : string prop;
  id : string prop;
  instance_family : string prop;
  instance_type : string prop;
  outpost_arn : string prop;
  owner_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_ec2_host :
  ?asset_id:string prop ->
  ?auto_placement:string prop ->
  ?host_recovery:string prop ->
  ?id:string prop ->
  ?instance_family:string prop ->
  ?instance_type:string prop ->
  ?outpost_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  availability_zone:string prop ->
  string ->
  t

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_ec2_host

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
  unit ->
  aws_ec2_host

val yojson_of_aws_ec2_host : aws_ec2_host -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
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

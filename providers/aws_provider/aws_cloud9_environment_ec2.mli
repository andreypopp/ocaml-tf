(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloud9_environment_ec2

val aws_cloud9_environment_ec2 :
  ?automatic_stop_time_minutes:float prop ->
  ?connection_type:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?owner_arn:string prop ->
  ?subnet_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  image_id:string prop ->
  instance_type:string prop ->
  name:string prop ->
  string ->
  unit

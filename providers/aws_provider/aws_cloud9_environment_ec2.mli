(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloud9_environment_ec2

val aws_cloud9_environment_ec2 :
  ?automatic_stop_time_minutes:float ->
  ?connection_type:string ->
  ?description:string ->
  ?id:string ->
  ?owner_arn:string ->
  ?subnet_id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  image_id:string ->
  instance_type:string ->
  name:string ->
  string ->
  unit

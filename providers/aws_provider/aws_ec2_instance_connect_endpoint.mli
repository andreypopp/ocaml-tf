(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_instance_connect_endpoint__timeouts
type aws_ec2_instance_connect_endpoint

val aws_ec2_instance_connect_endpoint :
  ?tags:(string * string) list ->
  ?timeouts:aws_ec2_instance_connect_endpoint__timeouts ->
  subnet_id:string ->
  string ->
  unit

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_instance_connect_endpoint__timeouts
type aws_ec2_instance_connect_endpoint

val aws_ec2_instance_connect_endpoint :
  ?preserve_client_ip:bool prop ->
  ?security_group_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?timeouts:aws_ec2_instance_connect_endpoint__timeouts ->
  subnet_id:string prop ->
  string ->
  unit

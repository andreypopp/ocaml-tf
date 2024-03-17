(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_instance_state__timeouts
type aws_ec2_instance_state

val aws_ec2_instance_state :
  ?force:bool ->
  ?timeouts:aws_ec2_instance_state__timeouts ->
  instance_id:string ->
  state:string ->
  string ->
  unit

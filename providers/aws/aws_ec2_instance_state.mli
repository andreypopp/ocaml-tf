(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ec2_instance_state__timeouts
type aws_ec2_instance_state

type t = private {
  force : bool prop;
  id : string prop;
  instance_id : string prop;
  state : string prop;
}

val aws_ec2_instance_state :
  ?force:bool prop ->
  ?id:string prop ->
  ?timeouts:aws_ec2_instance_state__timeouts ->
  instance_id:string prop ->
  state:string prop ->
  string ->
  t

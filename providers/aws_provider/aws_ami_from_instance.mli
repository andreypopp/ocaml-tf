(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ami_from_instance__ebs_block_device
type aws_ami_from_instance__ephemeral_block_device
type aws_ami_from_instance__timeouts
type aws_ami_from_instance

val aws_ami_from_instance :
  ?deprecation_time:string ->
  ?description:string ->
  ?id:string ->
  ?snapshot_without_reboot:bool ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_ami_from_instance__timeouts ->
  name:string ->
  source_instance_id:string ->
  ebs_block_device:aws_ami_from_instance__ebs_block_device list ->
  ephemeral_block_device:
    aws_ami_from_instance__ephemeral_block_device list ->
  string ->
  unit

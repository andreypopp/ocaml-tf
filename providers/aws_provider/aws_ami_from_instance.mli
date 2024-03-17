(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ami_from_instance__ebs_block_device
type aws_ami_from_instance__ephemeral_block_device
type aws_ami_from_instance__timeouts
type aws_ami_from_instance

val aws_ami_from_instance :
  ?deprecation_time:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?snapshot_without_reboot:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_ami_from_instance__timeouts ->
  name:string prop ->
  source_instance_id:string prop ->
  ebs_block_device:aws_ami_from_instance__ebs_block_device list ->
  ephemeral_block_device:
    aws_ami_from_instance__ephemeral_block_device list ->
  string ->
  unit

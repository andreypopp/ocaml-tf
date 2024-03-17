(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ami_copy__ebs_block_device
type aws_ami_copy__ephemeral_block_device
type aws_ami_copy__timeouts
type aws_ami_copy

val aws_ami_copy :
  ?deprecation_time:string ->
  ?description:string ->
  ?destination_outpost_arn:string ->
  ?encrypted:bool ->
  ?id:string ->
  ?kms_key_id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_ami_copy__timeouts ->
  name:string ->
  source_ami_id:string ->
  source_ami_region:string ->
  ebs_block_device:aws_ami_copy__ebs_block_device list ->
  ephemeral_block_device:aws_ami_copy__ephemeral_block_device list ->
  string ->
  unit

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ami_copy__ebs_block_device
type aws_ami_copy__ephemeral_block_device
type aws_ami_copy__timeouts
type aws_ami_copy

val aws_ami_copy :
  ?deprecation_time:string prop ->
  ?description:string prop ->
  ?destination_outpost_arn:string prop ->
  ?encrypted:bool prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_ami_copy__timeouts ->
  name:string prop ->
  source_ami_id:string prop ->
  source_ami_region:string prop ->
  ebs_block_device:aws_ami_copy__ebs_block_device list ->
  ephemeral_block_device:aws_ami_copy__ephemeral_block_device list ->
  string ->
  unit

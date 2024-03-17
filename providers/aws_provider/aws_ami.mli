(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ami__ebs_block_device
type aws_ami__ephemeral_block_device
type aws_ami__timeouts
type aws_ami

val aws_ami :
  ?architecture:string prop ->
  ?boot_mode:string prop ->
  ?deprecation_time:string prop ->
  ?description:string prop ->
  ?ena_support:bool prop ->
  ?id:string prop ->
  ?image_location:string prop ->
  ?imds_support:string prop ->
  ?kernel_id:string prop ->
  ?ramdisk_id:string prop ->
  ?root_device_name:string prop ->
  ?sriov_net_support:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?tpm_support:string prop ->
  ?virtualization_type:string prop ->
  ?timeouts:aws_ami__timeouts ->
  name:string prop ->
  ebs_block_device:aws_ami__ebs_block_device list ->
  ephemeral_block_device:aws_ami__ephemeral_block_device list ->
  string ->
  unit

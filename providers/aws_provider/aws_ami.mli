(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ami__ebs_block_device
type aws_ami__ephemeral_block_device
type aws_ami__timeouts
type aws_ami

val aws_ami :
  ?architecture:string ->
  ?boot_mode:string ->
  ?deprecation_time:string ->
  ?description:string ->
  ?ena_support:bool ->
  ?imds_support:string ->
  ?kernel_id:string ->
  ?ramdisk_id:string ->
  ?root_device_name:string ->
  ?sriov_net_support:string ->
  ?tags:(string * string) list ->
  ?tpm_support:string ->
  ?virtualization_type:string ->
  ?timeouts:aws_ami__timeouts ->
  name:string ->
  ebs_block_device:aws_ami__ebs_block_device list ->
  ephemeral_block_device:aws_ami__ephemeral_block_device list ->
  string ->
  unit

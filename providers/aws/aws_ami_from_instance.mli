(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ami_from_instance__ebs_block_device
type aws_ami_from_instance__ephemeral_block_device
type aws_ami_from_instance__timeouts
type aws_ami_from_instance

type t = private {
  architecture : string prop;
  arn : string prop;
  boot_mode : string prop;
  deprecation_time : string prop;
  description : string prop;
  ena_support : bool prop;
  hypervisor : string prop;
  id : string prop;
  image_location : string prop;
  image_owner_alias : string prop;
  image_type : string prop;
  imds_support : string prop;
  kernel_id : string prop;
  manage_ebs_snapshots : bool prop;
  name : string prop;
  owner_id : string prop;
  platform : string prop;
  platform_details : string prop;
  public : bool prop;
  ramdisk_id : string prop;
  root_device_name : string prop;
  root_snapshot_id : string prop;
  snapshot_without_reboot : bool prop;
  source_instance_id : string prop;
  sriov_net_support : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  tpm_support : string prop;
  usage_operation : string prop;
  virtualization_type : string prop;
}

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
  t

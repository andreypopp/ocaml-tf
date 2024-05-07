(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type ebs_block_device

val ebs_block_device :
  ?delete_on_termination:bool prop ->
  ?encrypted:bool prop ->
  ?iops:float prop ->
  ?outpost_arn:string prop ->
  ?snapshot_id:string prop ->
  ?throughput:float prop ->
  ?volume_size:float prop ->
  ?volume_type:string prop ->
  device_name:string prop ->
  unit ->
  ebs_block_device

type ephemeral_block_device

val ephemeral_block_device :
  device_name:string prop ->
  virtual_name:string prop ->
  unit ->
  ephemeral_block_device

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

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
  ?timeouts:timeouts ->
  name:string prop ->
  ebs_block_device:ebs_block_device list ->
  ephemeral_block_device:ephemeral_block_device list ->
  unit ->
  aws_ami

val yojson_of_aws_ami : aws_ami -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  sriov_net_support : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  tpm_support : string prop;
  usage_operation : string prop;
  virtualization_type : string prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?timeouts:timeouts ->
  name:string prop ->
  ebs_block_device:ebs_block_device list ->
  ephemeral_block_device:ephemeral_block_device list ->
  string ->
  t

val make :
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
  ?timeouts:timeouts ->
  name:string prop ->
  ebs_block_device:ebs_block_device list ->
  ephemeral_block_device:ephemeral_block_device list ->
  string ->
  t Tf_core.resource

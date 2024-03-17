(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ami_from_instance__ebs_block_device = {
  delete_on_termination : bool prop;  (** delete_on_termination *)
  device_name : string prop;  (** device_name *)
  encrypted : bool prop;  (** encrypted *)
  iops : float prop;  (** iops *)
  outpost_arn : string prop;  (** outpost_arn *)
  snapshot_id : string prop;  (** snapshot_id *)
  throughput : float prop;  (** throughput *)
  volume_size : float prop;  (** volume_size *)
  volume_type : string prop;  (** volume_type *)
}
[@@deriving yojson_of]
(** aws_ami_from_instance__ebs_block_device *)

type aws_ami_from_instance__ephemeral_block_device = {
  device_name : string prop;  (** device_name *)
  virtual_name : string prop;  (** virtual_name *)
}
[@@deriving yojson_of]
(** aws_ami_from_instance__ephemeral_block_device *)

type aws_ami_from_instance__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_ami_from_instance__timeouts *)

type aws_ami_from_instance = {
  deprecation_time : string prop option; [@option]
      (** deprecation_time *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  snapshot_without_reboot : bool prop option; [@option]
      (** snapshot_without_reboot *)
  source_instance_id : string prop;  (** source_instance_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  ebs_block_device : aws_ami_from_instance__ebs_block_device list;
  ephemeral_block_device :
    aws_ami_from_instance__ephemeral_block_device list;
  timeouts : aws_ami_from_instance__timeouts option;
}
[@@deriving yojson_of]
(** aws_ami_from_instance *)

type t = {
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

let aws_ami_from_instance ?deprecation_time ?description ?id
    ?snapshot_without_reboot ?tags ?tags_all ?timeouts ~name
    ~source_instance_id ~ebs_block_device ~ephemeral_block_device
    __resource_id =
  let __resource_type = "aws_ami_from_instance" in
  let __resource =
    ({
       deprecation_time;
       description;
       id;
       name;
       snapshot_without_reboot;
       source_instance_id;
       tags;
       tags_all;
       ebs_block_device;
       ephemeral_block_device;
       timeouts;
     }
      : aws_ami_from_instance)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ami_from_instance __resource);
  let __resource_attributes =
    ({
       architecture =
         Prop.computed __resource_type __resource_id "architecture";
       arn = Prop.computed __resource_type __resource_id "arn";
       boot_mode =
         Prop.computed __resource_type __resource_id "boot_mode";
       deprecation_time =
         Prop.computed __resource_type __resource_id
           "deprecation_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       ena_support =
         Prop.computed __resource_type __resource_id "ena_support";
       hypervisor =
         Prop.computed __resource_type __resource_id "hypervisor";
       id = Prop.computed __resource_type __resource_id "id";
       image_location =
         Prop.computed __resource_type __resource_id "image_location";
       image_owner_alias =
         Prop.computed __resource_type __resource_id
           "image_owner_alias";
       image_type =
         Prop.computed __resource_type __resource_id "image_type";
       imds_support =
         Prop.computed __resource_type __resource_id "imds_support";
       kernel_id =
         Prop.computed __resource_type __resource_id "kernel_id";
       manage_ebs_snapshots =
         Prop.computed __resource_type __resource_id
           "manage_ebs_snapshots";
       name = Prop.computed __resource_type __resource_id "name";
       owner_id =
         Prop.computed __resource_type __resource_id "owner_id";
       platform =
         Prop.computed __resource_type __resource_id "platform";
       platform_details =
         Prop.computed __resource_type __resource_id
           "platform_details";
       public = Prop.computed __resource_type __resource_id "public";
       ramdisk_id =
         Prop.computed __resource_type __resource_id "ramdisk_id";
       root_device_name =
         Prop.computed __resource_type __resource_id
           "root_device_name";
       root_snapshot_id =
         Prop.computed __resource_type __resource_id
           "root_snapshot_id";
       snapshot_without_reboot =
         Prop.computed __resource_type __resource_id
           "snapshot_without_reboot";
       source_instance_id =
         Prop.computed __resource_type __resource_id
           "source_instance_id";
       sriov_net_support =
         Prop.computed __resource_type __resource_id
           "sriov_net_support";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       tpm_support =
         Prop.computed __resource_type __resource_id "tpm_support";
       usage_operation =
         Prop.computed __resource_type __resource_id
           "usage_operation";
       virtualization_type =
         Prop.computed __resource_type __resource_id
           "virtualization_type";
     }
      : t)
  in
  __resource_attributes

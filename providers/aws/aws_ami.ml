(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type ebs_block_device = {
  delete_on_termination : bool prop option; [@option]
      (** delete_on_termination *)
  device_name : string prop;  (** device_name *)
  encrypted : bool prop option; [@option]  (** encrypted *)
  iops : float prop option; [@option]  (** iops *)
  outpost_arn : string prop option; [@option]  (** outpost_arn *)
  snapshot_id : string prop option; [@option]  (** snapshot_id *)
  throughput : float prop option; [@option]  (** throughput *)
  volume_size : float prop option; [@option]  (** volume_size *)
  volume_type : string prop option; [@option]  (** volume_type *)
}
[@@deriving yojson_of]
(** ebs_block_device *)

type ephemeral_block_device = {
  device_name : string prop;  (** device_name *)
  virtual_name : string prop;  (** virtual_name *)
}
[@@deriving yojson_of]
(** ephemeral_block_device *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ami = {
  architecture : string prop option; [@option]  (** architecture *)
  boot_mode : string prop option; [@option]  (** boot_mode *)
  deprecation_time : string prop option; [@option]
      (** deprecation_time *)
  description : string prop option; [@option]  (** description *)
  ena_support : bool prop option; [@option]  (** ena_support *)
  id : string prop option; [@option]  (** id *)
  image_location : string prop option; [@option]
      (** image_location *)
  imds_support : string prop option; [@option]  (** imds_support *)
  kernel_id : string prop option; [@option]  (** kernel_id *)
  name : string prop;  (** name *)
  ramdisk_id : string prop option; [@option]  (** ramdisk_id *)
  root_device_name : string prop option; [@option]
      (** root_device_name *)
  sriov_net_support : string prop option; [@option]
      (** sriov_net_support *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  tpm_support : string prop option; [@option]  (** tpm_support *)
  virtualization_type : string prop option; [@option]
      (** virtualization_type *)
  ebs_block_device : ebs_block_device list;
  ephemeral_block_device : ephemeral_block_device list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ami *)

let ebs_block_device ?delete_on_termination ?encrypted ?iops
    ?outpost_arn ?snapshot_id ?throughput ?volume_size ?volume_type
    ~device_name () : ebs_block_device =
  {
    delete_on_termination;
    device_name;
    encrypted;
    iops;
    outpost_arn;
    snapshot_id;
    throughput;
    volume_size;
    volume_type;
  }

let ephemeral_block_device ~device_name ~virtual_name () :
    ephemeral_block_device =
  { device_name; virtual_name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_ami ?architecture ?boot_mode ?deprecation_time ?description
    ?ena_support ?id ?image_location ?imds_support ?kernel_id
    ?ramdisk_id ?root_device_name ?sriov_net_support ?tags ?tags_all
    ?tpm_support ?virtualization_type ?timeouts ~name
    ~ebs_block_device ~ephemeral_block_device () : aws_ami =
  {
    architecture;
    boot_mode;
    deprecation_time;
    description;
    ena_support;
    id;
    image_location;
    imds_support;
    kernel_id;
    name;
    ramdisk_id;
    root_device_name;
    sriov_net_support;
    tags;
    tags_all;
    tpm_support;
    virtualization_type;
    ebs_block_device;
    ephemeral_block_device;
    timeouts;
  }

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
  sriov_net_support : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  tpm_support : string prop;
  usage_operation : string prop;
  virtualization_type : string prop;
}

let register ?tf_module ?architecture ?boot_mode ?deprecation_time
    ?description ?ena_support ?id ?image_location ?imds_support
    ?kernel_id ?ramdisk_id ?root_device_name ?sriov_net_support ?tags
    ?tags_all ?tpm_support ?virtualization_type ?timeouts ~name
    ~ebs_block_device ~ephemeral_block_device __resource_id =
  let __resource_type = "aws_ami" in
  let __resource =
    aws_ami ?architecture ?boot_mode ?deprecation_time ?description
      ?ena_support ?id ?image_location ?imds_support ?kernel_id
      ?ramdisk_id ?root_device_name ?sriov_net_support ?tags
      ?tags_all ?tpm_support ?virtualization_type ?timeouts ~name
      ~ebs_block_device ~ephemeral_block_device ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ami __resource);
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

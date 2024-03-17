(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ami__ebs_block_device = {
  delete_on_termination : bool option; [@option]
      (** delete_on_termination *)
  device_name : string;  (** device_name *)
  encrypted : bool option; [@option]  (** encrypted *)
  iops : float option; [@option]  (** iops *)
  outpost_arn : string option; [@option]  (** outpost_arn *)
  snapshot_id : string option; [@option]  (** snapshot_id *)
  throughput : float option; [@option]  (** throughput *)
  volume_size : float option; [@option]  (** volume_size *)
  volume_type : string option; [@option]  (** volume_type *)
}
[@@deriving yojson_of]
(** aws_ami__ebs_block_device *)

type aws_ami__ephemeral_block_device = {
  device_name : string;  (** device_name *)
  virtual_name : string;  (** virtual_name *)
}
[@@deriving yojson_of]
(** aws_ami__ephemeral_block_device *)

type aws_ami__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_ami__timeouts *)

type aws_ami = {
  architecture : string option; [@option]  (** architecture *)
  boot_mode : string option; [@option]  (** boot_mode *)
  deprecation_time : string option; [@option]
      (** deprecation_time *)
  description : string option; [@option]  (** description *)
  ena_support : bool option; [@option]  (** ena_support *)
  id : string option; [@option]  (** id *)
  image_location : string option; [@option]  (** image_location *)
  imds_support : string option; [@option]  (** imds_support *)
  kernel_id : string option; [@option]  (** kernel_id *)
  name : string;  (** name *)
  ramdisk_id : string option; [@option]  (** ramdisk_id *)
  root_device_name : string option; [@option]
      (** root_device_name *)
  sriov_net_support : string option; [@option]
      (** sriov_net_support *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  tpm_support : string option; [@option]  (** tpm_support *)
  virtualization_type : string option; [@option]
      (** virtualization_type *)
  ebs_block_device : aws_ami__ebs_block_device list;
  ephemeral_block_device : aws_ami__ephemeral_block_device list;
  timeouts : aws_ami__timeouts option;
}
[@@deriving yojson_of]
(** aws_ami *)

let aws_ami ?architecture ?boot_mode ?deprecation_time ?description
    ?ena_support ?id ?image_location ?imds_support ?kernel_id
    ?ramdisk_id ?root_device_name ?sriov_net_support ?tags ?tags_all
    ?tpm_support ?virtualization_type ?timeouts ~name
    ~ebs_block_device ~ephemeral_block_device __resource_id =
  let __resource_type = "aws_ami" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ami __resource);
  ()

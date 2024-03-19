(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type ebs_block_device = unit [@@deriving yojson_of]
type ephemeral_block_device = unit [@@deriving yojson_of]

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ami_copy = {
  deprecation_time : string prop option; [@option]
      (** deprecation_time *)
  description : string prop option; [@option]  (** description *)
  destination_outpost_arn : string prop option; [@option]
      (** destination_outpost_arn *)
  encrypted : bool prop option; [@option]  (** encrypted *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  name : string prop;  (** name *)
  source_ami_id : string prop;  (** source_ami_id *)
  source_ami_region : string prop;  (** source_ami_region *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  ebs_block_device : ebs_block_device list;
  ephemeral_block_device : ephemeral_block_device list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ami_copy *)

let ebs_block_device () = ()
let ephemeral_block_device () = ()

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_ami_copy ?deprecation_time ?description
    ?destination_outpost_arn ?encrypted ?id ?kms_key_id ?tags
    ?tags_all ?timeouts ~name ~source_ami_id ~source_ami_region
    ~ebs_block_device ~ephemeral_block_device () : aws_ami_copy =
  {
    deprecation_time;
    description;
    destination_outpost_arn;
    encrypted;
    id;
    kms_key_id;
    name;
    source_ami_id;
    source_ami_region;
    tags;
    tags_all;
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
  destination_outpost_arn : string prop;
  ena_support : bool prop;
  encrypted : bool prop;
  hypervisor : string prop;
  id : string prop;
  image_location : string prop;
  image_owner_alias : string prop;
  image_type : string prop;
  imds_support : string prop;
  kernel_id : string prop;
  kms_key_id : string prop;
  manage_ebs_snapshots : bool prop;
  name : string prop;
  owner_id : string prop;
  platform : string prop;
  platform_details : string prop;
  public : bool prop;
  ramdisk_id : string prop;
  root_device_name : string prop;
  root_snapshot_id : string prop;
  source_ami_id : string prop;
  source_ami_region : string prop;
  sriov_net_support : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  tpm_support : string prop;
  usage_operation : string prop;
  virtualization_type : string prop;
}

let register ?tf_module ?deprecation_time ?description
    ?destination_outpost_arn ?encrypted ?id ?kms_key_id ?tags
    ?tags_all ?timeouts ~name ~source_ami_id ~source_ami_region
    ~ebs_block_device ~ephemeral_block_device __resource_id =
  let __resource_type = "aws_ami_copy" in
  let __resource =
    aws_ami_copy ?deprecation_time ?description
      ?destination_outpost_arn ?encrypted ?id ?kms_key_id ?tags
      ?tags_all ?timeouts ~name ~source_ami_id ~source_ami_region
      ~ebs_block_device ~ephemeral_block_device ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ami_copy __resource);
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
       destination_outpost_arn =
         Prop.computed __resource_type __resource_id
           "destination_outpost_arn";
       ena_support =
         Prop.computed __resource_type __resource_id "ena_support";
       encrypted =
         Prop.computed __resource_type __resource_id "encrypted";
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
       kms_key_id =
         Prop.computed __resource_type __resource_id "kms_key_id";
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
       source_ami_id =
         Prop.computed __resource_type __resource_id "source_ami_id";
       source_ami_region =
         Prop.computed __resource_type __resource_id
           "source_ami_region";
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

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ebs_block_device = {
  delete_on_termination : bool prop option; [@option]
  device_name : string prop;
  encrypted : bool prop option; [@option]
  iops : float prop option; [@option]
  outpost_arn : string prop option; [@option]
  snapshot_id : string prop option; [@option]
  throughput : float prop option; [@option]
  volume_size : float prop option; [@option]
  volume_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ebs_block_device) -> ()

let yojson_of_ebs_block_device =
  (function
   | {
       delete_on_termination = v_delete_on_termination;
       device_name = v_device_name;
       encrypted = v_encrypted;
       iops = v_iops;
       outpost_arn = v_outpost_arn;
       snapshot_id = v_snapshot_id;
       throughput = v_throughput;
       volume_size = v_volume_size;
       volume_type = v_volume_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_volume_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "volume_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_volume_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "volume_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_throughput with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "throughput", arg in
             bnd :: bnds
       in
       let bnds =
         match v_snapshot_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "snapshot_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_outpost_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "outpost_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iops with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "iops", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encrypted with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "encrypted", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_device_name in
         ("device_name", arg) :: bnds
       in
       let bnds =
         match v_delete_on_termination with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_on_termination", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ebs_block_device -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ebs_block_device

[@@@deriving.end]

type ephemeral_block_device = {
  device_name : string prop;
  virtual_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ephemeral_block_device) -> ()

let yojson_of_ephemeral_block_device =
  (function
   | { device_name = v_device_name; virtual_name = v_virtual_name }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_virtual_name in
         ("virtual_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_device_name in
         ("device_name", arg) :: bnds
       in
       `Assoc bnds
    : ephemeral_block_device -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ephemeral_block_device

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_ami = {
  architecture : string prop option; [@option]
  boot_mode : string prop option; [@option]
  deprecation_time : string prop option; [@option]
  description : string prop option; [@option]
  ena_support : bool prop option; [@option]
  id : string prop option; [@option]
  image_location : string prop option; [@option]
  imds_support : string prop option; [@option]
  kernel_id : string prop option; [@option]
  name : string prop;
  ramdisk_id : string prop option; [@option]
  root_device_name : string prop option; [@option]
  sriov_net_support : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  tpm_support : string prop option; [@option]
  virtualization_type : string prop option; [@option]
  ebs_block_device : ebs_block_device list;
  ephemeral_block_device : ephemeral_block_device list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ami) -> ()

let yojson_of_aws_ami =
  (function
   | {
       architecture = v_architecture;
       boot_mode = v_boot_mode;
       deprecation_time = v_deprecation_time;
       description = v_description;
       ena_support = v_ena_support;
       id = v_id;
       image_location = v_image_location;
       imds_support = v_imds_support;
       kernel_id = v_kernel_id;
       name = v_name;
       ramdisk_id = v_ramdisk_id;
       root_device_name = v_root_device_name;
       sriov_net_support = v_sriov_net_support;
       tags = v_tags;
       tags_all = v_tags_all;
       tpm_support = v_tpm_support;
       virtualization_type = v_virtualization_type;
       ebs_block_device = v_ebs_block_device;
       ephemeral_block_device = v_ephemeral_block_device;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_ephemeral_block_device
             v_ephemeral_block_device
         in
         ("ephemeral_block_device", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_ebs_block_device
             v_ebs_block_device
         in
         ("ebs_block_device", arg) :: bnds
       in
       let bnds =
         match v_virtualization_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "virtualization_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tpm_support with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tpm_support", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sriov_net_support with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sriov_net_support", arg in
             bnd :: bnds
       in
       let bnds =
         match v_root_device_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "root_device_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ramdisk_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ramdisk_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_kernel_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kernel_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_imds_support with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "imds_support", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_location", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ena_support with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ena_support", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deprecation_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deprecation_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boot_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "boot_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_architecture with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "architecture", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ami -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ami

[@@@deriving.end]

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

let make ?architecture ?boot_mode ?deprecation_time ?description
    ?ena_support ?id ?image_location ?imds_support ?kernel_id
    ?ramdisk_id ?root_device_name ?sriov_net_support ?tags ?tags_all
    ?tpm_support ?virtualization_type ?timeouts ~name
    ~ebs_block_device ~ephemeral_block_device __id =
  let __type = "aws_ami" in
  let __attrs =
    ({
       tf_name = __id;
       architecture = Prop.computed __type __id "architecture";
       arn = Prop.computed __type __id "arn";
       boot_mode = Prop.computed __type __id "boot_mode";
       deprecation_time =
         Prop.computed __type __id "deprecation_time";
       description = Prop.computed __type __id "description";
       ena_support = Prop.computed __type __id "ena_support";
       hypervisor = Prop.computed __type __id "hypervisor";
       id = Prop.computed __type __id "id";
       image_location = Prop.computed __type __id "image_location";
       image_owner_alias =
         Prop.computed __type __id "image_owner_alias";
       image_type = Prop.computed __type __id "image_type";
       imds_support = Prop.computed __type __id "imds_support";
       kernel_id = Prop.computed __type __id "kernel_id";
       manage_ebs_snapshots =
         Prop.computed __type __id "manage_ebs_snapshots";
       name = Prop.computed __type __id "name";
       owner_id = Prop.computed __type __id "owner_id";
       platform = Prop.computed __type __id "platform";
       platform_details =
         Prop.computed __type __id "platform_details";
       public = Prop.computed __type __id "public";
       ramdisk_id = Prop.computed __type __id "ramdisk_id";
       root_device_name =
         Prop.computed __type __id "root_device_name";
       root_snapshot_id =
         Prop.computed __type __id "root_snapshot_id";
       sriov_net_support =
         Prop.computed __type __id "sriov_net_support";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       tpm_support = Prop.computed __type __id "tpm_support";
       usage_operation = Prop.computed __type __id "usage_operation";
       virtualization_type =
         Prop.computed __type __id "virtualization_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ami
        (aws_ami ?architecture ?boot_mode ?deprecation_time
           ?description ?ena_support ?id ?image_location
           ?imds_support ?kernel_id ?ramdisk_id ?root_device_name
           ?sriov_net_support ?tags ?tags_all ?tpm_support
           ?virtualization_type ?timeouts ~name ~ebs_block_device
           ~ephemeral_block_device ());
    attrs = __attrs;
  }

let register ?tf_module ?architecture ?boot_mode ?deprecation_time
    ?description ?ena_support ?id ?image_location ?imds_support
    ?kernel_id ?ramdisk_id ?root_device_name ?sriov_net_support ?tags
    ?tags_all ?tpm_support ?virtualization_type ?timeouts ~name
    ~ebs_block_device ~ephemeral_block_device __id =
  let (r : _ Tf_core.resource) =
    make ?architecture ?boot_mode ?deprecation_time ?description
      ?ena_support ?id ?image_location ?imds_support ?kernel_id
      ?ramdisk_id ?root_device_name ?sriov_net_support ?tags
      ?tags_all ?tpm_support ?virtualization_type ?timeouts ~name
      ~ebs_block_device ~ephemeral_block_device __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

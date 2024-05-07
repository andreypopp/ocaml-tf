(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type launch_specification__ebs_block_device = {
  delete_on_termination : bool prop option; [@option]
  device_name : string prop;
  encrypted : bool prop option; [@option]
  iops : float prop option; [@option]
  kms_key_id : string prop option; [@option]
  snapshot_id : string prop option; [@option]
  throughput : float prop option; [@option]
  volume_size : float prop option; [@option]
  volume_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : launch_specification__ebs_block_device) -> ()

let yojson_of_launch_specification__ebs_block_device =
  (function
   | {
       delete_on_termination = v_delete_on_termination;
       device_name = v_device_name;
       encrypted = v_encrypted;
       iops = v_iops;
       kms_key_id = v_kms_key_id;
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
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
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
    : launch_specification__ebs_block_device ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_launch_specification__ebs_block_device

[@@@deriving.end]

type launch_specification__ephemeral_block_device = {
  device_name : string prop;
  virtual_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : launch_specification__ephemeral_block_device) -> ()

let yojson_of_launch_specification__ephemeral_block_device =
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
    : launch_specification__ephemeral_block_device ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_launch_specification__ephemeral_block_device

[@@@deriving.end]

type launch_specification__root_block_device = {
  delete_on_termination : bool prop option; [@option]
  encrypted : bool prop option; [@option]
  iops : float prop option; [@option]
  kms_key_id : string prop option; [@option]
  throughput : float prop option; [@option]
  volume_size : float prop option; [@option]
  volume_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : launch_specification__root_block_device) -> ()

let yojson_of_launch_specification__root_block_device =
  (function
   | {
       delete_on_termination = v_delete_on_termination;
       encrypted = v_encrypted;
       iops = v_iops;
       kms_key_id = v_kms_key_id;
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
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
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
         match v_delete_on_termination with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_on_termination", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : launch_specification__root_block_device ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_launch_specification__root_block_device

[@@@deriving.end]

type launch_specification = {
  ami : string prop;
  associate_public_ip_address : bool prop option; [@option]
  availability_zone : string prop option; [@option]
  ebs_optimized : bool prop option; [@option]
  iam_instance_profile : string prop option; [@option]
  iam_instance_profile_arn : string prop option; [@option]
  instance_type : string prop;
  key_name : string prop option; [@option]
  monitoring : bool prop option; [@option]
  placement_group : string prop option; [@option]
  placement_tenancy : string prop option; [@option]
  spot_price : string prop option; [@option]
  subnet_id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  user_data : string prop option; [@option]
  vpc_security_group_ids : string prop list option; [@option]
  weighted_capacity : string prop option; [@option]
  ebs_block_device : launch_specification__ebs_block_device list;
  ephemeral_block_device :
    launch_specification__ephemeral_block_device list;
  root_block_device : launch_specification__root_block_device list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : launch_specification) -> ()

let yojson_of_launch_specification =
  (function
   | {
       ami = v_ami;
       associate_public_ip_address = v_associate_public_ip_address;
       availability_zone = v_availability_zone;
       ebs_optimized = v_ebs_optimized;
       iam_instance_profile = v_iam_instance_profile;
       iam_instance_profile_arn = v_iam_instance_profile_arn;
       instance_type = v_instance_type;
       key_name = v_key_name;
       monitoring = v_monitoring;
       placement_group = v_placement_group;
       placement_tenancy = v_placement_tenancy;
       spot_price = v_spot_price;
       subnet_id = v_subnet_id;
       tags = v_tags;
       user_data = v_user_data;
       vpc_security_group_ids = v_vpc_security_group_ids;
       weighted_capacity = v_weighted_capacity;
       ebs_block_device = v_ebs_block_device;
       ephemeral_block_device = v_ephemeral_block_device;
       root_block_device = v_root_block_device;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_launch_specification__root_block_device
             v_root_block_device
         in
         ("root_block_device", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_launch_specification__ephemeral_block_device
             v_ephemeral_block_device
         in
         ("ephemeral_block_device", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_launch_specification__ebs_block_device
             v_ebs_block_device
         in
         ("ebs_block_device", arg) :: bnds
       in
       let bnds =
         match v_weighted_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "weighted_capacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_vpc_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "vpc_security_group_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_data", arg in
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
         match v_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_spot_price with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "spot_price", arg in
             bnd :: bnds
       in
       let bnds =
         match v_placement_tenancy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "placement_tenancy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_placement_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "placement_group", arg in
             bnd :: bnds
       in
       let bnds =
         match v_monitoring with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "monitoring", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_type in
         ("instance_type", arg) :: bnds
       in
       let bnds =
         match v_iam_instance_profile_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "iam_instance_profile_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iam_instance_profile with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "iam_instance_profile", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ebs_optimized with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ebs_optimized", arg in
             bnd :: bnds
       in
       let bnds =
         match v_availability_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "availability_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_associate_public_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "associate_public_ip_address", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ami in
         ("ami", arg) :: bnds
       in
       `Assoc bnds
    : launch_specification -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_launch_specification

[@@@deriving.end]

type launch_template_config__launch_template_specification = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : launch_template_config__launch_template_specification) ->
  ()

let yojson_of_launch_template_config__launch_template_specification =
  (function
   | { id = v_id; name = v_name; version = v_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
       `Assoc bnds
    : launch_template_config__launch_template_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_launch_template_config__launch_template_specification

[@@@deriving.end]

type launch_template_config__overrides__instance_requirements__accelerator_count = {
  max : float prop option; [@option]
  min : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       launch_template_config__overrides__instance_requirements__accelerator_count) ->
  ()

let yojson_of_launch_template_config__overrides__instance_requirements__accelerator_count
    =
  (function
   | { max = v_max; min = v_min } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_min with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : launch_template_config__overrides__instance_requirements__accelerator_count ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_launch_template_config__overrides__instance_requirements__accelerator_count

[@@@deriving.end]

type launch_template_config__overrides__instance_requirements__accelerator_total_memory_mib = {
  max : float prop option; [@option]
  min : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       launch_template_config__overrides__instance_requirements__accelerator_total_memory_mib) ->
  ()

let yojson_of_launch_template_config__overrides__instance_requirements__accelerator_total_memory_mib
    =
  (function
   | { max = v_max; min = v_min } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_min with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : launch_template_config__overrides__instance_requirements__accelerator_total_memory_mib ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_launch_template_config__overrides__instance_requirements__accelerator_total_memory_mib

[@@@deriving.end]

type launch_template_config__overrides__instance_requirements__baseline_ebs_bandwidth_mbps = {
  max : float prop option; [@option]
  min : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       launch_template_config__overrides__instance_requirements__baseline_ebs_bandwidth_mbps) ->
  ()

let yojson_of_launch_template_config__overrides__instance_requirements__baseline_ebs_bandwidth_mbps
    =
  (function
   | { max = v_max; min = v_min } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_min with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : launch_template_config__overrides__instance_requirements__baseline_ebs_bandwidth_mbps ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_launch_template_config__overrides__instance_requirements__baseline_ebs_bandwidth_mbps

[@@@deriving.end]

type launch_template_config__overrides__instance_requirements__memory_gib_per_vcpu = {
  max : float prop option; [@option]
  min : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       launch_template_config__overrides__instance_requirements__memory_gib_per_vcpu) ->
  ()

let yojson_of_launch_template_config__overrides__instance_requirements__memory_gib_per_vcpu
    =
  (function
   | { max = v_max; min = v_min } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_min with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : launch_template_config__overrides__instance_requirements__memory_gib_per_vcpu ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_launch_template_config__overrides__instance_requirements__memory_gib_per_vcpu

[@@@deriving.end]

type launch_template_config__overrides__instance_requirements__memory_mib = {
  max : float prop option; [@option]
  min : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       launch_template_config__overrides__instance_requirements__memory_mib) ->
  ()

let yojson_of_launch_template_config__overrides__instance_requirements__memory_mib
    =
  (function
   | { max = v_max; min = v_min } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_min with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : launch_template_config__overrides__instance_requirements__memory_mib ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_launch_template_config__overrides__instance_requirements__memory_mib

[@@@deriving.end]

type launch_template_config__overrides__instance_requirements__network_bandwidth_gbps = {
  max : float prop option; [@option]
  min : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       launch_template_config__overrides__instance_requirements__network_bandwidth_gbps) ->
  ()

let yojson_of_launch_template_config__overrides__instance_requirements__network_bandwidth_gbps
    =
  (function
   | { max = v_max; min = v_min } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_min with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : launch_template_config__overrides__instance_requirements__network_bandwidth_gbps ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_launch_template_config__overrides__instance_requirements__network_bandwidth_gbps

[@@@deriving.end]

type launch_template_config__overrides__instance_requirements__network_interface_count = {
  max : float prop option; [@option]
  min : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       launch_template_config__overrides__instance_requirements__network_interface_count) ->
  ()

let yojson_of_launch_template_config__overrides__instance_requirements__network_interface_count
    =
  (function
   | { max = v_max; min = v_min } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_min with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : launch_template_config__overrides__instance_requirements__network_interface_count ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_launch_template_config__overrides__instance_requirements__network_interface_count

[@@@deriving.end]

type launch_template_config__overrides__instance_requirements__total_local_storage_gb = {
  max : float prop option; [@option]
  min : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       launch_template_config__overrides__instance_requirements__total_local_storage_gb) ->
  ()

let yojson_of_launch_template_config__overrides__instance_requirements__total_local_storage_gb
    =
  (function
   | { max = v_max; min = v_min } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_min with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : launch_template_config__overrides__instance_requirements__total_local_storage_gb ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_launch_template_config__overrides__instance_requirements__total_local_storage_gb

[@@@deriving.end]

type launch_template_config__overrides__instance_requirements__vcpu_count = {
  max : float prop option; [@option]
  min : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       launch_template_config__overrides__instance_requirements__vcpu_count) ->
  ()

let yojson_of_launch_template_config__overrides__instance_requirements__vcpu_count
    =
  (function
   | { max = v_max; min = v_min } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_min with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : launch_template_config__overrides__instance_requirements__vcpu_count ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_launch_template_config__overrides__instance_requirements__vcpu_count

[@@@deriving.end]

type launch_template_config__overrides__instance_requirements = {
  accelerator_manufacturers : string prop list option; [@option]
  accelerator_names : string prop list option; [@option]
  accelerator_types : string prop list option; [@option]
  allowed_instance_types : string prop list option; [@option]
  bare_metal : string prop option; [@option]
  burstable_performance : string prop option; [@option]
  cpu_manufacturers : string prop list option; [@option]
  excluded_instance_types : string prop list option; [@option]
  instance_generations : string prop list option; [@option]
  local_storage : string prop option; [@option]
  local_storage_types : string prop list option; [@option]
  on_demand_max_price_percentage_over_lowest_price :
    float prop option;
      [@option]
  require_hibernate_support : bool prop option; [@option]
  spot_max_price_percentage_over_lowest_price : float prop option;
      [@option]
  accelerator_count :
    launch_template_config__overrides__instance_requirements__accelerator_count
    list;
  accelerator_total_memory_mib :
    launch_template_config__overrides__instance_requirements__accelerator_total_memory_mib
    list;
  baseline_ebs_bandwidth_mbps :
    launch_template_config__overrides__instance_requirements__baseline_ebs_bandwidth_mbps
    list;
  memory_gib_per_vcpu :
    launch_template_config__overrides__instance_requirements__memory_gib_per_vcpu
    list;
  memory_mib :
    launch_template_config__overrides__instance_requirements__memory_mib
    list;
  network_bandwidth_gbps :
    launch_template_config__overrides__instance_requirements__network_bandwidth_gbps
    list;
  network_interface_count :
    launch_template_config__overrides__instance_requirements__network_interface_count
    list;
  total_local_storage_gb :
    launch_template_config__overrides__instance_requirements__total_local_storage_gb
    list;
  vcpu_count :
    launch_template_config__overrides__instance_requirements__vcpu_count
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : launch_template_config__overrides__instance_requirements) ->
  ()

let yojson_of_launch_template_config__overrides__instance_requirements
    =
  (function
   | {
       accelerator_manufacturers = v_accelerator_manufacturers;
       accelerator_names = v_accelerator_names;
       accelerator_types = v_accelerator_types;
       allowed_instance_types = v_allowed_instance_types;
       bare_metal = v_bare_metal;
       burstable_performance = v_burstable_performance;
       cpu_manufacturers = v_cpu_manufacturers;
       excluded_instance_types = v_excluded_instance_types;
       instance_generations = v_instance_generations;
       local_storage = v_local_storage;
       local_storage_types = v_local_storage_types;
       on_demand_max_price_percentage_over_lowest_price =
         v_on_demand_max_price_percentage_over_lowest_price;
       require_hibernate_support = v_require_hibernate_support;
       spot_max_price_percentage_over_lowest_price =
         v_spot_max_price_percentage_over_lowest_price;
       accelerator_count = v_accelerator_count;
       accelerator_total_memory_mib = v_accelerator_total_memory_mib;
       baseline_ebs_bandwidth_mbps = v_baseline_ebs_bandwidth_mbps;
       memory_gib_per_vcpu = v_memory_gib_per_vcpu;
       memory_mib = v_memory_mib;
       network_bandwidth_gbps = v_network_bandwidth_gbps;
       network_interface_count = v_network_interface_count;
       total_local_storage_gb = v_total_local_storage_gb;
       vcpu_count = v_vcpu_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_launch_template_config__overrides__instance_requirements__vcpu_count
             v_vcpu_count
         in
         ("vcpu_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_launch_template_config__overrides__instance_requirements__total_local_storage_gb
             v_total_local_storage_gb
         in
         ("total_local_storage_gb", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_launch_template_config__overrides__instance_requirements__network_interface_count
             v_network_interface_count
         in
         ("network_interface_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_launch_template_config__overrides__instance_requirements__network_bandwidth_gbps
             v_network_bandwidth_gbps
         in
         ("network_bandwidth_gbps", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_launch_template_config__overrides__instance_requirements__memory_mib
             v_memory_mib
         in
         ("memory_mib", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_launch_template_config__overrides__instance_requirements__memory_gib_per_vcpu
             v_memory_gib_per_vcpu
         in
         ("memory_gib_per_vcpu", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_launch_template_config__overrides__instance_requirements__baseline_ebs_bandwidth_mbps
             v_baseline_ebs_bandwidth_mbps
         in
         ("baseline_ebs_bandwidth_mbps", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_launch_template_config__overrides__instance_requirements__accelerator_total_memory_mib
             v_accelerator_total_memory_mib
         in
         ("accelerator_total_memory_mib", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_launch_template_config__overrides__instance_requirements__accelerator_count
             v_accelerator_count
         in
         ("accelerator_count", arg) :: bnds
       in
       let bnds =
         match v_spot_max_price_percentage_over_lowest_price with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "spot_max_price_percentage_over_lowest_price", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_require_hibernate_support with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_hibernate_support", arg in
             bnd :: bnds
       in
       let bnds =
         match
           v_on_demand_max_price_percentage_over_lowest_price
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               ( "on_demand_max_price_percentage_over_lowest_price",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match v_local_storage_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "local_storage_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_local_storage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "local_storage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_generations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "instance_generations", arg in
             bnd :: bnds
       in
       let bnds =
         match v_excluded_instance_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "excluded_instance_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpu_manufacturers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "cpu_manufacturers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_burstable_performance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "burstable_performance", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bare_metal with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bare_metal", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_instance_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_instance_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_accelerator_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "accelerator_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_accelerator_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "accelerator_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_accelerator_manufacturers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "accelerator_manufacturers", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : launch_template_config__overrides__instance_requirements ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_launch_template_config__overrides__instance_requirements

[@@@deriving.end]

type launch_template_config__overrides = {
  availability_zone : string prop option; [@option]
  instance_type : string prop option; [@option]
  priority : float prop option; [@option]
  spot_price : string prop option; [@option]
  subnet_id : string prop option; [@option]
  weighted_capacity : float prop option; [@option]
  instance_requirements :
    launch_template_config__overrides__instance_requirements list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : launch_template_config__overrides) -> ()

let yojson_of_launch_template_config__overrides =
  (function
   | {
       availability_zone = v_availability_zone;
       instance_type = v_instance_type;
       priority = v_priority;
       spot_price = v_spot_price;
       subnet_id = v_subnet_id;
       weighted_capacity = v_weighted_capacity;
       instance_requirements = v_instance_requirements;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_launch_template_config__overrides__instance_requirements
             v_instance_requirements
         in
         ("instance_requirements", arg) :: bnds
       in
       let bnds =
         match v_weighted_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "weighted_capacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_spot_price with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "spot_price", arg in
             bnd :: bnds
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_availability_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "availability_zone", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : launch_template_config__overrides ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_launch_template_config__overrides

[@@@deriving.end]

type launch_template_config = {
  launch_template_specification :
    launch_template_config__launch_template_specification list;
  overrides : launch_template_config__overrides list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : launch_template_config) -> ()

let yojson_of_launch_template_config =
  (function
   | {
       launch_template_specification =
         v_launch_template_specification;
       overrides = v_overrides;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_launch_template_config__overrides
             v_overrides
         in
         ("overrides", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_launch_template_config__launch_template_specification
             v_launch_template_specification
         in
         ("launch_template_specification", arg) :: bnds
       in
       `Assoc bnds
    : launch_template_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_launch_template_config

[@@@deriving.end]

type spot_maintenance_strategies__capacity_rebalance = {
  replacement_strategy : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spot_maintenance_strategies__capacity_rebalance) -> ()

let yojson_of_spot_maintenance_strategies__capacity_rebalance =
  (function
   | { replacement_strategy = v_replacement_strategy } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_replacement_strategy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "replacement_strategy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spot_maintenance_strategies__capacity_rebalance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spot_maintenance_strategies__capacity_rebalance

[@@@deriving.end]

type spot_maintenance_strategies = {
  capacity_rebalance :
    spot_maintenance_strategies__capacity_rebalance list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spot_maintenance_strategies) -> ()

let yojson_of_spot_maintenance_strategies =
  (function
   | { capacity_rebalance = v_capacity_rebalance } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spot_maintenance_strategies__capacity_rebalance
             v_capacity_rebalance
         in
         ("capacity_rebalance", arg) :: bnds
       in
       `Assoc bnds
    : spot_maintenance_strategies ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spot_maintenance_strategies

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

type aws_spot_fleet_request = {
  allocation_strategy : string prop option; [@option]
  context : string prop option; [@option]
  excess_capacity_termination_policy : string prop option; [@option]
  fleet_type : string prop option; [@option]
  iam_fleet_role : string prop;
  id : string prop option; [@option]
  instance_interruption_behaviour : string prop option; [@option]
  instance_pools_to_use_count : float prop option; [@option]
  load_balancers : string prop list option; [@option]
  on_demand_allocation_strategy : string prop option; [@option]
  on_demand_max_total_price : string prop option; [@option]
  on_demand_target_capacity : float prop option; [@option]
  replace_unhealthy_instances : bool prop option; [@option]
  spot_price : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  target_capacity : float prop;
  target_capacity_unit_type : string prop option; [@option]
  target_group_arns : string prop list option; [@option]
  terminate_instances_on_delete : string prop option; [@option]
  terminate_instances_with_expiration : bool prop option; [@option]
  valid_from : string prop option; [@option]
  valid_until : string prop option; [@option]
  wait_for_fulfillment : bool prop option; [@option]
  launch_specification : launch_specification list;
  launch_template_config : launch_template_config list;
  spot_maintenance_strategies : spot_maintenance_strategies list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_spot_fleet_request) -> ()

let yojson_of_aws_spot_fleet_request =
  (function
   | {
       allocation_strategy = v_allocation_strategy;
       context = v_context;
       excess_capacity_termination_policy =
         v_excess_capacity_termination_policy;
       fleet_type = v_fleet_type;
       iam_fleet_role = v_iam_fleet_role;
       id = v_id;
       instance_interruption_behaviour =
         v_instance_interruption_behaviour;
       instance_pools_to_use_count = v_instance_pools_to_use_count;
       load_balancers = v_load_balancers;
       on_demand_allocation_strategy =
         v_on_demand_allocation_strategy;
       on_demand_max_total_price = v_on_demand_max_total_price;
       on_demand_target_capacity = v_on_demand_target_capacity;
       replace_unhealthy_instances = v_replace_unhealthy_instances;
       spot_price = v_spot_price;
       tags = v_tags;
       tags_all = v_tags_all;
       target_capacity = v_target_capacity;
       target_capacity_unit_type = v_target_capacity_unit_type;
       target_group_arns = v_target_group_arns;
       terminate_instances_on_delete =
         v_terminate_instances_on_delete;
       terminate_instances_with_expiration =
         v_terminate_instances_with_expiration;
       valid_from = v_valid_from;
       valid_until = v_valid_until;
       wait_for_fulfillment = v_wait_for_fulfillment;
       launch_specification = v_launch_specification;
       launch_template_config = v_launch_template_config;
       spot_maintenance_strategies = v_spot_maintenance_strategies;
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
           yojson_of_list yojson_of_spot_maintenance_strategies
             v_spot_maintenance_strategies
         in
         ("spot_maintenance_strategies", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_launch_template_config
             v_launch_template_config
         in
         ("launch_template_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_launch_specification
             v_launch_specification
         in
         ("launch_specification", arg) :: bnds
       in
       let bnds =
         match v_wait_for_fulfillment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "wait_for_fulfillment", arg in
             bnd :: bnds
       in
       let bnds =
         match v_valid_until with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "valid_until", arg in
             bnd :: bnds
       in
       let bnds =
         match v_valid_from with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "valid_from", arg in
             bnd :: bnds
       in
       let bnds =
         match v_terminate_instances_with_expiration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "terminate_instances_with_expiration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_terminate_instances_on_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "terminate_instances_on_delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_group_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "target_group_arns", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_capacity_unit_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_capacity_unit_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_target_capacity
         in
         ("target_capacity", arg) :: bnds
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
         match v_spot_price with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "spot_price", arg in
             bnd :: bnds
       in
       let bnds =
         match v_replace_unhealthy_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "replace_unhealthy_instances", arg in
             bnd :: bnds
       in
       let bnds =
         match v_on_demand_target_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "on_demand_target_capacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_on_demand_max_total_price with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "on_demand_max_total_price", arg in
             bnd :: bnds
       in
       let bnds =
         match v_on_demand_allocation_strategy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "on_demand_allocation_strategy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_load_balancers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "load_balancers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_pools_to_use_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "instance_pools_to_use_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_interruption_behaviour with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_interruption_behaviour", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_iam_fleet_role
         in
         ("iam_fleet_role", arg) :: bnds
       in
       let bnds =
         match v_fleet_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fleet_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_excess_capacity_termination_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "excess_capacity_termination_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_context with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "context", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allocation_strategy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "allocation_strategy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_spot_fleet_request -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_spot_fleet_request

[@@@deriving.end]

let launch_specification__ebs_block_device ?delete_on_termination
    ?encrypted ?iops ?kms_key_id ?snapshot_id ?throughput
    ?volume_size ?volume_type ~device_name () :
    launch_specification__ebs_block_device =
  {
    delete_on_termination;
    device_name;
    encrypted;
    iops;
    kms_key_id;
    snapshot_id;
    throughput;
    volume_size;
    volume_type;
  }

let launch_specification__ephemeral_block_device ~device_name
    ~virtual_name () : launch_specification__ephemeral_block_device =
  { device_name; virtual_name }

let launch_specification__root_block_device ?delete_on_termination
    ?encrypted ?iops ?kms_key_id ?throughput ?volume_size
    ?volume_type () : launch_specification__root_block_device =
  {
    delete_on_termination;
    encrypted;
    iops;
    kms_key_id;
    throughput;
    volume_size;
    volume_type;
  }

let launch_specification ?associate_public_ip_address
    ?availability_zone ?ebs_optimized ?iam_instance_profile
    ?iam_instance_profile_arn ?key_name ?monitoring ?placement_group
    ?placement_tenancy ?spot_price ?subnet_id ?tags ?user_data
    ?vpc_security_group_ids ?weighted_capacity ~ami ~instance_type
    ~ebs_block_device ~ephemeral_block_device ~root_block_device () :
    launch_specification =
  {
    ami;
    associate_public_ip_address;
    availability_zone;
    ebs_optimized;
    iam_instance_profile;
    iam_instance_profile_arn;
    instance_type;
    key_name;
    monitoring;
    placement_group;
    placement_tenancy;
    spot_price;
    subnet_id;
    tags;
    user_data;
    vpc_security_group_ids;
    weighted_capacity;
    ebs_block_device;
    ephemeral_block_device;
    root_block_device;
  }

let launch_template_config__launch_template_specification ?id ?name
    ?version () :
    launch_template_config__launch_template_specification =
  { id; name; version }

let launch_template_config__overrides__instance_requirements__accelerator_count
    ?max ?min () :
    launch_template_config__overrides__instance_requirements__accelerator_count
    =
  { max; min }

let launch_template_config__overrides__instance_requirements__accelerator_total_memory_mib
    ?max ?min () :
    launch_template_config__overrides__instance_requirements__accelerator_total_memory_mib
    =
  { max; min }

let launch_template_config__overrides__instance_requirements__baseline_ebs_bandwidth_mbps
    ?max ?min () :
    launch_template_config__overrides__instance_requirements__baseline_ebs_bandwidth_mbps
    =
  { max; min }

let launch_template_config__overrides__instance_requirements__memory_gib_per_vcpu
    ?max ?min () :
    launch_template_config__overrides__instance_requirements__memory_gib_per_vcpu
    =
  { max; min }

let launch_template_config__overrides__instance_requirements__memory_mib
    ?max ?min () :
    launch_template_config__overrides__instance_requirements__memory_mib
    =
  { max; min }

let launch_template_config__overrides__instance_requirements__network_bandwidth_gbps
    ?max ?min () :
    launch_template_config__overrides__instance_requirements__network_bandwidth_gbps
    =
  { max; min }

let launch_template_config__overrides__instance_requirements__network_interface_count
    ?max ?min () :
    launch_template_config__overrides__instance_requirements__network_interface_count
    =
  { max; min }

let launch_template_config__overrides__instance_requirements__total_local_storage_gb
    ?max ?min () :
    launch_template_config__overrides__instance_requirements__total_local_storage_gb
    =
  { max; min }

let launch_template_config__overrides__instance_requirements__vcpu_count
    ?max ?min () :
    launch_template_config__overrides__instance_requirements__vcpu_count
    =
  { max; min }

let launch_template_config__overrides__instance_requirements
    ?accelerator_manufacturers ?accelerator_names ?accelerator_types
    ?allowed_instance_types ?bare_metal ?burstable_performance
    ?cpu_manufacturers ?excluded_instance_types ?instance_generations
    ?local_storage ?local_storage_types
    ?on_demand_max_price_percentage_over_lowest_price
    ?require_hibernate_support
    ?spot_max_price_percentage_over_lowest_price
    ?(accelerator_count = []) ?(accelerator_total_memory_mib = [])
    ?(baseline_ebs_bandwidth_mbps = []) ?(memory_gib_per_vcpu = [])
    ?(memory_mib = []) ?(network_bandwidth_gbps = [])
    ?(network_interface_count = []) ?(total_local_storage_gb = [])
    ?(vcpu_count = []) () :
    launch_template_config__overrides__instance_requirements =
  {
    accelerator_manufacturers;
    accelerator_names;
    accelerator_types;
    allowed_instance_types;
    bare_metal;
    burstable_performance;
    cpu_manufacturers;
    excluded_instance_types;
    instance_generations;
    local_storage;
    local_storage_types;
    on_demand_max_price_percentage_over_lowest_price;
    require_hibernate_support;
    spot_max_price_percentage_over_lowest_price;
    accelerator_count;
    accelerator_total_memory_mib;
    baseline_ebs_bandwidth_mbps;
    memory_gib_per_vcpu;
    memory_mib;
    network_bandwidth_gbps;
    network_interface_count;
    total_local_storage_gb;
    vcpu_count;
  }

let launch_template_config__overrides ?availability_zone
    ?instance_type ?priority ?spot_price ?subnet_id
    ?weighted_capacity ?(instance_requirements = []) () :
    launch_template_config__overrides =
  {
    availability_zone;
    instance_type;
    priority;
    spot_price;
    subnet_id;
    weighted_capacity;
    instance_requirements;
  }

let launch_template_config ~launch_template_specification ~overrides
    () : launch_template_config =
  { launch_template_specification; overrides }

let spot_maintenance_strategies__capacity_rebalance
    ?replacement_strategy () :
    spot_maintenance_strategies__capacity_rebalance =
  { replacement_strategy }

let spot_maintenance_strategies ?(capacity_rebalance = []) () :
    spot_maintenance_strategies =
  { capacity_rebalance }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_spot_fleet_request ?allocation_strategy ?context
    ?excess_capacity_termination_policy ?fleet_type ?id
    ?instance_interruption_behaviour ?instance_pools_to_use_count
    ?load_balancers ?on_demand_allocation_strategy
    ?on_demand_max_total_price ?on_demand_target_capacity
    ?replace_unhealthy_instances ?spot_price ?tags ?tags_all
    ?target_capacity_unit_type ?target_group_arns
    ?terminate_instances_on_delete
    ?terminate_instances_with_expiration ?valid_from ?valid_until
    ?wait_for_fulfillment ?(spot_maintenance_strategies = [])
    ?timeouts ~iam_fleet_role ~target_capacity ~launch_specification
    ~launch_template_config () : aws_spot_fleet_request =
  {
    allocation_strategy;
    context;
    excess_capacity_termination_policy;
    fleet_type;
    iam_fleet_role;
    id;
    instance_interruption_behaviour;
    instance_pools_to_use_count;
    load_balancers;
    on_demand_allocation_strategy;
    on_demand_max_total_price;
    on_demand_target_capacity;
    replace_unhealthy_instances;
    spot_price;
    tags;
    tags_all;
    target_capacity;
    target_capacity_unit_type;
    target_group_arns;
    terminate_instances_on_delete;
    terminate_instances_with_expiration;
    valid_from;
    valid_until;
    wait_for_fulfillment;
    launch_specification;
    launch_template_config;
    spot_maintenance_strategies;
    timeouts;
  }

type t = {
  tf_name : string;
  allocation_strategy : string prop;
  client_token : string prop;
  context : string prop;
  excess_capacity_termination_policy : string prop;
  fleet_type : string prop;
  iam_fleet_role : string prop;
  id : string prop;
  instance_interruption_behaviour : string prop;
  instance_pools_to_use_count : float prop;
  load_balancers : string list prop;
  on_demand_allocation_strategy : string prop;
  on_demand_max_total_price : string prop;
  on_demand_target_capacity : float prop;
  replace_unhealthy_instances : bool prop;
  spot_price : string prop;
  spot_request_state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_capacity : float prop;
  target_capacity_unit_type : string prop;
  target_group_arns : string list prop;
  terminate_instances_on_delete : string prop;
  terminate_instances_with_expiration : bool prop;
  valid_from : string prop;
  valid_until : string prop;
  wait_for_fulfillment : bool prop;
}

let make ?allocation_strategy ?context
    ?excess_capacity_termination_policy ?fleet_type ?id
    ?instance_interruption_behaviour ?instance_pools_to_use_count
    ?load_balancers ?on_demand_allocation_strategy
    ?on_demand_max_total_price ?on_demand_target_capacity
    ?replace_unhealthy_instances ?spot_price ?tags ?tags_all
    ?target_capacity_unit_type ?target_group_arns
    ?terminate_instances_on_delete
    ?terminate_instances_with_expiration ?valid_from ?valid_until
    ?wait_for_fulfillment ?(spot_maintenance_strategies = [])
    ?timeouts ~iam_fleet_role ~target_capacity ~launch_specification
    ~launch_template_config __id =
  let __type = "aws_spot_fleet_request" in
  let __attrs =
    ({
       tf_name = __id;
       allocation_strategy =
         Prop.computed __type __id "allocation_strategy";
       client_token = Prop.computed __type __id "client_token";
       context = Prop.computed __type __id "context";
       excess_capacity_termination_policy =
         Prop.computed __type __id
           "excess_capacity_termination_policy";
       fleet_type = Prop.computed __type __id "fleet_type";
       iam_fleet_role = Prop.computed __type __id "iam_fleet_role";
       id = Prop.computed __type __id "id";
       instance_interruption_behaviour =
         Prop.computed __type __id "instance_interruption_behaviour";
       instance_pools_to_use_count =
         Prop.computed __type __id "instance_pools_to_use_count";
       load_balancers = Prop.computed __type __id "load_balancers";
       on_demand_allocation_strategy =
         Prop.computed __type __id "on_demand_allocation_strategy";
       on_demand_max_total_price =
         Prop.computed __type __id "on_demand_max_total_price";
       on_demand_target_capacity =
         Prop.computed __type __id "on_demand_target_capacity";
       replace_unhealthy_instances =
         Prop.computed __type __id "replace_unhealthy_instances";
       spot_price = Prop.computed __type __id "spot_price";
       spot_request_state =
         Prop.computed __type __id "spot_request_state";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       target_capacity = Prop.computed __type __id "target_capacity";
       target_capacity_unit_type =
         Prop.computed __type __id "target_capacity_unit_type";
       target_group_arns =
         Prop.computed __type __id "target_group_arns";
       terminate_instances_on_delete =
         Prop.computed __type __id "terminate_instances_on_delete";
       terminate_instances_with_expiration =
         Prop.computed __type __id
           "terminate_instances_with_expiration";
       valid_from = Prop.computed __type __id "valid_from";
       valid_until = Prop.computed __type __id "valid_until";
       wait_for_fulfillment =
         Prop.computed __type __id "wait_for_fulfillment";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_spot_fleet_request
        (aws_spot_fleet_request ?allocation_strategy ?context
           ?excess_capacity_termination_policy ?fleet_type ?id
           ?instance_interruption_behaviour
           ?instance_pools_to_use_count ?load_balancers
           ?on_demand_allocation_strategy ?on_demand_max_total_price
           ?on_demand_target_capacity ?replace_unhealthy_instances
           ?spot_price ?tags ?tags_all ?target_capacity_unit_type
           ?target_group_arns ?terminate_instances_on_delete
           ?terminate_instances_with_expiration ?valid_from
           ?valid_until ?wait_for_fulfillment
           ~spot_maintenance_strategies ?timeouts ~iam_fleet_role
           ~target_capacity ~launch_specification
           ~launch_template_config ());
    attrs = __attrs;
  }

let register ?tf_module ?allocation_strategy ?context
    ?excess_capacity_termination_policy ?fleet_type ?id
    ?instance_interruption_behaviour ?instance_pools_to_use_count
    ?load_balancers ?on_demand_allocation_strategy
    ?on_demand_max_total_price ?on_demand_target_capacity
    ?replace_unhealthy_instances ?spot_price ?tags ?tags_all
    ?target_capacity_unit_type ?target_group_arns
    ?terminate_instances_on_delete
    ?terminate_instances_with_expiration ?valid_from ?valid_until
    ?wait_for_fulfillment ?(spot_maintenance_strategies = [])
    ?timeouts ~iam_fleet_role ~target_capacity ~launch_specification
    ~launch_template_config __id =
  let (r : _ Tf_core.resource) =
    make ?allocation_strategy ?context
      ?excess_capacity_termination_policy ?fleet_type ?id
      ?instance_interruption_behaviour ?instance_pools_to_use_count
      ?load_balancers ?on_demand_allocation_strategy
      ?on_demand_max_total_price ?on_demand_target_capacity
      ?replace_unhealthy_instances ?spot_price ?tags ?tags_all
      ?target_capacity_unit_type ?target_group_arns
      ?terminate_instances_on_delete
      ?terminate_instances_with_expiration ?valid_from ?valid_until
      ?wait_for_fulfillment ~spot_maintenance_strategies ?timeouts
      ~iam_fleet_role ~target_capacity ~launch_specification
      ~launch_template_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ebs_block_device = unit [@@deriving_inline yojson_of]

let _ = fun (_ : ebs_block_device) -> ()

let yojson_of_ebs_block_device =
  (yojson_of_unit
    : ebs_block_device -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ebs_block_device

[@@@deriving.end]

type ephemeral_block_device = unit [@@deriving_inline yojson_of]

let _ = fun (_ : ephemeral_block_device) -> ()

let yojson_of_ephemeral_block_device =
  (yojson_of_unit
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

type aws_ami_from_instance = {
  deprecation_time : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  snapshot_without_reboot : bool prop option; [@option]
  source_instance_id : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  ebs_block_device : ebs_block_device list;
  ephemeral_block_device : ephemeral_block_device list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ami_from_instance) -> ()

let yojson_of_aws_ami_from_instance =
  (function
   | {
       deprecation_time = v_deprecation_time;
       description = v_description;
       id = v_id;
       name = v_name;
       snapshot_without_reboot = v_snapshot_without_reboot;
       source_instance_id = v_source_instance_id;
       tags = v_tags;
       tags_all = v_tags_all;
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
         let arg =
           yojson_of_prop yojson_of_string v_source_instance_id
         in
         ("source_instance_id", arg) :: bnds
       in
       let bnds =
         match v_snapshot_without_reboot with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "snapshot_without_reboot", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
       `Assoc bnds
    : aws_ami_from_instance -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ami_from_instance

[@@@deriving.end]

let ebs_block_device () = ()
let ephemeral_block_device () = ()

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_ami_from_instance ?deprecation_time ?description ?id
    ?snapshot_without_reboot ?tags ?tags_all ?timeouts ~name
    ~source_instance_id ~ebs_block_device ~ephemeral_block_device ()
    : aws_ami_from_instance =
  {
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

let make ?deprecation_time ?description ?id ?snapshot_without_reboot
    ?tags ?tags_all ?timeouts ~name ~source_instance_id
    ~ebs_block_device ~ephemeral_block_device __id =
  let __type = "aws_ami_from_instance" in
  let __attrs =
    ({
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
       snapshot_without_reboot =
         Prop.computed __type __id "snapshot_without_reboot";
       source_instance_id =
         Prop.computed __type __id "source_instance_id";
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
      yojson_of_aws_ami_from_instance
        (aws_ami_from_instance ?deprecation_time ?description ?id
           ?snapshot_without_reboot ?tags ?tags_all ?timeouts ~name
           ~source_instance_id ~ebs_block_device
           ~ephemeral_block_device ());
    attrs = __attrs;
  }

let register ?tf_module ?deprecation_time ?description ?id
    ?snapshot_without_reboot ?tags ?tags_all ?timeouts ~name
    ~source_instance_id ~ebs_block_device ~ephemeral_block_device
    __id =
  let (r : _ Tf_core.resource) =
    make ?deprecation_time ?description ?id ?snapshot_without_reboot
      ?tags ?tags_all ?timeouts ~name ~source_instance_id
      ~ebs_block_device ~ephemeral_block_device __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

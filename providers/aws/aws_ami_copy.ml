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

type aws_ami_copy = {
  deprecation_time : string prop option; [@option]
  description : string prop option; [@option]
  destination_outpost_arn : string prop option; [@option]
  encrypted : bool prop option; [@option]
  id : string prop option; [@option]
  kms_key_id : string prop option; [@option]
  name : string prop;
  source_ami_id : string prop;
  source_ami_region : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  ebs_block_device : ebs_block_device list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ephemeral_block_device : ephemeral_block_device list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ami_copy) -> ()

let yojson_of_aws_ami_copy =
  (function
   | {
       deprecation_time = v_deprecation_time;
       description = v_description;
       destination_outpost_arn = v_destination_outpost_arn;
       encrypted = v_encrypted;
       id = v_id;
       kms_key_id = v_kms_key_id;
       name = v_name;
       source_ami_id = v_source_ami_id;
       source_ami_region = v_source_ami_region;
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
         if Stdlib.( = ) [] v_ephemeral_block_device then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ephemeral_block_device)
               v_ephemeral_block_device
           in
           let bnd = "ephemeral_block_device", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ebs_block_device then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ebs_block_device)
               v_ebs_block_device
           in
           let bnd = "ebs_block_device", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_ami_region
         in
         ("source_ami_region", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source_ami_id in
         ("source_ami_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
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
         match v_destination_outpost_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "destination_outpost_arn", arg in
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
    : aws_ami_copy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ami_copy

[@@@deriving.end]

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
  tf_name : string;
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  tpm_support : string prop;
  usage_operation : string prop;
  virtualization_type : string prop;
}

let make ?deprecation_time ?description ?destination_outpost_arn
    ?encrypted ?id ?kms_key_id ?tags ?tags_all ?timeouts ~name
    ~source_ami_id ~source_ami_region ~ebs_block_device
    ~ephemeral_block_device __id =
  let __type = "aws_ami_copy" in
  let __attrs =
    ({
       tf_name = __id;
       architecture = Prop.computed __type __id "architecture";
       arn = Prop.computed __type __id "arn";
       boot_mode = Prop.computed __type __id "boot_mode";
       deprecation_time =
         Prop.computed __type __id "deprecation_time";
       description = Prop.computed __type __id "description";
       destination_outpost_arn =
         Prop.computed __type __id "destination_outpost_arn";
       ena_support = Prop.computed __type __id "ena_support";
       encrypted = Prop.computed __type __id "encrypted";
       hypervisor = Prop.computed __type __id "hypervisor";
       id = Prop.computed __type __id "id";
       image_location = Prop.computed __type __id "image_location";
       image_owner_alias =
         Prop.computed __type __id "image_owner_alias";
       image_type = Prop.computed __type __id "image_type";
       imds_support = Prop.computed __type __id "imds_support";
       kernel_id = Prop.computed __type __id "kernel_id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
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
       source_ami_id = Prop.computed __type __id "source_ami_id";
       source_ami_region =
         Prop.computed __type __id "source_ami_region";
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
      yojson_of_aws_ami_copy
        (aws_ami_copy ?deprecation_time ?description
           ?destination_outpost_arn ?encrypted ?id ?kms_key_id ?tags
           ?tags_all ?timeouts ~name ~source_ami_id
           ~source_ami_region ~ebs_block_device
           ~ephemeral_block_device ());
    attrs = __attrs;
  }

let register ?tf_module ?deprecation_time ?description
    ?destination_outpost_arn ?encrypted ?id ?kms_key_id ?tags
    ?tags_all ?timeouts ~name ~source_ami_id ~source_ami_region
    ~ebs_block_device ~ephemeral_block_device __id =
  let (r : _ Tf_core.resource) =
    make ?deprecation_time ?description ?destination_outpost_arn
      ?encrypted ?id ?kms_key_id ?tags ?tags_all ?timeouts ~name
      ~source_ami_id ~source_ami_region ~ebs_block_device
      ~ephemeral_block_device __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ebs_block_device = {
  delete_on_termination : bool prop;
  device_name : string prop;
  encrypted : bool prop;
  iops : float prop;
  no_device : bool prop;
  snapshot_id : string prop;
  throughput : float prop;
  volume_size : float prop;
  volume_type : string prop;
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
       no_device = v_no_device;
       snapshot_id = v_snapshot_id;
       throughput = v_throughput;
       volume_size = v_volume_size;
       volume_type = v_volume_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_volume_type in
         ("volume_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_volume_size in
         ("volume_size", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_throughput in
         ("throughput", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_snapshot_id in
         ("snapshot_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_no_device in
         ("no_device", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_iops in
         ("iops", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_encrypted in
         ("encrypted", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_device_name in
         ("device_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_delete_on_termination
         in
         ("delete_on_termination", arg) :: bnds
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

type metadata_options = {
  http_endpoint : string prop;
  http_put_response_hop_limit : float prop;
  http_tokens : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metadata_options) -> ()

let yojson_of_metadata_options =
  (function
   | {
       http_endpoint = v_http_endpoint;
       http_put_response_hop_limit = v_http_put_response_hop_limit;
       http_tokens = v_http_tokens;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_http_tokens in
         ("http_tokens", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_http_put_response_hop_limit
         in
         ("http_put_response_hop_limit", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_http_endpoint in
         ("http_endpoint", arg) :: bnds
       in
       `Assoc bnds
    : metadata_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata_options

[@@@deriving.end]

type root_block_device = {
  delete_on_termination : bool prop;
  encrypted : bool prop;
  iops : float prop;
  throughput : float prop;
  volume_size : float prop;
  volume_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : root_block_device) -> ()

let yojson_of_root_block_device =
  (function
   | {
       delete_on_termination = v_delete_on_termination;
       encrypted = v_encrypted;
       iops = v_iops;
       throughput = v_throughput;
       volume_size = v_volume_size;
       volume_type = v_volume_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_volume_type in
         ("volume_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_volume_size in
         ("volume_size", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_throughput in
         ("throughput", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_iops in
         ("iops", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_encrypted in
         ("encrypted", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_delete_on_termination
         in
         ("delete_on_termination", arg) :: bnds
       in
       `Assoc bnds
    : root_block_device -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_root_block_device

[@@@deriving.end]

type aws_launch_configuration = {
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_launch_configuration) -> ()

let yojson_of_aws_launch_configuration =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : aws_launch_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_launch_configuration

[@@@deriving.end]

let aws_launch_configuration ?id ~name () : aws_launch_configuration
    =
  { id; name }

type t = {
  tf_name : string;
  arn : string prop;
  associate_public_ip_address : bool prop;
  ebs_block_device : ebs_block_device list prop;
  ebs_optimized : bool prop;
  enable_monitoring : bool prop;
  ephemeral_block_device : ephemeral_block_device list prop;
  iam_instance_profile : string prop;
  id : string prop;
  image_id : string prop;
  instance_type : string prop;
  key_name : string prop;
  metadata_options : metadata_options list prop;
  name : string prop;
  placement_tenancy : string prop;
  root_block_device : root_block_device list prop;
  security_groups : string list prop;
  spot_price : string prop;
  user_data : string prop;
}

let make ?id ~name __id =
  let __type = "aws_launch_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       associate_public_ip_address =
         Prop.computed __type __id "associate_public_ip_address";
       ebs_block_device =
         Prop.computed __type __id "ebs_block_device";
       ebs_optimized = Prop.computed __type __id "ebs_optimized";
       enable_monitoring =
         Prop.computed __type __id "enable_monitoring";
       ephemeral_block_device =
         Prop.computed __type __id "ephemeral_block_device";
       iam_instance_profile =
         Prop.computed __type __id "iam_instance_profile";
       id = Prop.computed __type __id "id";
       image_id = Prop.computed __type __id "image_id";
       instance_type = Prop.computed __type __id "instance_type";
       key_name = Prop.computed __type __id "key_name";
       metadata_options =
         Prop.computed __type __id "metadata_options";
       name = Prop.computed __type __id "name";
       placement_tenancy =
         Prop.computed __type __id "placement_tenancy";
       root_block_device =
         Prop.computed __type __id "root_block_device";
       security_groups = Prop.computed __type __id "security_groups";
       spot_price = Prop.computed __type __id "spot_price";
       user_data = Prop.computed __type __id "user_data";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_launch_configuration
        (aws_launch_configuration ?id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

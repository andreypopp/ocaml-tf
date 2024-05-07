(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ebs_block_device = {
  delete_on_termination : bool prop option; [@option]
  device_name : string prop;
  encrypted : bool prop option; [@option]
  iops : float prop option; [@option]
  no_device : bool prop option; [@option]
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
         match v_no_device with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "no_device", arg in
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
  no_device : bool prop option; [@option]
  virtual_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ephemeral_block_device) -> ()

let yojson_of_ephemeral_block_device =
  (function
   | {
       device_name = v_device_name;
       no_device = v_no_device;
       virtual_name = v_virtual_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_virtual_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "virtual_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_no_device with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "no_device", arg in
             bnd :: bnds
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
  http_endpoint : string prop option; [@option]
  http_put_response_hop_limit : float prop option; [@option]
  http_tokens : string prop option; [@option]
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
         match v_http_tokens with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http_tokens", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_put_response_hop_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "http_put_response_hop_limit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http_endpoint", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : metadata_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata_options

[@@@deriving.end]

type root_block_device = {
  delete_on_termination : bool prop option; [@option]
  encrypted : bool prop option; [@option]
  iops : float prop option; [@option]
  throughput : float prop option; [@option]
  volume_size : float prop option; [@option]
  volume_type : string prop option; [@option]
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
    : root_block_device -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_root_block_device

[@@@deriving.end]

type aws_launch_configuration = {
  associate_public_ip_address : bool prop option; [@option]
  ebs_optimized : bool prop option; [@option]
  enable_monitoring : bool prop option; [@option]
  iam_instance_profile : string prop option; [@option]
  id : string prop option; [@option]
  image_id : string prop;
  instance_type : string prop;
  key_name : string prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  placement_tenancy : string prop option; [@option]
  security_groups : string prop list option; [@option]
  spot_price : string prop option; [@option]
  user_data : string prop option; [@option]
  user_data_base64 : string prop option; [@option]
  ebs_block_device : ebs_block_device list;
  ephemeral_block_device : ephemeral_block_device list;
  metadata_options : metadata_options list;
  root_block_device : root_block_device list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_launch_configuration) -> ()

let yojson_of_aws_launch_configuration =
  (function
   | {
       associate_public_ip_address = v_associate_public_ip_address;
       ebs_optimized = v_ebs_optimized;
       enable_monitoring = v_enable_monitoring;
       iam_instance_profile = v_iam_instance_profile;
       id = v_id;
       image_id = v_image_id;
       instance_type = v_instance_type;
       key_name = v_key_name;
       name = v_name;
       name_prefix = v_name_prefix;
       placement_tenancy = v_placement_tenancy;
       security_groups = v_security_groups;
       spot_price = v_spot_price;
       user_data = v_user_data;
       user_data_base64 = v_user_data_base64;
       ebs_block_device = v_ebs_block_device;
       ephemeral_block_device = v_ephemeral_block_device;
       metadata_options = v_metadata_options;
       root_block_device = v_root_block_device;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_root_block_device
             v_root_block_device
         in
         ("root_block_device", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_metadata_options
             v_metadata_options
         in
         ("metadata_options", arg) :: bnds
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
         match v_user_data_base64 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_data_base64", arg in
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
         match v_spot_price with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "spot_price", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_groups", arg in
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
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
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
         let arg = yojson_of_prop yojson_of_string v_image_id in
         ("image_id", arg) :: bnds
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
         match v_iam_instance_profile with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "iam_instance_profile", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_monitoring with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_monitoring", arg in
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
         match v_associate_public_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "associate_public_ip_address", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_launch_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_launch_configuration

[@@@deriving.end]

let ebs_block_device ?delete_on_termination ?encrypted ?iops
    ?no_device ?snapshot_id ?throughput ?volume_size ?volume_type
    ~device_name () : ebs_block_device =
  {
    delete_on_termination;
    device_name;
    encrypted;
    iops;
    no_device;
    snapshot_id;
    throughput;
    volume_size;
    volume_type;
  }

let ephemeral_block_device ?no_device ?virtual_name ~device_name () :
    ephemeral_block_device =
  { device_name; no_device; virtual_name }

let metadata_options ?http_endpoint ?http_put_response_hop_limit
    ?http_tokens () : metadata_options =
  { http_endpoint; http_put_response_hop_limit; http_tokens }

let root_block_device ?delete_on_termination ?encrypted ?iops
    ?throughput ?volume_size ?volume_type () : root_block_device =
  {
    delete_on_termination;
    encrypted;
    iops;
    throughput;
    volume_size;
    volume_type;
  }

let aws_launch_configuration ?associate_public_ip_address
    ?ebs_optimized ?enable_monitoring ?iam_instance_profile ?id
    ?key_name ?name ?name_prefix ?placement_tenancy ?security_groups
    ?spot_price ?user_data ?user_data_base64 ?(metadata_options = [])
    ?(root_block_device = []) ~image_id ~instance_type
    ~ebs_block_device ~ephemeral_block_device () :
    aws_launch_configuration =
  {
    associate_public_ip_address;
    ebs_optimized;
    enable_monitoring;
    iam_instance_profile;
    id;
    image_id;
    instance_type;
    key_name;
    name;
    name_prefix;
    placement_tenancy;
    security_groups;
    spot_price;
    user_data;
    user_data_base64;
    ebs_block_device;
    ephemeral_block_device;
    metadata_options;
    root_block_device;
  }

type t = {
  tf_name : string;
  arn : string prop;
  associate_public_ip_address : bool prop;
  ebs_optimized : bool prop;
  enable_monitoring : bool prop;
  iam_instance_profile : string prop;
  id : string prop;
  image_id : string prop;
  instance_type : string prop;
  key_name : string prop;
  name : string prop;
  name_prefix : string prop;
  placement_tenancy : string prop;
  security_groups : string list prop;
  spot_price : string prop;
  user_data : string prop;
  user_data_base64 : string prop;
}

let make ?associate_public_ip_address ?ebs_optimized
    ?enable_monitoring ?iam_instance_profile ?id ?key_name ?name
    ?name_prefix ?placement_tenancy ?security_groups ?spot_price
    ?user_data ?user_data_base64 ?(metadata_options = [])
    ?(root_block_device = []) ~image_id ~instance_type
    ~ebs_block_device ~ephemeral_block_device __id =
  let __type = "aws_launch_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       associate_public_ip_address =
         Prop.computed __type __id "associate_public_ip_address";
       ebs_optimized = Prop.computed __type __id "ebs_optimized";
       enable_monitoring =
         Prop.computed __type __id "enable_monitoring";
       iam_instance_profile =
         Prop.computed __type __id "iam_instance_profile";
       id = Prop.computed __type __id "id";
       image_id = Prop.computed __type __id "image_id";
       instance_type = Prop.computed __type __id "instance_type";
       key_name = Prop.computed __type __id "key_name";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       placement_tenancy =
         Prop.computed __type __id "placement_tenancy";
       security_groups = Prop.computed __type __id "security_groups";
       spot_price = Prop.computed __type __id "spot_price";
       user_data = Prop.computed __type __id "user_data";
       user_data_base64 =
         Prop.computed __type __id "user_data_base64";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_launch_configuration
        (aws_launch_configuration ?associate_public_ip_address
           ?ebs_optimized ?enable_monitoring ?iam_instance_profile
           ?id ?key_name ?name ?name_prefix ?placement_tenancy
           ?security_groups ?spot_price ?user_data ?user_data_base64
           ~metadata_options ~root_block_device ~image_id
           ~instance_type ~ebs_block_device ~ephemeral_block_device
           ());
    attrs = __attrs;
  }

let register ?tf_module ?associate_public_ip_address ?ebs_optimized
    ?enable_monitoring ?iam_instance_profile ?id ?key_name ?name
    ?name_prefix ?placement_tenancy ?security_groups ?spot_price
    ?user_data ?user_data_base64 ?(metadata_options = [])
    ?(root_block_device = []) ~image_id ~instance_type
    ~ebs_block_device ~ephemeral_block_device __id =
  let (r : _ Tf_core.resource) =
    make ?associate_public_ip_address ?ebs_optimized
      ?enable_monitoring ?iam_instance_profile ?id ?key_name ?name
      ?name_prefix ?placement_tenancy ?security_groups ?spot_price
      ?user_data ?user_data_base64 ~metadata_options
      ~root_block_device ~image_id ~instance_type ~ebs_block_device
      ~ephemeral_block_device __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

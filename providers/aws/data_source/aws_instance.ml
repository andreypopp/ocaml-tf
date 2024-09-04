(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = {
  name : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type credit_specification = { cpu_credits : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : credit_specification) -> ()

let yojson_of_credit_specification =
  (function
   | { cpu_credits = v_cpu_credits } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cpu_credits in
         ("cpu_credits", arg) :: bnds
       in
       `Assoc bnds
    : credit_specification -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_credit_specification

[@@@deriving.end]

type ebs_block_device = {
  delete_on_termination : bool prop;
  device_name : string prop;
  encrypted : bool prop;
  iops : float prop;
  kms_key_id : string prop;
  snapshot_id : string prop;
  tags : string prop Tf_core.assoc;
  throughput : float prop;
  volume_id : string prop;
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
       kms_key_id = v_kms_key_id;
       snapshot_id = v_snapshot_id;
       tags = v_tags;
       throughput = v_throughput;
       volume_id = v_volume_id;
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
         let arg = yojson_of_prop yojson_of_string v_volume_id in
         ("volume_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_throughput in
         ("throughput", arg) :: bnds
       in
       let bnds =
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_tags
         in
         ("tags", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_snapshot_id in
         ("snapshot_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_id in
         ("kms_key_id", arg) :: bnds
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

type enclave_options = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : enclave_options) -> ()

let yojson_of_enclave_options =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : enclave_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_enclave_options

[@@@deriving.end]

type ephemeral_block_device = {
  device_name : string prop;
  no_device : bool prop;
  virtual_name : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_virtual_name in
         ("virtual_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_no_device in
         ("no_device", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_device_name in
         ("device_name", arg) :: bnds
       in
       `Assoc bnds
    : ephemeral_block_device -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ephemeral_block_device

[@@@deriving.end]

type maintenance_options = { auto_recovery : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_options) -> ()

let yojson_of_maintenance_options =
  (function
   | { auto_recovery = v_auto_recovery } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_auto_recovery in
         ("auto_recovery", arg) :: bnds
       in
       `Assoc bnds
    : maintenance_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_options

[@@@deriving.end]

type metadata_options = {
  http_endpoint : string prop;
  http_protocol_ipv6 : string prop;
  http_put_response_hop_limit : float prop;
  http_tokens : string prop;
  instance_metadata_tags : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metadata_options) -> ()

let yojson_of_metadata_options =
  (function
   | {
       http_endpoint = v_http_endpoint;
       http_protocol_ipv6 = v_http_protocol_ipv6;
       http_put_response_hop_limit = v_http_put_response_hop_limit;
       http_tokens = v_http_tokens;
       instance_metadata_tags = v_instance_metadata_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_instance_metadata_tags
         in
         ("instance_metadata_tags", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_http_protocol_ipv6
         in
         ("http_protocol_ipv6", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_http_endpoint in
         ("http_endpoint", arg) :: bnds
       in
       `Assoc bnds
    : metadata_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata_options

[@@@deriving.end]

type private_dns_name_options = {
  enable_resource_name_dns_a_record : bool prop;
  enable_resource_name_dns_aaaa_record : bool prop;
  hostname_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : private_dns_name_options) -> ()

let yojson_of_private_dns_name_options =
  (function
   | {
       enable_resource_name_dns_a_record =
         v_enable_resource_name_dns_a_record;
       enable_resource_name_dns_aaaa_record =
         v_enable_resource_name_dns_aaaa_record;
       hostname_type = v_hostname_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_hostname_type in
         ("hostname_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_enable_resource_name_dns_aaaa_record
         in
         ("enable_resource_name_dns_aaaa_record", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_enable_resource_name_dns_a_record
         in
         ("enable_resource_name_dns_a_record", arg) :: bnds
       in
       `Assoc bnds
    : private_dns_name_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_private_dns_name_options

[@@@deriving.end]

type root_block_device = {
  delete_on_termination : bool prop;
  device_name : string prop;
  encrypted : bool prop;
  iops : float prop;
  kms_key_id : string prop;
  tags : string prop Tf_core.assoc;
  throughput : float prop;
  volume_id : string prop;
  volume_size : float prop;
  volume_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : root_block_device) -> ()

let yojson_of_root_block_device =
  (function
   | {
       delete_on_termination = v_delete_on_termination;
       device_name = v_device_name;
       encrypted = v_encrypted;
       iops = v_iops;
       kms_key_id = v_kms_key_id;
       tags = v_tags;
       throughput = v_throughput;
       volume_id = v_volume_id;
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
         let arg = yojson_of_prop yojson_of_string v_volume_id in
         ("volume_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_throughput in
         ("throughput", arg) :: bnds
       in
       let bnds =
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_tags
         in
         ("tags", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_id in
         ("kms_key_id", arg) :: bnds
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
    : root_block_device -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_root_block_device

[@@@deriving.end]

type aws_instance = {
  get_password_data : bool prop option; [@option]
  get_user_data : bool prop option; [@option]
  id : string prop option; [@option]
  instance_id : string prop option; [@option]
  instance_tags : string prop Tf_core.assoc option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  filter : filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_instance) -> ()

let yojson_of_aws_instance =
  (function
   | {
       get_password_data = v_get_password_data;
       get_user_data = v_get_user_data;
       id = v_id;
       instance_id = v_instance_id;
       instance_tags = v_instance_tags;
       tags = v_tags;
       filter = v_filter;
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
         if Stdlib.( = ) [] v_filter then bnds
         else
           let arg = (yojson_of_list yojson_of_filter) v_filter in
           let bnd = "filter", arg in
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
         match v_instance_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "instance_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_id", arg in
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
         match v_get_user_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "get_user_data", arg in
             bnd :: bnds
       in
       let bnds =
         match v_get_password_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "get_password_data", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_instance -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_instance

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }
let timeouts ?read () : timeouts = { read }

let aws_instance ?get_password_data ?get_user_data ?id ?instance_id
    ?instance_tags ?tags ?timeouts ~filter () : aws_instance =
  {
    get_password_data;
    get_user_data;
    id;
    instance_id;
    instance_tags;
    tags;
    filter;
    timeouts;
  }

type t = {
  tf_name : string;
  ami : string prop;
  arn : string prop;
  associate_public_ip_address : bool prop;
  availability_zone : string prop;
  credit_specification : credit_specification list prop;
  disable_api_stop : bool prop;
  disable_api_termination : bool prop;
  ebs_block_device : ebs_block_device list prop;
  ebs_optimized : bool prop;
  enclave_options : enclave_options list prop;
  ephemeral_block_device : ephemeral_block_device list prop;
  get_password_data : bool prop;
  get_user_data : bool prop;
  host_id : string prop;
  host_resource_group_arn : string prop;
  iam_instance_profile : string prop;
  id : string prop;
  instance_id : string prop;
  instance_state : string prop;
  instance_tags : string Tf_core.assoc prop;
  instance_type : string prop;
  ipv6_addresses : string list prop;
  key_name : string prop;
  launch_time : string prop;
  maintenance_options : maintenance_options list prop;
  metadata_options : metadata_options list prop;
  monitoring : bool prop;
  network_interface_id : string prop;
  outpost_arn : string prop;
  password_data : string prop;
  placement_group : string prop;
  placement_partition_number : float prop;
  private_dns : string prop;
  private_dns_name_options : private_dns_name_options list prop;
  private_ip : string prop;
  public_dns : string prop;
  public_ip : string prop;
  root_block_device : root_block_device list prop;
  secondary_private_ips : string list prop;
  security_groups : string list prop;
  source_dest_check : bool prop;
  subnet_id : string prop;
  tags : string Tf_core.assoc prop;
  tenancy : string prop;
  user_data : string prop;
  user_data_base64 : string prop;
  vpc_security_group_ids : string list prop;
}

let make ?get_password_data ?get_user_data ?id ?instance_id
    ?instance_tags ?tags ?timeouts ~filter __id =
  let __type = "aws_instance" in
  let __attrs =
    ({
       tf_name = __id;
       ami = Prop.computed __type __id "ami";
       arn = Prop.computed __type __id "arn";
       associate_public_ip_address =
         Prop.computed __type __id "associate_public_ip_address";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       credit_specification =
         Prop.computed __type __id "credit_specification";
       disable_api_stop =
         Prop.computed __type __id "disable_api_stop";
       disable_api_termination =
         Prop.computed __type __id "disable_api_termination";
       ebs_block_device =
         Prop.computed __type __id "ebs_block_device";
       ebs_optimized = Prop.computed __type __id "ebs_optimized";
       enclave_options = Prop.computed __type __id "enclave_options";
       ephemeral_block_device =
         Prop.computed __type __id "ephemeral_block_device";
       get_password_data =
         Prop.computed __type __id "get_password_data";
       get_user_data = Prop.computed __type __id "get_user_data";
       host_id = Prop.computed __type __id "host_id";
       host_resource_group_arn =
         Prop.computed __type __id "host_resource_group_arn";
       iam_instance_profile =
         Prop.computed __type __id "iam_instance_profile";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       instance_state = Prop.computed __type __id "instance_state";
       instance_tags = Prop.computed __type __id "instance_tags";
       instance_type = Prop.computed __type __id "instance_type";
       ipv6_addresses = Prop.computed __type __id "ipv6_addresses";
       key_name = Prop.computed __type __id "key_name";
       launch_time = Prop.computed __type __id "launch_time";
       maintenance_options =
         Prop.computed __type __id "maintenance_options";
       metadata_options =
         Prop.computed __type __id "metadata_options";
       monitoring = Prop.computed __type __id "monitoring";
       network_interface_id =
         Prop.computed __type __id "network_interface_id";
       outpost_arn = Prop.computed __type __id "outpost_arn";
       password_data = Prop.computed __type __id "password_data";
       placement_group = Prop.computed __type __id "placement_group";
       placement_partition_number =
         Prop.computed __type __id "placement_partition_number";
       private_dns = Prop.computed __type __id "private_dns";
       private_dns_name_options =
         Prop.computed __type __id "private_dns_name_options";
       private_ip = Prop.computed __type __id "private_ip";
       public_dns = Prop.computed __type __id "public_dns";
       public_ip = Prop.computed __type __id "public_ip";
       root_block_device =
         Prop.computed __type __id "root_block_device";
       secondary_private_ips =
         Prop.computed __type __id "secondary_private_ips";
       security_groups = Prop.computed __type __id "security_groups";
       source_dest_check =
         Prop.computed __type __id "source_dest_check";
       subnet_id = Prop.computed __type __id "subnet_id";
       tags = Prop.computed __type __id "tags";
       tenancy = Prop.computed __type __id "tenancy";
       user_data = Prop.computed __type __id "user_data";
       user_data_base64 =
         Prop.computed __type __id "user_data_base64";
       vpc_security_group_ids =
         Prop.computed __type __id "vpc_security_group_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_instance
        (aws_instance ?get_password_data ?get_user_data ?id
           ?instance_id ?instance_tags ?tags ?timeouts ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?get_password_data ?get_user_data ?id
    ?instance_id ?instance_tags ?tags ?timeouts ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?get_password_data ?get_user_data ?id ?instance_id
      ?instance_tags ?tags ?timeouts ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

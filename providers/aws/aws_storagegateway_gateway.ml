(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type maintenance_start_time = {
  day_of_month : string prop option; [@option]
  day_of_week : string prop option; [@option]
  hour_of_day : float prop;
  minute_of_hour : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_start_time) -> ()

let yojson_of_maintenance_start_time =
  (function
   | {
       day_of_month = v_day_of_month;
       day_of_week = v_day_of_week;
       hour_of_day = v_hour_of_day;
       minute_of_hour = v_minute_of_hour;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_minute_of_hour with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minute_of_hour", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_hour_of_day in
         ("hour_of_day", arg) :: bnds
       in
       let bnds =
         match v_day_of_week with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "day_of_week", arg in
             bnd :: bnds
       in
       let bnds =
         match v_day_of_month with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "day_of_month", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : maintenance_start_time -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_start_time

[@@@deriving.end]

type smb_active_directory_settings = {
  domain_controllers : string prop list option; [@option]
  domain_name : string prop;
  organizational_unit : string prop option; [@option]
  password : string prop;
  timeout_in_seconds : float prop option; [@option]
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : smb_active_directory_settings) -> ()

let yojson_of_smb_active_directory_settings =
  (function
   | {
       domain_controllers = v_domain_controllers;
       domain_name = v_domain_name;
       organizational_unit = v_organizational_unit;
       password = v_password;
       timeout_in_seconds = v_timeout_in_seconds;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         match v_timeout_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         match v_organizational_unit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "organizational_unit", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       let bnds =
         match v_domain_controllers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "domain_controllers", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : smb_active_directory_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_smb_active_directory_settings

[@@@deriving.end]

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type gateway_network_interface = { ipv4_address : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : gateway_network_interface) -> ()

let yojson_of_gateway_network_interface =
  (function
   | { ipv4_address = v_ipv4_address } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ipv4_address in
         ("ipv4_address", arg) :: bnds
       in
       `Assoc bnds
    : gateway_network_interface -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_gateway_network_interface

[@@@deriving.end]

type aws_storagegateway_gateway = {
  activation_key : string prop option; [@option]
  average_download_rate_limit_in_bits_per_sec : float prop option;
      [@option]
  average_upload_rate_limit_in_bits_per_sec : float prop option;
      [@option]
  cloudwatch_log_group_arn : string prop option; [@option]
  gateway_ip_address : string prop option; [@option]
  gateway_name : string prop;
  gateway_timezone : string prop;
  gateway_type : string prop option; [@option]
  gateway_vpc_endpoint : string prop option; [@option]
  id : string prop option; [@option]
  medium_changer_type : string prop option; [@option]
  smb_file_share_visibility : bool prop option; [@option]
  smb_guest_password : string prop option; [@option]
  smb_security_strategy : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  tape_drive_type : string prop option; [@option]
  maintenance_start_time : maintenance_start_time list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  smb_active_directory_settings : smb_active_directory_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_storagegateway_gateway) -> ()

let yojson_of_aws_storagegateway_gateway =
  (function
   | {
       activation_key = v_activation_key;
       average_download_rate_limit_in_bits_per_sec =
         v_average_download_rate_limit_in_bits_per_sec;
       average_upload_rate_limit_in_bits_per_sec =
         v_average_upload_rate_limit_in_bits_per_sec;
       cloudwatch_log_group_arn = v_cloudwatch_log_group_arn;
       gateway_ip_address = v_gateway_ip_address;
       gateway_name = v_gateway_name;
       gateway_timezone = v_gateway_timezone;
       gateway_type = v_gateway_type;
       gateway_vpc_endpoint = v_gateway_vpc_endpoint;
       id = v_id;
       medium_changer_type = v_medium_changer_type;
       smb_file_share_visibility = v_smb_file_share_visibility;
       smb_guest_password = v_smb_guest_password;
       smb_security_strategy = v_smb_security_strategy;
       tags = v_tags;
       tags_all = v_tags_all;
       tape_drive_type = v_tape_drive_type;
       maintenance_start_time = v_maintenance_start_time;
       smb_active_directory_settings =
         v_smb_active_directory_settings;
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
         if Stdlib.( = ) [] v_smb_active_directory_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_smb_active_directory_settings)
               v_smb_active_directory_settings
           in
           let bnd = "smb_active_directory_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_maintenance_start_time then bnds
         else
           let arg =
             (yojson_of_list yojson_of_maintenance_start_time)
               v_maintenance_start_time
           in
           let bnd = "maintenance_start_time", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tape_drive_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tape_drive_type", arg in
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
         match v_smb_security_strategy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "smb_security_strategy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_smb_guest_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "smb_guest_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_smb_file_share_visibility with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "smb_file_share_visibility", arg in
             bnd :: bnds
       in
       let bnds =
         match v_medium_changer_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "medium_changer_type", arg in
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
         match v_gateway_vpc_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gateway_vpc_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gateway_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gateway_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_gateway_timezone
         in
         ("gateway_timezone", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_gateway_name in
         ("gateway_name", arg) :: bnds
       in
       let bnds =
         match v_gateway_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gateway_ip_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cloudwatch_log_group_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloudwatch_log_group_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_average_upload_rate_limit_in_bits_per_sec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "average_upload_rate_limit_in_bits_per_sec", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_average_download_rate_limit_in_bits_per_sec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "average_download_rate_limit_in_bits_per_sec", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_activation_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "activation_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_storagegateway_gateway -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_storagegateway_gateway

[@@@deriving.end]

let maintenance_start_time ?day_of_month ?day_of_week ?minute_of_hour
    ~hour_of_day () : maintenance_start_time =
  { day_of_month; day_of_week; hour_of_day; minute_of_hour }

let smb_active_directory_settings ?domain_controllers
    ?organizational_unit ?timeout_in_seconds ~domain_name ~password
    ~username () : smb_active_directory_settings =
  {
    domain_controllers;
    domain_name;
    organizational_unit;
    password;
    timeout_in_seconds;
    username;
  }

let timeouts ?create () : timeouts = { create }

let aws_storagegateway_gateway ?activation_key
    ?average_download_rate_limit_in_bits_per_sec
    ?average_upload_rate_limit_in_bits_per_sec
    ?cloudwatch_log_group_arn ?gateway_ip_address ?gateway_type
    ?gateway_vpc_endpoint ?id ?medium_changer_type
    ?smb_file_share_visibility ?smb_guest_password
    ?smb_security_strategy ?tags ?tags_all ?tape_drive_type
    ?(maintenance_start_time = [])
    ?(smb_active_directory_settings = []) ?timeouts ~gateway_name
    ~gateway_timezone () : aws_storagegateway_gateway =
  {
    activation_key;
    average_download_rate_limit_in_bits_per_sec;
    average_upload_rate_limit_in_bits_per_sec;
    cloudwatch_log_group_arn;
    gateway_ip_address;
    gateway_name;
    gateway_timezone;
    gateway_type;
    gateway_vpc_endpoint;
    id;
    medium_changer_type;
    smb_file_share_visibility;
    smb_guest_password;
    smb_security_strategy;
    tags;
    tags_all;
    tape_drive_type;
    maintenance_start_time;
    smb_active_directory_settings;
    timeouts;
  }

type t = {
  tf_name : string;
  activation_key : string prop;
  arn : string prop;
  average_download_rate_limit_in_bits_per_sec : float prop;
  average_upload_rate_limit_in_bits_per_sec : float prop;
  cloudwatch_log_group_arn : string prop;
  ec2_instance_id : string prop;
  endpoint_type : string prop;
  gateway_id : string prop;
  gateway_ip_address : string prop;
  gateway_name : string prop;
  gateway_network_interface : gateway_network_interface list prop;
  gateway_timezone : string prop;
  gateway_type : string prop;
  gateway_vpc_endpoint : string prop;
  host_environment : string prop;
  id : string prop;
  medium_changer_type : string prop;
  smb_file_share_visibility : bool prop;
  smb_guest_password : string prop;
  smb_security_strategy : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  tape_drive_type : string prop;
}

let make ?activation_key ?average_download_rate_limit_in_bits_per_sec
    ?average_upload_rate_limit_in_bits_per_sec
    ?cloudwatch_log_group_arn ?gateway_ip_address ?gateway_type
    ?gateway_vpc_endpoint ?id ?medium_changer_type
    ?smb_file_share_visibility ?smb_guest_password
    ?smb_security_strategy ?tags ?tags_all ?tape_drive_type
    ?(maintenance_start_time = [])
    ?(smb_active_directory_settings = []) ?timeouts ~gateway_name
    ~gateway_timezone __id =
  let __type = "aws_storagegateway_gateway" in
  let __attrs =
    ({
       tf_name = __id;
       activation_key = Prop.computed __type __id "activation_key";
       arn = Prop.computed __type __id "arn";
       average_download_rate_limit_in_bits_per_sec =
         Prop.computed __type __id
           "average_download_rate_limit_in_bits_per_sec";
       average_upload_rate_limit_in_bits_per_sec =
         Prop.computed __type __id
           "average_upload_rate_limit_in_bits_per_sec";
       cloudwatch_log_group_arn =
         Prop.computed __type __id "cloudwatch_log_group_arn";
       ec2_instance_id = Prop.computed __type __id "ec2_instance_id";
       endpoint_type = Prop.computed __type __id "endpoint_type";
       gateway_id = Prop.computed __type __id "gateway_id";
       gateway_ip_address =
         Prop.computed __type __id "gateway_ip_address";
       gateway_name = Prop.computed __type __id "gateway_name";
       gateway_network_interface =
         Prop.computed __type __id "gateway_network_interface";
       gateway_timezone =
         Prop.computed __type __id "gateway_timezone";
       gateway_type = Prop.computed __type __id "gateway_type";
       gateway_vpc_endpoint =
         Prop.computed __type __id "gateway_vpc_endpoint";
       host_environment =
         Prop.computed __type __id "host_environment";
       id = Prop.computed __type __id "id";
       medium_changer_type =
         Prop.computed __type __id "medium_changer_type";
       smb_file_share_visibility =
         Prop.computed __type __id "smb_file_share_visibility";
       smb_guest_password =
         Prop.computed __type __id "smb_guest_password";
       smb_security_strategy =
         Prop.computed __type __id "smb_security_strategy";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       tape_drive_type = Prop.computed __type __id "tape_drive_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_storagegateway_gateway
        (aws_storagegateway_gateway ?activation_key
           ?average_download_rate_limit_in_bits_per_sec
           ?average_upload_rate_limit_in_bits_per_sec
           ?cloudwatch_log_group_arn ?gateway_ip_address
           ?gateway_type ?gateway_vpc_endpoint ?id
           ?medium_changer_type ?smb_file_share_visibility
           ?smb_guest_password ?smb_security_strategy ?tags ?tags_all
           ?tape_drive_type ~maintenance_start_time
           ~smb_active_directory_settings ?timeouts ~gateway_name
           ~gateway_timezone ());
    attrs = __attrs;
  }

let register ?tf_module ?activation_key
    ?average_download_rate_limit_in_bits_per_sec
    ?average_upload_rate_limit_in_bits_per_sec
    ?cloudwatch_log_group_arn ?gateway_ip_address ?gateway_type
    ?gateway_vpc_endpoint ?id ?medium_changer_type
    ?smb_file_share_visibility ?smb_guest_password
    ?smb_security_strategy ?tags ?tags_all ?tape_drive_type
    ?(maintenance_start_time = [])
    ?(smb_active_directory_settings = []) ?timeouts ~gateway_name
    ~gateway_timezone __id =
  let (r : _ Tf_core.resource) =
    make ?activation_key ?average_download_rate_limit_in_bits_per_sec
      ?average_upload_rate_limit_in_bits_per_sec
      ?cloudwatch_log_group_arn ?gateway_ip_address ?gateway_type
      ?gateway_vpc_endpoint ?id ?medium_changer_type
      ?smb_file_share_visibility ?smb_guest_password
      ?smb_security_strategy ?tags ?tags_all ?tape_drive_type
      ~maintenance_start_time ~smb_active_directory_settings
      ?timeouts ~gateway_name ~gateway_timezone __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

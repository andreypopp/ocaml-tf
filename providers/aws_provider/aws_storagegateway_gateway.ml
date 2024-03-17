(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_storagegateway_gateway__maintenance_start_time = {
  day_of_month : string prop option; [@option]  (** day_of_month *)
  day_of_week : string prop option; [@option]  (** day_of_week *)
  hour_of_day : float prop;  (** hour_of_day *)
  minute_of_hour : float prop option; [@option]  (** minute_of_hour *)
}
[@@deriving yojson_of]
(** aws_storagegateway_gateway__maintenance_start_time *)

type aws_storagegateway_gateway__smb_active_directory_settings = {
  active_directory_status : string prop;
      (** active_directory_status *)
  domain_controllers : string prop list option; [@option]
      (** domain_controllers *)
  domain_name : string prop;  (** domain_name *)
  organizational_unit : string prop option; [@option]
      (** organizational_unit *)
  password : string prop;  (** password *)
  timeout_in_seconds : float prop option; [@option]
      (** timeout_in_seconds *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** aws_storagegateway_gateway__smb_active_directory_settings *)

type aws_storagegateway_gateway__timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_storagegateway_gateway__timeouts *)

type aws_storagegateway_gateway__gateway_network_interface = {
  ipv4_address : string prop;  (** ipv4_address *)
}
[@@deriving yojson_of]

type aws_storagegateway_gateway = {
  activation_key : string prop option; [@option]
      (** activation_key *)
  average_download_rate_limit_in_bits_per_sec : float prop option;
      [@option]
      (** average_download_rate_limit_in_bits_per_sec *)
  average_upload_rate_limit_in_bits_per_sec : float prop option;
      [@option]
      (** average_upload_rate_limit_in_bits_per_sec *)
  cloudwatch_log_group_arn : string prop option; [@option]
      (** cloudwatch_log_group_arn *)
  gateway_ip_address : string prop option; [@option]
      (** gateway_ip_address *)
  gateway_name : string prop;  (** gateway_name *)
  gateway_timezone : string prop;  (** gateway_timezone *)
  gateway_type : string prop option; [@option]  (** gateway_type *)
  gateway_vpc_endpoint : string prop option; [@option]
      (** gateway_vpc_endpoint *)
  id : string prop option; [@option]  (** id *)
  medium_changer_type : string prop option; [@option]
      (** medium_changer_type *)
  smb_file_share_visibility : bool prop option; [@option]
      (** smb_file_share_visibility *)
  smb_guest_password : string prop option; [@option]
      (** smb_guest_password *)
  smb_security_strategy : string prop option; [@option]
      (** smb_security_strategy *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  tape_drive_type : string prop option; [@option]
      (** tape_drive_type *)
  maintenance_start_time :
    aws_storagegateway_gateway__maintenance_start_time list;
  smb_active_directory_settings :
    aws_storagegateway_gateway__smb_active_directory_settings list;
  timeouts : aws_storagegateway_gateway__timeouts option;
}
[@@deriving yojson_of]
(** aws_storagegateway_gateway *)

type t = {
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
  gateway_network_interface :
    aws_storagegateway_gateway__gateway_network_interface list prop;
  gateway_timezone : string prop;
  gateway_type : string prop;
  gateway_vpc_endpoint : string prop;
  host_environment : string prop;
  id : string prop;
  medium_changer_type : string prop;
  smb_file_share_visibility : bool prop;
  smb_guest_password : string prop;
  smb_security_strategy : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  tape_drive_type : string prop;
}

let aws_storagegateway_gateway ?activation_key
    ?average_download_rate_limit_in_bits_per_sec
    ?average_upload_rate_limit_in_bits_per_sec
    ?cloudwatch_log_group_arn ?gateway_ip_address ?gateway_type
    ?gateway_vpc_endpoint ?id ?medium_changer_type
    ?smb_file_share_visibility ?smb_guest_password
    ?smb_security_strategy ?tags ?tags_all ?tape_drive_type ?timeouts
    ~gateway_name ~gateway_timezone ~maintenance_start_time
    ~smb_active_directory_settings __resource_id =
  let __resource_type = "aws_storagegateway_gateway" in
  let __resource =
    ({
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
      : aws_storagegateway_gateway)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_storagegateway_gateway __resource);
  let __resource_attributes =
    ({
       activation_key =
         Prop.computed __resource_type __resource_id "activation_key";
       arn = Prop.computed __resource_type __resource_id "arn";
       average_download_rate_limit_in_bits_per_sec =
         Prop.computed __resource_type __resource_id
           "average_download_rate_limit_in_bits_per_sec";
       average_upload_rate_limit_in_bits_per_sec =
         Prop.computed __resource_type __resource_id
           "average_upload_rate_limit_in_bits_per_sec";
       cloudwatch_log_group_arn =
         Prop.computed __resource_type __resource_id
           "cloudwatch_log_group_arn";
       ec2_instance_id =
         Prop.computed __resource_type __resource_id
           "ec2_instance_id";
       endpoint_type =
         Prop.computed __resource_type __resource_id "endpoint_type";
       gateway_id =
         Prop.computed __resource_type __resource_id "gateway_id";
       gateway_ip_address =
         Prop.computed __resource_type __resource_id
           "gateway_ip_address";
       gateway_name =
         Prop.computed __resource_type __resource_id "gateway_name";
       gateway_network_interface =
         Prop.computed __resource_type __resource_id
           "gateway_network_interface";
       gateway_timezone =
         Prop.computed __resource_type __resource_id
           "gateway_timezone";
       gateway_type =
         Prop.computed __resource_type __resource_id "gateway_type";
       gateway_vpc_endpoint =
         Prop.computed __resource_type __resource_id
           "gateway_vpc_endpoint";
       host_environment =
         Prop.computed __resource_type __resource_id
           "host_environment";
       id = Prop.computed __resource_type __resource_id "id";
       medium_changer_type =
         Prop.computed __resource_type __resource_id
           "medium_changer_type";
       smb_file_share_visibility =
         Prop.computed __resource_type __resource_id
           "smb_file_share_visibility";
       smb_guest_password =
         Prop.computed __resource_type __resource_id
           "smb_guest_password";
       smb_security_strategy =
         Prop.computed __resource_type __resource_id
           "smb_security_strategy";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       tape_drive_type =
         Prop.computed __resource_type __resource_id
           "tape_drive_type";
     }
      : t)
  in
  __resource_attributes

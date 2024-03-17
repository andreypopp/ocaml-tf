(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_storagegateway_gateway__maintenance_start_time = {
  day_of_month : string option; [@option]  (** day_of_month *)
  day_of_week : string option; [@option]  (** day_of_week *)
  hour_of_day : float;  (** hour_of_day *)
  minute_of_hour : float option; [@option]  (** minute_of_hour *)
}
[@@deriving yojson_of]
(** aws_storagegateway_gateway__maintenance_start_time *)

type aws_storagegateway_gateway__smb_active_directory_settings = {
  active_directory_status : string;  (** active_directory_status *)
  domain_controllers : string list option; [@option]
      (** domain_controllers *)
  domain_name : string;  (** domain_name *)
  organizational_unit : string option; [@option]
      (** organizational_unit *)
  password : string;  (** password *)
  timeout_in_seconds : float option; [@option]
      (** timeout_in_seconds *)
  username : string;  (** username *)
}
[@@deriving yojson_of]
(** aws_storagegateway_gateway__smb_active_directory_settings *)

type aws_storagegateway_gateway__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_storagegateway_gateway__timeouts *)

type aws_storagegateway_gateway__gateway_network_interface = {
  ipv4_address : string;  (** ipv4_address *)
}
[@@deriving yojson_of]

type aws_storagegateway_gateway = {
  activation_key : string option; [@option]  (** activation_key *)
  average_download_rate_limit_in_bits_per_sec : float option;
      [@option]
      (** average_download_rate_limit_in_bits_per_sec *)
  average_upload_rate_limit_in_bits_per_sec : float option; [@option]
      (** average_upload_rate_limit_in_bits_per_sec *)
  cloudwatch_log_group_arn : string option; [@option]
      (** cloudwatch_log_group_arn *)
  gateway_ip_address : string option; [@option]
      (** gateway_ip_address *)
  gateway_name : string;  (** gateway_name *)
  gateway_timezone : string;  (** gateway_timezone *)
  gateway_type : string option; [@option]  (** gateway_type *)
  gateway_vpc_endpoint : string option; [@option]
      (** gateway_vpc_endpoint *)
  id : string option; [@option]  (** id *)
  medium_changer_type : string option; [@option]
      (** medium_changer_type *)
  smb_file_share_visibility : bool option; [@option]
      (** smb_file_share_visibility *)
  smb_guest_password : string option; [@option]
      (** smb_guest_password *)
  smb_security_strategy : string option; [@option]
      (** smb_security_strategy *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  tape_drive_type : string option; [@option]  (** tape_drive_type *)
  maintenance_start_time :
    aws_storagegateway_gateway__maintenance_start_time list;
  smb_active_directory_settings :
    aws_storagegateway_gateway__smb_active_directory_settings list;
  timeouts : aws_storagegateway_gateway__timeouts option;
}
[@@deriving yojson_of]
(** aws_storagegateway_gateway *)

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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_storagegateway_gateway __resource);
  ()

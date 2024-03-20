(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type gateway_network_interface = {
  ipv4_address : string prop;  (** ipv4_address *)
}

type maintenance_start_time

val maintenance_start_time :
  ?day_of_month:string prop ->
  ?day_of_week:string prop ->
  ?minute_of_hour:float prop ->
  hour_of_day:float prop ->
  unit ->
  maintenance_start_time

type smb_active_directory_settings

val smb_active_directory_settings :
  ?domain_controllers:string prop list ->
  ?organizational_unit:string prop ->
  ?timeout_in_seconds:float prop ->
  domain_name:string prop ->
  password:string prop ->
  username:string prop ->
  unit ->
  smb_active_directory_settings

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type aws_storagegateway_gateway

val aws_storagegateway_gateway :
  ?activation_key:string prop ->
  ?average_download_rate_limit_in_bits_per_sec:float prop ->
  ?average_upload_rate_limit_in_bits_per_sec:float prop ->
  ?cloudwatch_log_group_arn:string prop ->
  ?gateway_ip_address:string prop ->
  ?gateway_type:string prop ->
  ?gateway_vpc_endpoint:string prop ->
  ?id:string prop ->
  ?medium_changer_type:string prop ->
  ?smb_file_share_visibility:bool prop ->
  ?smb_guest_password:string prop ->
  ?smb_security_strategy:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?tape_drive_type:string prop ->
  ?timeouts:timeouts ->
  gateway_name:string prop ->
  gateway_timezone:string prop ->
  maintenance_start_time:maintenance_start_time list ->
  smb_active_directory_settings:smb_active_directory_settings list ->
  unit ->
  aws_storagegateway_gateway

val yojson_of_aws_storagegateway_gateway :
  aws_storagegateway_gateway -> json

(** RESOURCE REGISTRATION *)

type t = private {
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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  tape_drive_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?activation_key:string prop ->
  ?average_download_rate_limit_in_bits_per_sec:float prop ->
  ?average_upload_rate_limit_in_bits_per_sec:float prop ->
  ?cloudwatch_log_group_arn:string prop ->
  ?gateway_ip_address:string prop ->
  ?gateway_type:string prop ->
  ?gateway_vpc_endpoint:string prop ->
  ?id:string prop ->
  ?medium_changer_type:string prop ->
  ?smb_file_share_visibility:bool prop ->
  ?smb_guest_password:string prop ->
  ?smb_security_strategy:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?tape_drive_type:string prop ->
  ?timeouts:timeouts ->
  gateway_name:string prop ->
  gateway_timezone:string prop ->
  maintenance_start_time:maintenance_start_time list ->
  smb_active_directory_settings:smb_active_directory_settings list ->
  string ->
  t

val make :
  ?activation_key:string prop ->
  ?average_download_rate_limit_in_bits_per_sec:float prop ->
  ?average_upload_rate_limit_in_bits_per_sec:float prop ->
  ?cloudwatch_log_group_arn:string prop ->
  ?gateway_ip_address:string prop ->
  ?gateway_type:string prop ->
  ?gateway_vpc_endpoint:string prop ->
  ?id:string prop ->
  ?medium_changer_type:string prop ->
  ?smb_file_share_visibility:bool prop ->
  ?smb_guest_password:string prop ->
  ?smb_security_strategy:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?tape_drive_type:string prop ->
  ?timeouts:timeouts ->
  gateway_name:string prop ->
  gateway_timezone:string prop ->
  maintenance_start_time:maintenance_start_time list ->
  smb_active_directory_settings:smb_active_directory_settings list ->
  string ->
  t Tf_core.resource

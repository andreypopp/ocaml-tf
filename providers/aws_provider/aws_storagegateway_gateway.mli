(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_storagegateway_gateway__maintenance_start_time
type aws_storagegateway_gateway__smb_active_directory_settings
type aws_storagegateway_gateway__timeouts

type aws_storagegateway_gateway__gateway_network_interface = {
  ipv4_address : string prop;  (** ipv4_address *)
}

type aws_storagegateway_gateway

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
  ?timeouts:aws_storagegateway_gateway__timeouts ->
  gateway_name:string prop ->
  gateway_timezone:string prop ->
  maintenance_start_time:
    aws_storagegateway_gateway__maintenance_start_time list ->
  smb_active_directory_settings:
    aws_storagegateway_gateway__smb_active_directory_settings list ->
  string ->
  t

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_storagegateway_gateway__maintenance_start_time
type aws_storagegateway_gateway__smb_active_directory_settings
type aws_storagegateway_gateway__timeouts

type aws_storagegateway_gateway__gateway_network_interface = {
  ipv4_address : string;  (** ipv4_address *)
}
[@@deriving yojson_of]

type aws_storagegateway_gateway

val aws_storagegateway_gateway :
  ?average_download_rate_limit_in_bits_per_sec:float ->
  ?average_upload_rate_limit_in_bits_per_sec:float ->
  ?cloudwatch_log_group_arn:string ->
  ?gateway_type:string ->
  ?gateway_vpc_endpoint:string ->
  ?medium_changer_type:string ->
  ?smb_file_share_visibility:bool ->
  ?smb_guest_password:string ->
  ?tags:(string * string) list ->
  ?tape_drive_type:string ->
  ?timeouts:aws_storagegateway_gateway__timeouts ->
  gateway_name:string ->
  gateway_timezone:string ->
  maintenance_start_time:
    aws_storagegateway_gateway__maintenance_start_time list ->
  smb_active_directory_settings:
    aws_storagegateway_gateway__smb_active_directory_settings list ->
  string ->
  unit

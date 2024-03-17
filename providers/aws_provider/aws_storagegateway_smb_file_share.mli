(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_storagegateway_smb_file_share__cache_attributes
type aws_storagegateway_smb_file_share__timeouts
type aws_storagegateway_smb_file_share

val aws_storagegateway_smb_file_share :
  ?access_based_enumeration:bool ->
  ?admin_user_list:string list ->
  ?audit_destination_arn:string ->
  ?authentication:string ->
  ?bucket_region:string ->
  ?case_sensitivity:string ->
  ?default_storage_class:string ->
  ?guess_mime_type_enabled:bool ->
  ?invalid_user_list:string list ->
  ?kms_encrypted:bool ->
  ?kms_key_arn:string ->
  ?notification_policy:string ->
  ?object_acl:string ->
  ?read_only:bool ->
  ?requester_pays:bool ->
  ?smb_acl_enabled:bool ->
  ?tags:(string * string) list ->
  ?valid_user_list:string list ->
  ?vpc_endpoint_dns_name:string ->
  ?timeouts:aws_storagegateway_smb_file_share__timeouts ->
  gateway_arn:string ->
  location_arn:string ->
  role_arn:string ->
  cache_attributes:
    aws_storagegateway_smb_file_share__cache_attributes list ->
  string ->
  unit

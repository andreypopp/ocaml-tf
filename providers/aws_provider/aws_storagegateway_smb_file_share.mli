(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_storagegateway_smb_file_share__cache_attributes
type aws_storagegateway_smb_file_share__timeouts
type aws_storagegateway_smb_file_share

val aws_storagegateway_smb_file_share :
  ?access_based_enumeration:bool prop ->
  ?admin_user_list:string prop list ->
  ?audit_destination_arn:string prop ->
  ?authentication:string prop ->
  ?bucket_region:string prop ->
  ?case_sensitivity:string prop ->
  ?default_storage_class:string prop ->
  ?file_share_name:string prop ->
  ?guess_mime_type_enabled:bool prop ->
  ?id:string prop ->
  ?invalid_user_list:string prop list ->
  ?kms_encrypted:bool prop ->
  ?kms_key_arn:string prop ->
  ?notification_policy:string prop ->
  ?object_acl:string prop ->
  ?oplocks_enabled:bool prop ->
  ?read_only:bool prop ->
  ?requester_pays:bool prop ->
  ?smb_acl_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?valid_user_list:string prop list ->
  ?vpc_endpoint_dns_name:string prop ->
  ?timeouts:aws_storagegateway_smb_file_share__timeouts ->
  gateway_arn:string prop ->
  location_arn:string prop ->
  role_arn:string prop ->
  cache_attributes:
    aws_storagegateway_smb_file_share__cache_attributes list ->
  string ->
  unit

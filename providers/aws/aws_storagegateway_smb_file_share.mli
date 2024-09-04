(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cache_attributes

val cache_attributes :
  ?cache_stale_timeout_in_seconds:float prop ->
  unit ->
  cache_attributes

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?valid_user_list:string prop list ->
  ?vpc_endpoint_dns_name:string prop ->
  ?cache_attributes:cache_attributes list ->
  ?timeouts:timeouts ->
  gateway_arn:string prop ->
  location_arn:string prop ->
  role_arn:string prop ->
  unit ->
  aws_storagegateway_smb_file_share

val yojson_of_aws_storagegateway_smb_file_share :
  aws_storagegateway_smb_file_share -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_based_enumeration : bool prop;
  admin_user_list : string list prop;
  arn : string prop;
  audit_destination_arn : string prop;
  authentication : string prop;
  bucket_region : string prop;
  case_sensitivity : string prop;
  default_storage_class : string prop;
  file_share_name : string prop;
  fileshare_id : string prop;
  gateway_arn : string prop;
  guess_mime_type_enabled : bool prop;
  id : string prop;
  invalid_user_list : string list prop;
  kms_encrypted : bool prop;
  kms_key_arn : string prop;
  location_arn : string prop;
  notification_policy : string prop;
  object_acl : string prop;
  oplocks_enabled : bool prop;
  path : string prop;
  read_only : bool prop;
  requester_pays : bool prop;
  role_arn : string prop;
  smb_acl_enabled : bool prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  valid_user_list : string list prop;
  vpc_endpoint_dns_name : string prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?valid_user_list:string prop list ->
  ?vpc_endpoint_dns_name:string prop ->
  ?cache_attributes:cache_attributes list ->
  ?timeouts:timeouts ->
  gateway_arn:string prop ->
  location_arn:string prop ->
  role_arn:string prop ->
  string ->
  t

val make :
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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?valid_user_list:string prop list ->
  ?vpc_endpoint_dns_name:string prop ->
  ?cache_attributes:cache_attributes list ->
  ?timeouts:timeouts ->
  gateway_arn:string prop ->
  location_arn:string prop ->
  role_arn:string prop ->
  string ->
  t Tf_core.resource

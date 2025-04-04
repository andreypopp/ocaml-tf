(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cache_attributes

val cache_attributes :
  ?cache_stale_timeout_in_seconds:float prop ->
  unit ->
  cache_attributes

type nfs_file_share_defaults

val nfs_file_share_defaults :
  ?directory_mode:string prop ->
  ?file_mode:string prop ->
  ?group_id:string prop ->
  ?owner_id:string prop ->
  unit ->
  nfs_file_share_defaults

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_storagegateway_nfs_file_share

val aws_storagegateway_nfs_file_share :
  ?audit_destination_arn:string prop ->
  ?bucket_region:string prop ->
  ?default_storage_class:string prop ->
  ?file_share_name:string prop ->
  ?guess_mime_type_enabled:bool prop ->
  ?id:string prop ->
  ?kms_encrypted:bool prop ->
  ?kms_key_arn:string prop ->
  ?notification_policy:string prop ->
  ?object_acl:string prop ->
  ?read_only:bool prop ->
  ?requester_pays:bool prop ->
  ?squash:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?vpc_endpoint_dns_name:string prop ->
  ?cache_attributes:cache_attributes list ->
  ?nfs_file_share_defaults:nfs_file_share_defaults list ->
  ?timeouts:timeouts ->
  client_list:string prop list ->
  gateway_arn:string prop ->
  location_arn:string prop ->
  role_arn:string prop ->
  unit ->
  aws_storagegateway_nfs_file_share

val yojson_of_aws_storagegateway_nfs_file_share :
  aws_storagegateway_nfs_file_share -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  audit_destination_arn : string prop;
  bucket_region : string prop;
  client_list : string list prop;
  default_storage_class : string prop;
  file_share_name : string prop;
  fileshare_id : string prop;
  gateway_arn : string prop;
  guess_mime_type_enabled : bool prop;
  id : string prop;
  kms_encrypted : bool prop;
  kms_key_arn : string prop;
  location_arn : string prop;
  notification_policy : string prop;
  object_acl : string prop;
  path : string prop;
  read_only : bool prop;
  requester_pays : bool prop;
  role_arn : string prop;
  squash : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  vpc_endpoint_dns_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?audit_destination_arn:string prop ->
  ?bucket_region:string prop ->
  ?default_storage_class:string prop ->
  ?file_share_name:string prop ->
  ?guess_mime_type_enabled:bool prop ->
  ?id:string prop ->
  ?kms_encrypted:bool prop ->
  ?kms_key_arn:string prop ->
  ?notification_policy:string prop ->
  ?object_acl:string prop ->
  ?read_only:bool prop ->
  ?requester_pays:bool prop ->
  ?squash:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?vpc_endpoint_dns_name:string prop ->
  ?cache_attributes:cache_attributes list ->
  ?nfs_file_share_defaults:nfs_file_share_defaults list ->
  ?timeouts:timeouts ->
  client_list:string prop list ->
  gateway_arn:string prop ->
  location_arn:string prop ->
  role_arn:string prop ->
  string ->
  t

val make :
  ?audit_destination_arn:string prop ->
  ?bucket_region:string prop ->
  ?default_storage_class:string prop ->
  ?file_share_name:string prop ->
  ?guess_mime_type_enabled:bool prop ->
  ?id:string prop ->
  ?kms_encrypted:bool prop ->
  ?kms_key_arn:string prop ->
  ?notification_policy:string prop ->
  ?object_acl:string prop ->
  ?read_only:bool prop ->
  ?requester_pays:bool prop ->
  ?squash:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?vpc_endpoint_dns_name:string prop ->
  ?cache_attributes:cache_attributes list ->
  ?nfs_file_share_defaults:nfs_file_share_defaults list ->
  ?timeouts:timeouts ->
  client_list:string prop list ->
  gateway_arn:string prop ->
  location_arn:string prop ->
  role_arn:string prop ->
  string ->
  t Tf_core.resource

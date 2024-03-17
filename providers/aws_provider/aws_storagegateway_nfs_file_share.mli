(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_storagegateway_nfs_file_share__cache_attributes
type aws_storagegateway_nfs_file_share__nfs_file_share_defaults
type aws_storagegateway_nfs_file_share__timeouts
type aws_storagegateway_nfs_file_share

type t = private {
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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_endpoint_dns_name : string prop;
}

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
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?vpc_endpoint_dns_name:string prop ->
  ?timeouts:aws_storagegateway_nfs_file_share__timeouts ->
  client_list:string prop list ->
  gateway_arn:string prop ->
  location_arn:string prop ->
  role_arn:string prop ->
  cache_attributes:
    aws_storagegateway_nfs_file_share__cache_attributes list ->
  nfs_file_share_defaults:
    aws_storagegateway_nfs_file_share__nfs_file_share_defaults list ->
  string ->
  t

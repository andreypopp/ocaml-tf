(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_storagegateway_nfs_file_share__cache_attributes
type aws_storagegateway_nfs_file_share__nfs_file_share_defaults
type aws_storagegateway_nfs_file_share__timeouts
type aws_storagegateway_nfs_file_share

val aws_storagegateway_nfs_file_share :
  ?audit_destination_arn:string ->
  ?bucket_region:string ->
  ?default_storage_class:string ->
  ?file_share_name:string ->
  ?guess_mime_type_enabled:bool ->
  ?id:string ->
  ?kms_encrypted:bool ->
  ?kms_key_arn:string ->
  ?notification_policy:string ->
  ?object_acl:string ->
  ?read_only:bool ->
  ?requester_pays:bool ->
  ?squash:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?vpc_endpoint_dns_name:string ->
  ?timeouts:aws_storagegateway_nfs_file_share__timeouts ->
  client_list:string list ->
  gateway_arn:string ->
  location_arn:string ->
  role_arn:string ->
  cache_attributes:
    aws_storagegateway_nfs_file_share__cache_attributes list ->
  nfs_file_share_defaults:
    aws_storagegateway_nfs_file_share__nfs_file_share_defaults list ->
  string ->
  unit

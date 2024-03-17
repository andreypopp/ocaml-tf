(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_storagegateway_nfs_file_share__cache_attributes = {
  cache_stale_timeout_in_seconds : float prop option; [@option]
      (** cache_stale_timeout_in_seconds *)
}
[@@deriving yojson_of]
(** aws_storagegateway_nfs_file_share__cache_attributes *)

type aws_storagegateway_nfs_file_share__nfs_file_share_defaults = {
  directory_mode : string prop option; [@option]
      (** directory_mode *)
  file_mode : string prop option; [@option]  (** file_mode *)
  group_id : string prop option; [@option]  (** group_id *)
  owner_id : string prop option; [@option]  (** owner_id *)
}
[@@deriving yojson_of]
(** aws_storagegateway_nfs_file_share__nfs_file_share_defaults *)

type aws_storagegateway_nfs_file_share__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_storagegateway_nfs_file_share__timeouts *)

type aws_storagegateway_nfs_file_share = {
  audit_destination_arn : string prop option; [@option]
      (** audit_destination_arn *)
  bucket_region : string prop option; [@option]  (** bucket_region *)
  client_list : string prop list;  (** client_list *)
  default_storage_class : string prop option; [@option]
      (** default_storage_class *)
  file_share_name : string prop option; [@option]
      (** file_share_name *)
  gateway_arn : string prop;  (** gateway_arn *)
  guess_mime_type_enabled : bool prop option; [@option]
      (** guess_mime_type_enabled *)
  id : string prop option; [@option]  (** id *)
  kms_encrypted : bool prop option; [@option]  (** kms_encrypted *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  location_arn : string prop;  (** location_arn *)
  notification_policy : string prop option; [@option]
      (** notification_policy *)
  object_acl : string prop option; [@option]  (** object_acl *)
  read_only : bool prop option; [@option]  (** read_only *)
  requester_pays : bool prop option; [@option]  (** requester_pays *)
  role_arn : string prop;  (** role_arn *)
  squash : string prop option; [@option]  (** squash *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_endpoint_dns_name : string prop option; [@option]
      (** vpc_endpoint_dns_name *)
  cache_attributes :
    aws_storagegateway_nfs_file_share__cache_attributes list;
  nfs_file_share_defaults :
    aws_storagegateway_nfs_file_share__nfs_file_share_defaults list;
  timeouts : aws_storagegateway_nfs_file_share__timeouts option;
}
[@@deriving yojson_of]
(** aws_storagegateway_nfs_file_share *)

let aws_storagegateway_nfs_file_share ?audit_destination_arn
    ?bucket_region ?default_storage_class ?file_share_name
    ?guess_mime_type_enabled ?id ?kms_encrypted ?kms_key_arn
    ?notification_policy ?object_acl ?read_only ?requester_pays
    ?squash ?tags ?tags_all ?vpc_endpoint_dns_name ?timeouts
    ~client_list ~gateway_arn ~location_arn ~role_arn
    ~cache_attributes ~nfs_file_share_defaults __resource_id =
  let __resource_type = "aws_storagegateway_nfs_file_share" in
  let __resource =
    {
      audit_destination_arn;
      bucket_region;
      client_list;
      default_storage_class;
      file_share_name;
      gateway_arn;
      guess_mime_type_enabled;
      id;
      kms_encrypted;
      kms_key_arn;
      location_arn;
      notification_policy;
      object_acl;
      read_only;
      requester_pays;
      role_arn;
      squash;
      tags;
      tags_all;
      vpc_endpoint_dns_name;
      cache_attributes;
      nfs_file_share_defaults;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_storagegateway_nfs_file_share __resource);
  ()

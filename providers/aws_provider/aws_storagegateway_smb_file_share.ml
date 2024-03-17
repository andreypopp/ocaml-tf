(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_storagegateway_smb_file_share__cache_attributes = {
  cache_stale_timeout_in_seconds : float option; [@option]
      (** cache_stale_timeout_in_seconds *)
}
[@@deriving yojson_of]
(** aws_storagegateway_smb_file_share__cache_attributes *)

type aws_storagegateway_smb_file_share__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_storagegateway_smb_file_share__timeouts *)

type aws_storagegateway_smb_file_share = {
  access_based_enumeration : bool option; [@option]
      (** access_based_enumeration *)
  admin_user_list : string list option; [@option]
      (** admin_user_list *)
  audit_destination_arn : string option; [@option]
      (** audit_destination_arn *)
  authentication : string option; [@option]  (** authentication *)
  bucket_region : string option; [@option]  (** bucket_region *)
  case_sensitivity : string option; [@option]
      (** case_sensitivity *)
  default_storage_class : string option; [@option]
      (** default_storage_class *)
  gateway_arn : string;  (** gateway_arn *)
  guess_mime_type_enabled : bool option; [@option]
      (** guess_mime_type_enabled *)
  invalid_user_list : string list option; [@option]
      (** invalid_user_list *)
  kms_encrypted : bool option; [@option]  (** kms_encrypted *)
  kms_key_arn : string option; [@option]  (** kms_key_arn *)
  location_arn : string;  (** location_arn *)
  notification_policy : string option; [@option]
      (** notification_policy *)
  object_acl : string option; [@option]  (** object_acl *)
  read_only : bool option; [@option]  (** read_only *)
  requester_pays : bool option; [@option]  (** requester_pays *)
  role_arn : string;  (** role_arn *)
  smb_acl_enabled : bool option; [@option]  (** smb_acl_enabled *)
  tags : (string * string) list option; [@option]  (** tags *)
  valid_user_list : string list option; [@option]
      (** valid_user_list *)
  vpc_endpoint_dns_name : string option; [@option]
      (** vpc_endpoint_dns_name *)
  cache_attributes :
    aws_storagegateway_smb_file_share__cache_attributes list;
  timeouts : aws_storagegateway_smb_file_share__timeouts option;
}
[@@deriving yojson_of]
(** aws_storagegateway_smb_file_share *)

let aws_storagegateway_smb_file_share ?access_based_enumeration
    ?admin_user_list ?audit_destination_arn ?authentication
    ?bucket_region ?case_sensitivity ?default_storage_class
    ?guess_mime_type_enabled ?invalid_user_list ?kms_encrypted
    ?kms_key_arn ?notification_policy ?object_acl ?read_only
    ?requester_pays ?smb_acl_enabled ?tags ?valid_user_list
    ?vpc_endpoint_dns_name ?timeouts ~gateway_arn ~location_arn
    ~role_arn ~cache_attributes __resource_id =
  let __resource_type = "aws_storagegateway_smb_file_share" in
  let __resource =
    {
      access_based_enumeration;
      admin_user_list;
      audit_destination_arn;
      authentication;
      bucket_region;
      case_sensitivity;
      default_storage_class;
      gateway_arn;
      guess_mime_type_enabled;
      invalid_user_list;
      kms_encrypted;
      kms_key_arn;
      location_arn;
      notification_policy;
      object_acl;
      read_only;
      requester_pays;
      role_arn;
      smb_acl_enabled;
      tags;
      valid_user_list;
      vpc_endpoint_dns_name;
      cache_attributes;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_storagegateway_smb_file_share __resource);
  ()

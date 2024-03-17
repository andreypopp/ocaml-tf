(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_storagegateway_smb_file_share__cache_attributes = {
  cache_stale_timeout_in_seconds : float prop option; [@option]
      (** cache_stale_timeout_in_seconds *)
}
[@@deriving yojson_of]
(** aws_storagegateway_smb_file_share__cache_attributes *)

type aws_storagegateway_smb_file_share__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_storagegateway_smb_file_share__timeouts *)

type aws_storagegateway_smb_file_share = {
  access_based_enumeration : bool prop option; [@option]
      (** access_based_enumeration *)
  admin_user_list : string prop list option; [@option]
      (** admin_user_list *)
  audit_destination_arn : string prop option; [@option]
      (** audit_destination_arn *)
  authentication : string prop option; [@option]
      (** authentication *)
  bucket_region : string prop option; [@option]  (** bucket_region *)
  case_sensitivity : string prop option; [@option]
      (** case_sensitivity *)
  default_storage_class : string prop option; [@option]
      (** default_storage_class *)
  file_share_name : string prop option; [@option]
      (** file_share_name *)
  gateway_arn : string prop;  (** gateway_arn *)
  guess_mime_type_enabled : bool prop option; [@option]
      (** guess_mime_type_enabled *)
  id : string prop option; [@option]  (** id *)
  invalid_user_list : string prop list option; [@option]
      (** invalid_user_list *)
  kms_encrypted : bool prop option; [@option]  (** kms_encrypted *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  location_arn : string prop;  (** location_arn *)
  notification_policy : string prop option; [@option]
      (** notification_policy *)
  object_acl : string prop option; [@option]  (** object_acl *)
  oplocks_enabled : bool prop option; [@option]
      (** oplocks_enabled *)
  read_only : bool prop option; [@option]  (** read_only *)
  requester_pays : bool prop option; [@option]  (** requester_pays *)
  role_arn : string prop;  (** role_arn *)
  smb_acl_enabled : bool prop option; [@option]
      (** smb_acl_enabled *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  valid_user_list : string prop list option; [@option]
      (** valid_user_list *)
  vpc_endpoint_dns_name : string prop option; [@option]
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
    ?file_share_name ?guess_mime_type_enabled ?id ?invalid_user_list
    ?kms_encrypted ?kms_key_arn ?notification_policy ?object_acl
    ?oplocks_enabled ?read_only ?requester_pays ?smb_acl_enabled
    ?tags ?tags_all ?valid_user_list ?vpc_endpoint_dns_name ?timeouts
    ~gateway_arn ~location_arn ~role_arn ~cache_attributes
    __resource_id =
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
      file_share_name;
      gateway_arn;
      guess_mime_type_enabled;
      id;
      invalid_user_list;
      kms_encrypted;
      kms_key_arn;
      location_arn;
      notification_policy;
      object_acl;
      oplocks_enabled;
      read_only;
      requester_pays;
      role_arn;
      smb_acl_enabled;
      tags;
      tags_all;
      valid_user_list;
      vpc_endpoint_dns_name;
      cache_attributes;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_storagegateway_smb_file_share __resource);
  ()

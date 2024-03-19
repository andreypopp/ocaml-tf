(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cache_attributes = {
  cache_stale_timeout_in_seconds : float prop option; [@option]
      (** cache_stale_timeout_in_seconds *)
}
[@@deriving yojson_of]
(** cache_attributes *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  cache_attributes : cache_attributes list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_storagegateway_smb_file_share *)

let cache_attributes ?cache_stale_timeout_in_seconds () :
    cache_attributes =
  { cache_stale_timeout_in_seconds }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_storagegateway_smb_file_share ?access_based_enumeration
    ?admin_user_list ?audit_destination_arn ?authentication
    ?bucket_region ?case_sensitivity ?default_storage_class
    ?file_share_name ?guess_mime_type_enabled ?id ?invalid_user_list
    ?kms_encrypted ?kms_key_arn ?notification_policy ?object_acl
    ?oplocks_enabled ?read_only ?requester_pays ?smb_acl_enabled
    ?tags ?tags_all ?valid_user_list ?vpc_endpoint_dns_name ?timeouts
    ~gateway_arn ~location_arn ~role_arn ~cache_attributes () :
    aws_storagegateway_smb_file_share =
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

type t = {
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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  valid_user_list : string list prop;
  vpc_endpoint_dns_name : string prop;
}

let register ?tf_module ?access_based_enumeration ?admin_user_list
    ?audit_destination_arn ?authentication ?bucket_region
    ?case_sensitivity ?default_storage_class ?file_share_name
    ?guess_mime_type_enabled ?id ?invalid_user_list ?kms_encrypted
    ?kms_key_arn ?notification_policy ?object_acl ?oplocks_enabled
    ?read_only ?requester_pays ?smb_acl_enabled ?tags ?tags_all
    ?valid_user_list ?vpc_endpoint_dns_name ?timeouts ~gateway_arn
    ~location_arn ~role_arn ~cache_attributes __resource_id =
  let __resource_type = "aws_storagegateway_smb_file_share" in
  let __resource =
    aws_storagegateway_smb_file_share ?access_based_enumeration
      ?admin_user_list ?audit_destination_arn ?authentication
      ?bucket_region ?case_sensitivity ?default_storage_class
      ?file_share_name ?guess_mime_type_enabled ?id
      ?invalid_user_list ?kms_encrypted ?kms_key_arn
      ?notification_policy ?object_acl ?oplocks_enabled ?read_only
      ?requester_pays ?smb_acl_enabled ?tags ?tags_all
      ?valid_user_list ?vpc_endpoint_dns_name ?timeouts ~gateway_arn
      ~location_arn ~role_arn ~cache_attributes ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_storagegateway_smb_file_share __resource);
  let __resource_attributes =
    ({
       access_based_enumeration =
         Prop.computed __resource_type __resource_id
           "access_based_enumeration";
       admin_user_list =
         Prop.computed __resource_type __resource_id
           "admin_user_list";
       arn = Prop.computed __resource_type __resource_id "arn";
       audit_destination_arn =
         Prop.computed __resource_type __resource_id
           "audit_destination_arn";
       authentication =
         Prop.computed __resource_type __resource_id "authentication";
       bucket_region =
         Prop.computed __resource_type __resource_id "bucket_region";
       case_sensitivity =
         Prop.computed __resource_type __resource_id
           "case_sensitivity";
       default_storage_class =
         Prop.computed __resource_type __resource_id
           "default_storage_class";
       file_share_name =
         Prop.computed __resource_type __resource_id
           "file_share_name";
       fileshare_id =
         Prop.computed __resource_type __resource_id "fileshare_id";
       gateway_arn =
         Prop.computed __resource_type __resource_id "gateway_arn";
       guess_mime_type_enabled =
         Prop.computed __resource_type __resource_id
           "guess_mime_type_enabled";
       id = Prop.computed __resource_type __resource_id "id";
       invalid_user_list =
         Prop.computed __resource_type __resource_id
           "invalid_user_list";
       kms_encrypted =
         Prop.computed __resource_type __resource_id "kms_encrypted";
       kms_key_arn =
         Prop.computed __resource_type __resource_id "kms_key_arn";
       location_arn =
         Prop.computed __resource_type __resource_id "location_arn";
       notification_policy =
         Prop.computed __resource_type __resource_id
           "notification_policy";
       object_acl =
         Prop.computed __resource_type __resource_id "object_acl";
       oplocks_enabled =
         Prop.computed __resource_type __resource_id
           "oplocks_enabled";
       path = Prop.computed __resource_type __resource_id "path";
       read_only =
         Prop.computed __resource_type __resource_id "read_only";
       requester_pays =
         Prop.computed __resource_type __resource_id "requester_pays";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
       smb_acl_enabled =
         Prop.computed __resource_type __resource_id
           "smb_acl_enabled";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       valid_user_list =
         Prop.computed __resource_type __resource_id
           "valid_user_list";
       vpc_endpoint_dns_name =
         Prop.computed __resource_type __resource_id
           "vpc_endpoint_dns_name";
     }
      : t)
  in
  __resource_attributes

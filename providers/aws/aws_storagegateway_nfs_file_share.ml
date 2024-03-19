(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cache_attributes = {
  cache_stale_timeout_in_seconds : float prop option; [@option]
      (** cache_stale_timeout_in_seconds *)
}
[@@deriving yojson_of]
(** cache_attributes *)

type nfs_file_share_defaults = {
  directory_mode : string prop option; [@option]
      (** directory_mode *)
  file_mode : string prop option; [@option]  (** file_mode *)
  group_id : string prop option; [@option]  (** group_id *)
  owner_id : string prop option; [@option]  (** owner_id *)
}
[@@deriving yojson_of]
(** nfs_file_share_defaults *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  cache_attributes : cache_attributes list;
  nfs_file_share_defaults : nfs_file_share_defaults list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_storagegateway_nfs_file_share *)

let cache_attributes ?cache_stale_timeout_in_seconds () :
    cache_attributes =
  { cache_stale_timeout_in_seconds }

let nfs_file_share_defaults ?directory_mode ?file_mode ?group_id
    ?owner_id () : nfs_file_share_defaults =
  { directory_mode; file_mode; group_id; owner_id }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_storagegateway_nfs_file_share ?audit_destination_arn
    ?bucket_region ?default_storage_class ?file_share_name
    ?guess_mime_type_enabled ?id ?kms_encrypted ?kms_key_arn
    ?notification_policy ?object_acl ?read_only ?requester_pays
    ?squash ?tags ?tags_all ?vpc_endpoint_dns_name ?timeouts
    ~client_list ~gateway_arn ~location_arn ~role_arn
    ~cache_attributes ~nfs_file_share_defaults () :
    aws_storagegateway_nfs_file_share =
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

type t = {
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

let register ?tf_module ?audit_destination_arn ?bucket_region
    ?default_storage_class ?file_share_name ?guess_mime_type_enabled
    ?id ?kms_encrypted ?kms_key_arn ?notification_policy ?object_acl
    ?read_only ?requester_pays ?squash ?tags ?tags_all
    ?vpc_endpoint_dns_name ?timeouts ~client_list ~gateway_arn
    ~location_arn ~role_arn ~cache_attributes
    ~nfs_file_share_defaults __resource_id =
  let __resource_type = "aws_storagegateway_nfs_file_share" in
  let __resource =
    aws_storagegateway_nfs_file_share ?audit_destination_arn
      ?bucket_region ?default_storage_class ?file_share_name
      ?guess_mime_type_enabled ?id ?kms_encrypted ?kms_key_arn
      ?notification_policy ?object_acl ?read_only ?requester_pays
      ?squash ?tags ?tags_all ?vpc_endpoint_dns_name ?timeouts
      ~client_list ~gateway_arn ~location_arn ~role_arn
      ~cache_attributes ~nfs_file_share_defaults ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_storagegateway_nfs_file_share __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       audit_destination_arn =
         Prop.computed __resource_type __resource_id
           "audit_destination_arn";
       bucket_region =
         Prop.computed __resource_type __resource_id "bucket_region";
       client_list =
         Prop.computed __resource_type __resource_id "client_list";
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
       path = Prop.computed __resource_type __resource_id "path";
       read_only =
         Prop.computed __resource_type __resource_id "read_only";
       requester_pays =
         Prop.computed __resource_type __resource_id "requester_pays";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
       squash = Prop.computed __resource_type __resource_id "squash";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       vpc_endpoint_dns_name =
         Prop.computed __resource_type __resource_id
           "vpc_endpoint_dns_name";
     }
      : t)
  in
  __resource_attributes

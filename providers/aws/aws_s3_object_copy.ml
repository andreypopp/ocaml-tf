(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3_object_copy__grant = {
  email : string prop option; [@option]  (** email *)
  id : string prop option; [@option]  (** id *)
  permissions : string prop list;  (** permissions *)
  type_ : string prop; [@key "type"]  (** type *)
  uri : string prop option; [@option]  (** uri *)
}
[@@deriving yojson_of]
(** aws_s3_object_copy__grant *)

type aws_s3_object_copy = {
  acl : string prop option; [@option]  (** acl *)
  bucket : string prop;  (** bucket *)
  bucket_key_enabled : bool prop option; [@option]
      (** bucket_key_enabled *)
  cache_control : string prop option; [@option]  (** cache_control *)
  checksum_algorithm : string prop option; [@option]
      (** checksum_algorithm *)
  content_disposition : string prop option; [@option]
      (** content_disposition *)
  content_encoding : string prop option; [@option]
      (** content_encoding *)
  content_language : string prop option; [@option]
      (** content_language *)
  content_type : string prop option; [@option]  (** content_type *)
  copy_if_match : string prop option; [@option]  (** copy_if_match *)
  copy_if_modified_since : string prop option; [@option]
      (** copy_if_modified_since *)
  copy_if_none_match : string prop option; [@option]
      (** copy_if_none_match *)
  copy_if_unmodified_since : string prop option; [@option]
      (** copy_if_unmodified_since *)
  customer_algorithm : string prop option; [@option]
      (** customer_algorithm *)
  customer_key : string prop option; [@option]  (** customer_key *)
  customer_key_md5 : string prop option; [@option]
      (** customer_key_md5 *)
  expected_bucket_owner : string prop option; [@option]
      (** expected_bucket_owner *)
  expected_source_bucket_owner : string prop option; [@option]
      (** expected_source_bucket_owner *)
  expires : string prop option; [@option]  (** expires *)
  force_destroy : bool prop option; [@option]  (** force_destroy *)
  id : string prop option; [@option]  (** id *)
  key : string prop;  (** key *)
  kms_encryption_context : string prop option; [@option]
      (** kms_encryption_context *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  metadata : (string * string prop) list option; [@option]
      (** metadata *)
  metadata_directive : string prop option; [@option]
      (** metadata_directive *)
  object_lock_legal_hold_status : string prop option; [@option]
      (** object_lock_legal_hold_status *)
  object_lock_mode : string prop option; [@option]
      (** object_lock_mode *)
  object_lock_retain_until_date : string prop option; [@option]
      (** object_lock_retain_until_date *)
  request_payer : string prop option; [@option]  (** request_payer *)
  server_side_encryption : string prop option; [@option]
      (** server_side_encryption *)
  source : string prop;  (** source *)
  source_customer_algorithm : string prop option; [@option]
      (** source_customer_algorithm *)
  source_customer_key : string prop option; [@option]
      (** source_customer_key *)
  source_customer_key_md5 : string prop option; [@option]
      (** source_customer_key_md5 *)
  storage_class : string prop option; [@option]  (** storage_class *)
  tagging_directive : string prop option; [@option]
      (** tagging_directive *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  website_redirect : string prop option; [@option]
      (** website_redirect *)
  grant : aws_s3_object_copy__grant list;
}
[@@deriving yojson_of]
(** aws_s3_object_copy *)

type t = {
  acl : string prop;
  arn : string prop;
  bucket : string prop;
  bucket_key_enabled : bool prop;
  cache_control : string prop;
  checksum_algorithm : string prop;
  checksum_crc32 : string prop;
  checksum_crc32c : string prop;
  checksum_sha1 : string prop;
  checksum_sha256 : string prop;
  content_disposition : string prop;
  content_encoding : string prop;
  content_language : string prop;
  content_type : string prop;
  copy_if_match : string prop;
  copy_if_modified_since : string prop;
  copy_if_none_match : string prop;
  copy_if_unmodified_since : string prop;
  customer_algorithm : string prop;
  customer_key : string prop;
  customer_key_md5 : string prop;
  etag : string prop;
  expected_bucket_owner : string prop;
  expected_source_bucket_owner : string prop;
  expiration : string prop;
  expires : string prop;
  force_destroy : bool prop;
  id : string prop;
  key : string prop;
  kms_encryption_context : string prop;
  kms_key_id : string prop;
  last_modified : string prop;
  metadata : (string * string) list prop;
  metadata_directive : string prop;
  object_lock_legal_hold_status : string prop;
  object_lock_mode : string prop;
  object_lock_retain_until_date : string prop;
  request_charged : bool prop;
  request_payer : string prop;
  server_side_encryption : string prop;
  source : string prop;
  source_customer_algorithm : string prop;
  source_customer_key : string prop;
  source_customer_key_md5 : string prop;
  source_version_id : string prop;
  storage_class : string prop;
  tagging_directive : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version_id : string prop;
  website_redirect : string prop;
}

let aws_s3_object_copy ?acl ?bucket_key_enabled ?cache_control
    ?checksum_algorithm ?content_disposition ?content_encoding
    ?content_language ?content_type ?copy_if_match
    ?copy_if_modified_since ?copy_if_none_match
    ?copy_if_unmodified_since ?customer_algorithm ?customer_key
    ?customer_key_md5 ?expected_bucket_owner
    ?expected_source_bucket_owner ?expires ?force_destroy ?id
    ?kms_encryption_context ?kms_key_id ?metadata ?metadata_directive
    ?object_lock_legal_hold_status ?object_lock_mode
    ?object_lock_retain_until_date ?request_payer
    ?server_side_encryption ?source_customer_algorithm
    ?source_customer_key ?source_customer_key_md5 ?storage_class
    ?tagging_directive ?tags ?tags_all ?website_redirect ~bucket ~key
    ~source ~grant __resource_id =
  let __resource_type = "aws_s3_object_copy" in
  let __resource =
    ({
       acl;
       bucket;
       bucket_key_enabled;
       cache_control;
       checksum_algorithm;
       content_disposition;
       content_encoding;
       content_language;
       content_type;
       copy_if_match;
       copy_if_modified_since;
       copy_if_none_match;
       copy_if_unmodified_since;
       customer_algorithm;
       customer_key;
       customer_key_md5;
       expected_bucket_owner;
       expected_source_bucket_owner;
       expires;
       force_destroy;
       id;
       key;
       kms_encryption_context;
       kms_key_id;
       metadata;
       metadata_directive;
       object_lock_legal_hold_status;
       object_lock_mode;
       object_lock_retain_until_date;
       request_payer;
       server_side_encryption;
       source;
       source_customer_algorithm;
       source_customer_key;
       source_customer_key_md5;
       storage_class;
       tagging_directive;
       tags;
       tags_all;
       website_redirect;
       grant;
     }
      : aws_s3_object_copy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_object_copy __resource);
  let __resource_attributes =
    ({
       acl = Prop.computed __resource_type __resource_id "acl";
       arn = Prop.computed __resource_type __resource_id "arn";
       bucket = Prop.computed __resource_type __resource_id "bucket";
       bucket_key_enabled =
         Prop.computed __resource_type __resource_id
           "bucket_key_enabled";
       cache_control =
         Prop.computed __resource_type __resource_id "cache_control";
       checksum_algorithm =
         Prop.computed __resource_type __resource_id
           "checksum_algorithm";
       checksum_crc32 =
         Prop.computed __resource_type __resource_id "checksum_crc32";
       checksum_crc32c =
         Prop.computed __resource_type __resource_id
           "checksum_crc32c";
       checksum_sha1 =
         Prop.computed __resource_type __resource_id "checksum_sha1";
       checksum_sha256 =
         Prop.computed __resource_type __resource_id
           "checksum_sha256";
       content_disposition =
         Prop.computed __resource_type __resource_id
           "content_disposition";
       content_encoding =
         Prop.computed __resource_type __resource_id
           "content_encoding";
       content_language =
         Prop.computed __resource_type __resource_id
           "content_language";
       content_type =
         Prop.computed __resource_type __resource_id "content_type";
       copy_if_match =
         Prop.computed __resource_type __resource_id "copy_if_match";
       copy_if_modified_since =
         Prop.computed __resource_type __resource_id
           "copy_if_modified_since";
       copy_if_none_match =
         Prop.computed __resource_type __resource_id
           "copy_if_none_match";
       copy_if_unmodified_since =
         Prop.computed __resource_type __resource_id
           "copy_if_unmodified_since";
       customer_algorithm =
         Prop.computed __resource_type __resource_id
           "customer_algorithm";
       customer_key =
         Prop.computed __resource_type __resource_id "customer_key";
       customer_key_md5 =
         Prop.computed __resource_type __resource_id
           "customer_key_md5";
       etag = Prop.computed __resource_type __resource_id "etag";
       expected_bucket_owner =
         Prop.computed __resource_type __resource_id
           "expected_bucket_owner";
       expected_source_bucket_owner =
         Prop.computed __resource_type __resource_id
           "expected_source_bucket_owner";
       expiration =
         Prop.computed __resource_type __resource_id "expiration";
       expires =
         Prop.computed __resource_type __resource_id "expires";
       force_destroy =
         Prop.computed __resource_type __resource_id "force_destroy";
       id = Prop.computed __resource_type __resource_id "id";
       key = Prop.computed __resource_type __resource_id "key";
       kms_encryption_context =
         Prop.computed __resource_type __resource_id
           "kms_encryption_context";
       kms_key_id =
         Prop.computed __resource_type __resource_id "kms_key_id";
       last_modified =
         Prop.computed __resource_type __resource_id "last_modified";
       metadata =
         Prop.computed __resource_type __resource_id "metadata";
       metadata_directive =
         Prop.computed __resource_type __resource_id
           "metadata_directive";
       object_lock_legal_hold_status =
         Prop.computed __resource_type __resource_id
           "object_lock_legal_hold_status";
       object_lock_mode =
         Prop.computed __resource_type __resource_id
           "object_lock_mode";
       object_lock_retain_until_date =
         Prop.computed __resource_type __resource_id
           "object_lock_retain_until_date";
       request_charged =
         Prop.computed __resource_type __resource_id
           "request_charged";
       request_payer =
         Prop.computed __resource_type __resource_id "request_payer";
       server_side_encryption =
         Prop.computed __resource_type __resource_id
           "server_side_encryption";
       source = Prop.computed __resource_type __resource_id "source";
       source_customer_algorithm =
         Prop.computed __resource_type __resource_id
           "source_customer_algorithm";
       source_customer_key =
         Prop.computed __resource_type __resource_id
           "source_customer_key";
       source_customer_key_md5 =
         Prop.computed __resource_type __resource_id
           "source_customer_key_md5";
       source_version_id =
         Prop.computed __resource_type __resource_id
           "source_version_id";
       storage_class =
         Prop.computed __resource_type __resource_id "storage_class";
       tagging_directive =
         Prop.computed __resource_type __resource_id
           "tagging_directive";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       version_id =
         Prop.computed __resource_type __resource_id "version_id";
       website_redirect =
         Prop.computed __resource_type __resource_id
           "website_redirect";
     }
      : t)
  in
  __resource_attributes

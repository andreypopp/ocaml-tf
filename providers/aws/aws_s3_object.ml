(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type override_provider__default_tags = {
  tags : (string * string prop) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** override_provider__default_tags *)

type override_provider = {
  default_tags : override_provider__default_tags list;
}
[@@deriving yojson_of]
(** override_provider *)

type aws_s3_object = {
  acl : string prop option; [@option]  (** acl *)
  bucket : string prop;  (** bucket *)
  bucket_key_enabled : bool prop option; [@option]
      (** bucket_key_enabled *)
  cache_control : string prop option; [@option]  (** cache_control *)
  checksum_algorithm : string prop option; [@option]
      (** checksum_algorithm *)
  content : string prop option; [@option]  (** content *)
  content_base64 : string prop option; [@option]
      (** content_base64 *)
  content_disposition : string prop option; [@option]
      (** content_disposition *)
  content_encoding : string prop option; [@option]
      (** content_encoding *)
  content_language : string prop option; [@option]
      (** content_language *)
  content_type : string prop option; [@option]  (** content_type *)
  etag : string prop option; [@option]  (** etag *)
  force_destroy : bool prop option; [@option]  (** force_destroy *)
  id : string prop option; [@option]  (** id *)
  key : string prop;  (** key *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  metadata : (string * string prop) list option; [@option]
      (** metadata *)
  object_lock_legal_hold_status : string prop option; [@option]
      (** object_lock_legal_hold_status *)
  object_lock_mode : string prop option; [@option]
      (** object_lock_mode *)
  object_lock_retain_until_date : string prop option; [@option]
      (** object_lock_retain_until_date *)
  server_side_encryption : string prop option; [@option]
      (** server_side_encryption *)
  source : string prop option; [@option]  (** source *)
  source_hash : string prop option; [@option]  (** source_hash *)
  storage_class : string prop option; [@option]  (** storage_class *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  website_redirect : string prop option; [@option]
      (** website_redirect *)
  override_provider : override_provider list;
}
[@@deriving yojson_of]
(** aws_s3_object *)

let override_provider__default_tags ?tags () :
    override_provider__default_tags =
  { tags }

let override_provider ~default_tags () : override_provider =
  { default_tags }

let aws_s3_object ?acl ?bucket_key_enabled ?cache_control
    ?checksum_algorithm ?content ?content_base64 ?content_disposition
    ?content_encoding ?content_language ?content_type ?etag
    ?force_destroy ?id ?kms_key_id ?metadata
    ?object_lock_legal_hold_status ?object_lock_mode
    ?object_lock_retain_until_date ?server_side_encryption ?source
    ?source_hash ?storage_class ?tags ?tags_all ?website_redirect
    ~bucket ~key ~override_provider () : aws_s3_object =
  {
    acl;
    bucket;
    bucket_key_enabled;
    cache_control;
    checksum_algorithm;
    content;
    content_base64;
    content_disposition;
    content_encoding;
    content_language;
    content_type;
    etag;
    force_destroy;
    id;
    key;
    kms_key_id;
    metadata;
    object_lock_legal_hold_status;
    object_lock_mode;
    object_lock_retain_until_date;
    server_side_encryption;
    source;
    source_hash;
    storage_class;
    tags;
    tags_all;
    website_redirect;
    override_provider;
  }

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
  content : string prop;
  content_base64 : string prop;
  content_disposition : string prop;
  content_encoding : string prop;
  content_language : string prop;
  content_type : string prop;
  etag : string prop;
  force_destroy : bool prop;
  id : string prop;
  key : string prop;
  kms_key_id : string prop;
  metadata : (string * string) list prop;
  object_lock_legal_hold_status : string prop;
  object_lock_mode : string prop;
  object_lock_retain_until_date : string prop;
  server_side_encryption : string prop;
  source : string prop;
  source_hash : string prop;
  storage_class : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version_id : string prop;
  website_redirect : string prop;
}

let register ?tf_module ?acl ?bucket_key_enabled ?cache_control
    ?checksum_algorithm ?content ?content_base64 ?content_disposition
    ?content_encoding ?content_language ?content_type ?etag
    ?force_destroy ?id ?kms_key_id ?metadata
    ?object_lock_legal_hold_status ?object_lock_mode
    ?object_lock_retain_until_date ?server_side_encryption ?source
    ?source_hash ?storage_class ?tags ?tags_all ?website_redirect
    ~bucket ~key ~override_provider __resource_id =
  let __resource_type = "aws_s3_object" in
  let __resource =
    aws_s3_object ?acl ?bucket_key_enabled ?cache_control
      ?checksum_algorithm ?content ?content_base64
      ?content_disposition ?content_encoding ?content_language
      ?content_type ?etag ?force_destroy ?id ?kms_key_id ?metadata
      ?object_lock_legal_hold_status ?object_lock_mode
      ?object_lock_retain_until_date ?server_side_encryption ?source
      ?source_hash ?storage_class ?tags ?tags_all ?website_redirect
      ~bucket ~key ~override_provider ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_object __resource);
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
       content =
         Prop.computed __resource_type __resource_id "content";
       content_base64 =
         Prop.computed __resource_type __resource_id "content_base64";
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
       etag = Prop.computed __resource_type __resource_id "etag";
       force_destroy =
         Prop.computed __resource_type __resource_id "force_destroy";
       id = Prop.computed __resource_type __resource_id "id";
       key = Prop.computed __resource_type __resource_id "key";
       kms_key_id =
         Prop.computed __resource_type __resource_id "kms_key_id";
       metadata =
         Prop.computed __resource_type __resource_id "metadata";
       object_lock_legal_hold_status =
         Prop.computed __resource_type __resource_id
           "object_lock_legal_hold_status";
       object_lock_mode =
         Prop.computed __resource_type __resource_id
           "object_lock_mode";
       object_lock_retain_until_date =
         Prop.computed __resource_type __resource_id
           "object_lock_retain_until_date";
       server_side_encryption =
         Prop.computed __resource_type __resource_id
           "server_side_encryption";
       source = Prop.computed __resource_type __resource_id "source";
       source_hash =
         Prop.computed __resource_type __resource_id "source_hash";
       storage_class =
         Prop.computed __resource_type __resource_id "storage_class";
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

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
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_object_copy __resource);
  ()

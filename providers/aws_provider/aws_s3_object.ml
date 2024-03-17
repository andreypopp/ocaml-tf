(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3_object__override_provider__default_tags = {
  tags : (string * string prop) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_s3_object__override_provider__default_tags *)

type aws_s3_object__override_provider = {
  default_tags : aws_s3_object__override_provider__default_tags list;
}
[@@deriving yojson_of]
(** aws_s3_object__override_provider *)

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
  override_provider : aws_s3_object__override_provider list;
}
[@@deriving yojson_of]
(** aws_s3_object *)

let aws_s3_object ?acl ?bucket_key_enabled ?cache_control
    ?checksum_algorithm ?content ?content_base64 ?content_disposition
    ?content_encoding ?content_language ?content_type ?etag
    ?force_destroy ?id ?kms_key_id ?metadata
    ?object_lock_legal_hold_status ?object_lock_mode
    ?object_lock_retain_until_date ?server_side_encryption ?source
    ?source_hash ?storage_class ?tags ?tags_all ?website_redirect
    ~bucket ~key ~override_provider __resource_id =
  let __resource_type = "aws_s3_object" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_object __resource);
  ()

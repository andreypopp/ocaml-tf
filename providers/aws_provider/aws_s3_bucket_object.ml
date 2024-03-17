(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3_bucket_object = {
  acl : string option; [@option]  (** acl *)
  bucket : string;  (** bucket *)
  bucket_key_enabled : bool option; [@option]
      (** bucket_key_enabled *)
  cache_control : string option; [@option]  (** cache_control *)
  content : string option; [@option]  (** content *)
  content_base64 : string option; [@option]  (** content_base64 *)
  content_disposition : string option; [@option]
      (** content_disposition *)
  content_encoding : string option; [@option]
      (** content_encoding *)
  content_language : string option; [@option]
      (** content_language *)
  content_type : string option; [@option]  (** content_type *)
  etag : string option; [@option]  (** etag *)
  force_destroy : bool option; [@option]  (** force_destroy *)
  id : string option; [@option]  (** id *)
  key : string;  (** key *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
  metadata : (string * string) list option; [@option]
      (** metadata *)
  object_lock_legal_hold_status : string option; [@option]
      (** object_lock_legal_hold_status *)
  object_lock_mode : string option; [@option]
      (** object_lock_mode *)
  object_lock_retain_until_date : string option; [@option]
      (** object_lock_retain_until_date *)
  server_side_encryption : string option; [@option]
      (** server_side_encryption *)
  source : string option; [@option]  (** source *)
  source_hash : string option; [@option]  (** source_hash *)
  storage_class : string option; [@option]  (** storage_class *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  website_redirect : string option; [@option]  (** website_redirect *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_object *)

let aws_s3_bucket_object ?acl ?bucket_key_enabled ?cache_control
    ?content ?content_base64 ?content_disposition ?content_encoding
    ?content_language ?content_type ?etag ?force_destroy ?id
    ?kms_key_id ?metadata ?object_lock_legal_hold_status
    ?object_lock_mode ?object_lock_retain_until_date
    ?server_side_encryption ?source ?source_hash ?storage_class ?tags
    ?tags_all ?website_redirect ~bucket ~key __resource_id =
  let __resource_type = "aws_s3_bucket_object" in
  let __resource =
    {
      acl;
      bucket;
      bucket_key_enabled;
      cache_control;
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
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_object __resource);
  ()

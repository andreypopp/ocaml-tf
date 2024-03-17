(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3_bucket_object = {
  acl : string option; [@option]  (** acl *)
  bucket : string;  (** bucket *)
  cache_control : string option; [@option]  (** cache_control *)
  content : string option; [@option]  (** content *)
  content_base64 : string option; [@option]  (** content_base64 *)
  content_disposition : string option; [@option]
      (** content_disposition *)
  content_encoding : string option; [@option]
      (** content_encoding *)
  content_language : string option; [@option]
      (** content_language *)
  force_destroy : bool option; [@option]  (** force_destroy *)
  key : string;  (** key *)
  metadata : (string * string) list option; [@option]
      (** metadata *)
  object_lock_legal_hold_status : string option; [@option]
      (** object_lock_legal_hold_status *)
  object_lock_mode : string option; [@option]
      (** object_lock_mode *)
  object_lock_retain_until_date : string option; [@option]
      (** object_lock_retain_until_date *)
  source : string option; [@option]  (** source *)
  source_hash : string option; [@option]  (** source_hash *)
  tags : (string * string) list option; [@option]  (** tags *)
  website_redirect : string option; [@option]  (** website_redirect *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_object *)

let aws_s3_bucket_object ?acl ?cache_control ?content ?content_base64
    ?content_disposition ?content_encoding ?content_language
    ?force_destroy ?metadata ?object_lock_legal_hold_status
    ?object_lock_mode ?object_lock_retain_until_date ?source
    ?source_hash ?tags ?website_redirect ~bucket ~key __resource_id =
  let __resource_type = "aws_s3_bucket_object" in
  let __resource =
    {
      acl;
      bucket;
      cache_control;
      content;
      content_base64;
      content_disposition;
      content_encoding;
      content_language;
      force_destroy;
      key;
      metadata;
      object_lock_legal_hold_status;
      object_lock_mode;
      object_lock_retain_until_date;
      source;
      source_hash;
      tags;
      website_redirect;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_object __resource);
  ()

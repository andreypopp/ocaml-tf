(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_s3_object_copy__grant = {
  email : string option; [@option]  (** email *)
  id : string option; [@option]  (** id *)
  permissions : string list;  (** permissions *)
  type_ : string; [@key "type"]  (** type *)
  uri : string option; [@option]  (** uri *)
}
[@@deriving yojson_of]
(** aws_s3_object_copy__grant *)

type aws_s3_object_copy = {
  bucket : string;  (** bucket *)
  checksum_algorithm : string option; [@option]
      (** checksum_algorithm *)
  copy_if_match : string option; [@option]  (** copy_if_match *)
  copy_if_modified_since : string option; [@option]
      (** copy_if_modified_since *)
  copy_if_none_match : string option; [@option]
      (** copy_if_none_match *)
  copy_if_unmodified_since : string option; [@option]
      (** copy_if_unmodified_since *)
  customer_key : string option; [@option]  (** customer_key *)
  expected_bucket_owner : string option; [@option]
      (** expected_bucket_owner *)
  expected_source_bucket_owner : string option; [@option]
      (** expected_source_bucket_owner *)
  expires : string option; [@option]  (** expires *)
  force_destroy : bool option; [@option]  (** force_destroy *)
  key : string;  (** key *)
  metadata_directive : string option; [@option]
      (** metadata_directive *)
  request_payer : string option; [@option]  (** request_payer *)
  source : string;  (** source *)
  source_customer_algorithm : string option; [@option]
      (** source_customer_algorithm *)
  source_customer_key : string option; [@option]
      (** source_customer_key *)
  source_customer_key_md5 : string option; [@option]
      (** source_customer_key_md5 *)
  tagging_directive : string option; [@option]
      (** tagging_directive *)
  tags : (string * string) list option; [@option]  (** tags *)
  grant : aws_s3_object_copy__grant list;
}
[@@deriving yojson_of]
(** aws_s3_object_copy *)

let aws_s3_object_copy ?checksum_algorithm ?copy_if_match
    ?copy_if_modified_since ?copy_if_none_match
    ?copy_if_unmodified_since ?customer_key ?expected_bucket_owner
    ?expected_source_bucket_owner ?expires ?force_destroy
    ?metadata_directive ?request_payer ?source_customer_algorithm
    ?source_customer_key ?source_customer_key_md5 ?tagging_directive
    ?tags ~bucket ~key ~source ~grant __resource_id =
  let __resource_type = "aws_s3_object_copy" in
  let __resource =
    {
      bucket;
      checksum_algorithm;
      copy_if_match;
      copy_if_modified_since;
      copy_if_none_match;
      copy_if_unmodified_since;
      customer_key;
      expected_bucket_owner;
      expected_source_bucket_owner;
      expires;
      force_destroy;
      key;
      metadata_directive;
      request_payer;
      source;
      source_customer_algorithm;
      source_customer_key;
      source_customer_key_md5;
      tagging_directive;
      tags;
      grant;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_object_copy __resource);
  ()

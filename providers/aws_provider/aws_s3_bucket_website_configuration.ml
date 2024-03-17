(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3_bucket_website_configuration__error_document = {
  key : string prop;  (** key *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_website_configuration__error_document *)

type aws_s3_bucket_website_configuration__index_document = {
  suffix : string prop;  (** suffix *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_website_configuration__index_document *)

type aws_s3_bucket_website_configuration__redirect_all_requests_to = {
  host_name : string prop;  (** host_name *)
  protocol : string prop option; [@option]  (** protocol *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_website_configuration__redirect_all_requests_to *)

type aws_s3_bucket_website_configuration__routing_rule__condition = {
  http_error_code_returned_equals : string prop option; [@option]
      (** http_error_code_returned_equals *)
  key_prefix_equals : string prop option; [@option]
      (** key_prefix_equals *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_website_configuration__routing_rule__condition *)

type aws_s3_bucket_website_configuration__routing_rule__redirect = {
  host_name : string prop option; [@option]  (** host_name *)
  http_redirect_code : string prop option; [@option]
      (** http_redirect_code *)
  protocol : string prop option; [@option]  (** protocol *)
  replace_key_prefix_with : string prop option; [@option]
      (** replace_key_prefix_with *)
  replace_key_with : string prop option; [@option]
      (** replace_key_with *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_website_configuration__routing_rule__redirect *)

type aws_s3_bucket_website_configuration__routing_rule = {
  condition :
    aws_s3_bucket_website_configuration__routing_rule__condition list;
  redirect :
    aws_s3_bucket_website_configuration__routing_rule__redirect list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_website_configuration__routing_rule *)

type aws_s3_bucket_website_configuration = {
  bucket : string prop;  (** bucket *)
  expected_bucket_owner : string prop option; [@option]
      (** expected_bucket_owner *)
  id : string prop option; [@option]  (** id *)
  routing_rules : string prop option; [@option]  (** routing_rules *)
  error_document :
    aws_s3_bucket_website_configuration__error_document list;
  index_document :
    aws_s3_bucket_website_configuration__index_document list;
  redirect_all_requests_to :
    aws_s3_bucket_website_configuration__redirect_all_requests_to
    list;
  routing_rule :
    aws_s3_bucket_website_configuration__routing_rule list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_website_configuration *)

let aws_s3_bucket_website_configuration ?expected_bucket_owner ?id
    ?routing_rules ~bucket ~error_document ~index_document
    ~redirect_all_requests_to ~routing_rule __resource_id =
  let __resource_type = "aws_s3_bucket_website_configuration" in
  let __resource =
    {
      bucket;
      expected_bucket_owner;
      id;
      routing_rules;
      error_document;
      index_document;
      redirect_all_requests_to;
      routing_rule;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_website_configuration __resource);
  ()

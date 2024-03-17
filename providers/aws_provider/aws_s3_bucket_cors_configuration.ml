(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_s3_bucket_cors_configuration__cors_rule = {
  allowed_headers : string list option; [@option]
      (** allowed_headers *)
  allowed_methods : string list;  (** allowed_methods *)
  allowed_origins : string list;  (** allowed_origins *)
  expose_headers : string list option; [@option]
      (** expose_headers *)
  id : string option; [@option]  (** id *)
  max_age_seconds : float option; [@option]  (** max_age_seconds *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_cors_configuration__cors_rule *)

type aws_s3_bucket_cors_configuration = {
  bucket : string;  (** bucket *)
  expected_bucket_owner : string option; [@option]
      (** expected_bucket_owner *)
  cors_rule : aws_s3_bucket_cors_configuration__cors_rule list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_cors_configuration *)

let aws_s3_bucket_cors_configuration ?expected_bucket_owner ~bucket
    ~cors_rule __resource_id =
  let __resource_type = "aws_s3_bucket_cors_configuration" in
  let __resource = { bucket; expected_bucket_owner; cors_rule } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_cors_configuration __resource);
  ()

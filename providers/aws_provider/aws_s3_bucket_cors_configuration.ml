(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3_bucket_cors_configuration__cors_rule = {
  allowed_headers : string prop list option; [@option]
      (** allowed_headers *)
  allowed_methods : string prop list;  (** allowed_methods *)
  allowed_origins : string prop list;  (** allowed_origins *)
  expose_headers : string prop list option; [@option]
      (** expose_headers *)
  id : string prop option; [@option]  (** id *)
  max_age_seconds : float prop option; [@option]
      (** max_age_seconds *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_cors_configuration__cors_rule *)

type aws_s3_bucket_cors_configuration = {
  bucket : string prop;  (** bucket *)
  expected_bucket_owner : string prop option; [@option]
      (** expected_bucket_owner *)
  id : string prop option; [@option]  (** id *)
  cors_rule : aws_s3_bucket_cors_configuration__cors_rule list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_cors_configuration *)

type t = {
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
}

let aws_s3_bucket_cors_configuration ?expected_bucket_owner ?id
    ~bucket ~cors_rule __resource_id =
  let __resource_type = "aws_s3_bucket_cors_configuration" in
  let __resource =
    ({ bucket; expected_bucket_owner; id; cors_rule }
      : aws_s3_bucket_cors_configuration)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_cors_configuration __resource);
  let __resource_attributes =
    ({
       bucket = Prop.computed __resource_type __resource_id "bucket";
       expected_bucket_owner =
         Prop.computed __resource_type __resource_id
           "expected_bucket_owner";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes

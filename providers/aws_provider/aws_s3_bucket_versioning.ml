(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3_bucket_versioning__versioning_configuration = {
  mfa_delete : string prop option; [@option]  (** mfa_delete *)
  status : string prop;  (** status *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_versioning__versioning_configuration *)

type aws_s3_bucket_versioning = {
  bucket : string prop;  (** bucket *)
  expected_bucket_owner : string prop option; [@option]
      (** expected_bucket_owner *)
  id : string prop option; [@option]  (** id *)
  mfa : string prop option; [@option]  (** mfa *)
  versioning_configuration :
    aws_s3_bucket_versioning__versioning_configuration list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_versioning *)

type t = {
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
  mfa : string prop;
}

let aws_s3_bucket_versioning ?expected_bucket_owner ?id ?mfa ~bucket
    ~versioning_configuration __resource_id =
  let __resource_type = "aws_s3_bucket_versioning" in
  let __resource =
    ({
       bucket;
       expected_bucket_owner;
       id;
       mfa;
       versioning_configuration;
     }
      : aws_s3_bucket_versioning)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_versioning __resource);
  let __resource_attributes =
    ({
       bucket = Prop.computed __resource_type __resource_id "bucket";
       expected_bucket_owner =
         Prop.computed __resource_type __resource_id
           "expected_bucket_owner";
       id = Prop.computed __resource_type __resource_id "id";
       mfa = Prop.computed __resource_type __resource_id "mfa";
     }
      : t)
  in
  __resource_attributes

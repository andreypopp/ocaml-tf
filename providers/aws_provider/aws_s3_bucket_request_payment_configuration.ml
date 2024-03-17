(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3_bucket_request_payment_configuration = {
  bucket : string prop;  (** bucket *)
  expected_bucket_owner : string prop option; [@option]
      (** expected_bucket_owner *)
  id : string prop option; [@option]  (** id *)
  payer : string prop;  (** payer *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_request_payment_configuration *)

type t = {
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
  payer : string prop;
}

let aws_s3_bucket_request_payment_configuration
    ?expected_bucket_owner ?id ~bucket ~payer __resource_id =
  let __resource_type =
    "aws_s3_bucket_request_payment_configuration"
  in
  let __resource =
    ({ bucket; expected_bucket_owner; id; payer }
      : aws_s3_bucket_request_payment_configuration)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_request_payment_configuration __resource);
  let __resource_attributes =
    ({
       bucket = Prop.computed __resource_type __resource_id "bucket";
       expected_bucket_owner =
         Prop.computed __resource_type __resource_id
           "expected_bucket_owner";
       id = Prop.computed __resource_type __resource_id "id";
       payer = Prop.computed __resource_type __resource_id "payer";
     }
      : t)
  in
  __resource_attributes

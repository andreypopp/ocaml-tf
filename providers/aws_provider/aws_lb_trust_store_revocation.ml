(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lb_trust_store_revocation__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_lb_trust_store_revocation__timeouts *)

type aws_lb_trust_store_revocation = {
  id : string option; [@option]  (** id *)
  revocations_s3_bucket : string;  (** revocations_s3_bucket *)
  revocations_s3_key : string;  (** revocations_s3_key *)
  revocations_s3_object_version : string option; [@option]
      (** revocations_s3_object_version *)
  trust_store_arn : string;  (** trust_store_arn *)
  timeouts : aws_lb_trust_store_revocation__timeouts option;
}
[@@deriving yojson_of]
(** aws_lb_trust_store_revocation *)

let aws_lb_trust_store_revocation ?id ?revocations_s3_object_version
    ?timeouts ~revocations_s3_bucket ~revocations_s3_key
    ~trust_store_arn __resource_id =
  let __resource_type = "aws_lb_trust_store_revocation" in
  let __resource =
    {
      id;
      revocations_s3_bucket;
      revocations_s3_key;
      revocations_s3_object_version;
      trust_store_arn;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lb_trust_store_revocation __resource);
  ()

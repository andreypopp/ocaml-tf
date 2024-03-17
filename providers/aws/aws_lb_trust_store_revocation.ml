(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lb_trust_store_revocation__timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_lb_trust_store_revocation__timeouts *)

type aws_lb_trust_store_revocation = {
  id : string prop option; [@option]  (** id *)
  revocations_s3_bucket : string prop;  (** revocations_s3_bucket *)
  revocations_s3_key : string prop;  (** revocations_s3_key *)
  revocations_s3_object_version : string prop option; [@option]
      (** revocations_s3_object_version *)
  trust_store_arn : string prop;  (** trust_store_arn *)
  timeouts : aws_lb_trust_store_revocation__timeouts option;
}
[@@deriving yojson_of]
(** aws_lb_trust_store_revocation *)

type t = {
  id : string prop;
  revocation_id : float prop;
  revocations_s3_bucket : string prop;
  revocations_s3_key : string prop;
  revocations_s3_object_version : string prop;
  trust_store_arn : string prop;
}

let aws_lb_trust_store_revocation ?id ?revocations_s3_object_version
    ?timeouts ~revocations_s3_bucket ~revocations_s3_key
    ~trust_store_arn __resource_id =
  let __resource_type = "aws_lb_trust_store_revocation" in
  let __resource =
    ({
       id;
       revocations_s3_bucket;
       revocations_s3_key;
       revocations_s3_object_version;
       trust_store_arn;
       timeouts;
     }
      : aws_lb_trust_store_revocation)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lb_trust_store_revocation __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       revocation_id =
         Prop.computed __resource_type __resource_id "revocation_id";
       revocations_s3_bucket =
         Prop.computed __resource_type __resource_id
           "revocations_s3_bucket";
       revocations_s3_key =
         Prop.computed __resource_type __resource_id
           "revocations_s3_key";
       revocations_s3_object_version =
         Prop.computed __resource_type __resource_id
           "revocations_s3_object_version";
       trust_store_arn =
         Prop.computed __resource_type __resource_id
           "trust_store_arn";
     }
      : t)
  in
  __resource_attributes

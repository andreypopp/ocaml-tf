(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3control_bucket_policy = {
  bucket : string prop;  (** bucket *)
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
}
[@@deriving yojson_of]
(** aws_s3control_bucket_policy *)

type t = {
  bucket : string prop;
  id : string prop;
  policy : string prop;
}

let aws_s3control_bucket_policy ?id ~bucket ~policy __resource_id =
  let __resource_type = "aws_s3control_bucket_policy" in
  let __resource =
    ({ bucket; id; policy } : aws_s3control_bucket_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3control_bucket_policy __resource);
  let __resource_attributes =
    ({
       bucket = Prop.computed __resource_type __resource_id "bucket";
       id = Prop.computed __resource_type __resource_id "id";
       policy = Prop.computed __resource_type __resource_id "policy";
     }
      : t)
  in
  __resource_attributes

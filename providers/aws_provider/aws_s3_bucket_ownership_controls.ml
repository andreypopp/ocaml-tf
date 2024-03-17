(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3_bucket_ownership_controls__rule = {
  object_ownership : string prop;  (** object_ownership *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_ownership_controls__rule *)

type aws_s3_bucket_ownership_controls = {
  bucket : string prop;  (** bucket *)
  id : string prop option; [@option]  (** id *)
  rule : aws_s3_bucket_ownership_controls__rule list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_ownership_controls *)

type t = { bucket : string prop; id : string prop }

let aws_s3_bucket_ownership_controls ?id ~bucket ~rule __resource_id
    =
  let __resource_type = "aws_s3_bucket_ownership_controls" in
  let __resource =
    ({ bucket; id; rule } : aws_s3_bucket_ownership_controls)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_ownership_controls __resource);
  let __resource_attributes =
    ({
       bucket = Prop.computed __resource_type __resource_id "bucket";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes

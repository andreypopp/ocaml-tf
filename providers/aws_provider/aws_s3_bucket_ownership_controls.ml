(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3_bucket_ownership_controls__rule = {
  object_ownership : string;  (** object_ownership *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_ownership_controls__rule *)

type aws_s3_bucket_ownership_controls = {
  bucket : string;  (** bucket *)
  id : string option; [@option]  (** id *)
  rule : aws_s3_bucket_ownership_controls__rule list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_ownership_controls *)

let aws_s3_bucket_ownership_controls ?id ~bucket ~rule __resource_id
    =
  let __resource_type = "aws_s3_bucket_ownership_controls" in
  let __resource = { bucket; id; rule } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_ownership_controls __resource);
  ()

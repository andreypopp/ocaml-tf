(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_s3control_bucket_policy = {
  bucket : string;  (** bucket *)
  policy : string;  (** policy *)
}
[@@deriving yojson_of]
(** aws_s3control_bucket_policy *)

let aws_s3control_bucket_policy ~bucket ~policy __resource_id =
  let __resource_type = "aws_s3control_bucket_policy" in
  let __resource = { bucket; policy } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3control_bucket_policy __resource);
  ()
(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudfront_origin_access_identity = {
  comment : string option; [@option]  (** comment *)
}
[@@deriving yojson_of]
(** aws_cloudfront_origin_access_identity *)

let aws_cloudfront_origin_access_identity ?comment __resource_id =
  let __resource_type = "aws_cloudfront_origin_access_identity" in
  let __resource = { comment } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudfront_origin_access_identity __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudfront_origin_access_identity = {
  comment : string prop option; [@option]  (** comment *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_cloudfront_origin_access_identity *)

let aws_cloudfront_origin_access_identity ?comment ?id __resource_id
    =
  let __resource_type = "aws_cloudfront_origin_access_identity" in
  let __resource = { comment; id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudfront_origin_access_identity __resource);
  ()

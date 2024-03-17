(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudfront_public_key = {
  comment : string option; [@option]  (** comment *)
  encoded_key : string;  (** encoded_key *)
}
[@@deriving yojson_of]
(** aws_cloudfront_public_key *)

let aws_cloudfront_public_key ?comment ~encoded_key __resource_id =
  let __resource_type = "aws_cloudfront_public_key" in
  let __resource = { comment; encoded_key } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudfront_public_key __resource);
  ()

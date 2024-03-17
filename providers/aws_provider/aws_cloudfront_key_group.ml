(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudfront_key_group = {
  comment : string option; [@option]  (** comment *)
  items : string list;  (** items *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** aws_cloudfront_key_group *)

let aws_cloudfront_key_group ?comment ~items ~name __resource_id =
  let __resource_type = "aws_cloudfront_key_group" in
  let __resource = { comment; items; name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudfront_key_group __resource);
  ()

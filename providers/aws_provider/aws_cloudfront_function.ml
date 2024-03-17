(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudfront_function = {
  code : string;  (** code *)
  comment : string option; [@option]  (** comment *)
  name : string;  (** name *)
  publish : bool option; [@option]  (** publish *)
  runtime : string;  (** runtime *)
}
[@@deriving yojson_of]
(** aws_cloudfront_function *)

let aws_cloudfront_function ?comment ?publish ~code ~name ~runtime
    __resource_id =
  let __resource_type = "aws_cloudfront_function" in
  let __resource = { code; comment; name; publish; runtime } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudfront_function __resource);
  ()

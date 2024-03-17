(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudfront_function = {
  code : string prop;  (** code *)
  comment : string prop option; [@option]  (** comment *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  publish : bool prop option; [@option]  (** publish *)
  runtime : string prop;  (** runtime *)
}
[@@deriving yojson_of]
(** aws_cloudfront_function *)

let aws_cloudfront_function ?comment ?id ?publish ~code ~name
    ~runtime __resource_id =
  let __resource_type = "aws_cloudfront_function" in
  let __resource = { code; comment; id; name; publish; runtime } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudfront_function __resource);
  ()

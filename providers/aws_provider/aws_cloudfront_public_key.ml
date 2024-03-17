(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudfront_public_key = {
  comment : string prop option; [@option]  (** comment *)
  encoded_key : string prop;  (** encoded_key *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
}
[@@deriving yojson_of]
(** aws_cloudfront_public_key *)

let aws_cloudfront_public_key ?comment ?id ?name ?name_prefix
    ~encoded_key __resource_id =
  let __resource_type = "aws_cloudfront_public_key" in
  let __resource = { comment; encoded_key; id; name; name_prefix } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudfront_public_key __resource);
  ()

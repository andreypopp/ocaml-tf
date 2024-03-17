(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudfront_key_value_store__timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** aws_cloudfront_key_value_store__timeouts *)

type aws_cloudfront_key_value_store = {
  comment : string prop option; [@option]  (** comment *)
  name : string prop;  (** name *)
  timeouts : aws_cloudfront_key_value_store__timeouts option;
}
[@@deriving yojson_of]
(** aws_cloudfront_key_value_store *)

let aws_cloudfront_key_value_store ?comment ?timeouts ~name
    __resource_id =
  let __resource_type = "aws_cloudfront_key_value_store" in
  let __resource = { comment; name; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudfront_key_value_store __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_certificate__domain_validation_options = {
  domain_name : string;  (** domain_name *)
  resource_record_name : string;  (** resource_record_name *)
  resource_record_type : string;  (** resource_record_type *)
  resource_record_value : string;  (** resource_record_value *)
}
[@@deriving yojson_of]

type aws_lightsail_certificate = {
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_lightsail_certificate *)

let aws_lightsail_certificate ?tags ~name __resource_id =
  let __resource_type = "aws_lightsail_certificate" in
  let __resource = { name; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_certificate __resource);
  ()

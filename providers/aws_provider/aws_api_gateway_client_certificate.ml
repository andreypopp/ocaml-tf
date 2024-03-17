(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_client_certificate = {
  description : string option; [@option]  (** description *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_api_gateway_client_certificate *)

let aws_api_gateway_client_certificate ?description ?tags
    __resource_id =
  let __resource_type = "aws_api_gateway_client_certificate" in
  let __resource = { description; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_client_certificate __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_client_certificate = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_api_gateway_client_certificate *)

let aws_api_gateway_client_certificate ?description ?id ?tags
    ?tags_all __resource_id =
  let __resource_type = "aws_api_gateway_client_certificate" in
  let __resource = { description; id; tags; tags_all } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_client_certificate __resource);
  ()

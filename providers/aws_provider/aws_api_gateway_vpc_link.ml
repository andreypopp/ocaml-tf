(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_api_gateway_vpc_link = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  target_arns : string list;  (** target_arns *)
}
[@@deriving yojson_of]
(** aws_api_gateway_vpc_link *)

let aws_api_gateway_vpc_link ?description ?tags ~name ~target_arns
    __resource_id =
  let __resource_type = "aws_api_gateway_vpc_link" in
  let __resource = { description; name; tags; target_arns } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_vpc_link __resource);
  ()
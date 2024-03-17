(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_transit_gateway_route_table = {
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  transit_gateway_id : string prop;  (** transit_gateway_id *)
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_route_table *)

let aws_ec2_transit_gateway_route_table ?id ?tags ?tags_all
    ~transit_gateway_id __resource_id =
  let __resource_type = "aws_ec2_transit_gateway_route_table" in
  let __resource = { id; tags; tags_all; transit_gateway_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_transit_gateway_route_table __resource);
  ()

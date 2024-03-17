(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_endpoint_connection_accepter = {
  id : string option; [@option]  (** id *)
  vpc_endpoint_id : string;  (** vpc_endpoint_id *)
  vpc_endpoint_service_id : string;  (** vpc_endpoint_service_id *)
}
[@@deriving yojson_of]
(** aws_vpc_endpoint_connection_accepter *)

let aws_vpc_endpoint_connection_accepter ?id ~vpc_endpoint_id
    ~vpc_endpoint_service_id __resource_id =
  let __resource_type = "aws_vpc_endpoint_connection_accepter" in
  let __resource =
    { id; vpc_endpoint_id; vpc_endpoint_service_id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_endpoint_connection_accepter __resource);
  ()

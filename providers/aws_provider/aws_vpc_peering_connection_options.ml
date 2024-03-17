(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_vpc_peering_connection_options__accepter = {
  allow_remote_vpc_dns_resolution : bool option; [@option]
      (** allow_remote_vpc_dns_resolution *)
}
[@@deriving yojson_of]
(** aws_vpc_peering_connection_options__accepter *)

type aws_vpc_peering_connection_options__requester = {
  allow_remote_vpc_dns_resolution : bool option; [@option]
      (** allow_remote_vpc_dns_resolution *)
}
[@@deriving yojson_of]
(** aws_vpc_peering_connection_options__requester *)

type aws_vpc_peering_connection_options = {
  vpc_peering_connection_id : string;
      (** vpc_peering_connection_id *)
  accepter : aws_vpc_peering_connection_options__accepter list;
  requester : aws_vpc_peering_connection_options__requester list;
}
[@@deriving yojson_of]
(** aws_vpc_peering_connection_options *)

let aws_vpc_peering_connection_options ~vpc_peering_connection_id
    ~accepter ~requester __resource_id =
  let __resource_type = "aws_vpc_peering_connection_options" in
  let __resource =
    { vpc_peering_connection_id; accepter; requester }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_peering_connection_options __resource);
  ()

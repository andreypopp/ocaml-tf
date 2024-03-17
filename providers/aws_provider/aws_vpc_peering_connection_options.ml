(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_peering_connection_options__accepter = {
  allow_remote_vpc_dns_resolution : bool prop option; [@option]
      (** allow_remote_vpc_dns_resolution *)
}
[@@deriving yojson_of]
(** aws_vpc_peering_connection_options__accepter *)

type aws_vpc_peering_connection_options__requester = {
  allow_remote_vpc_dns_resolution : bool prop option; [@option]
      (** allow_remote_vpc_dns_resolution *)
}
[@@deriving yojson_of]
(** aws_vpc_peering_connection_options__requester *)

type aws_vpc_peering_connection_options = {
  id : string prop option; [@option]  (** id *)
  vpc_peering_connection_id : string prop;
      (** vpc_peering_connection_id *)
  accepter : aws_vpc_peering_connection_options__accepter list;
  requester : aws_vpc_peering_connection_options__requester list;
}
[@@deriving yojson_of]
(** aws_vpc_peering_connection_options *)

type t = {
  id : string prop;
  vpc_peering_connection_id : string prop;
}

let aws_vpc_peering_connection_options ?id ~vpc_peering_connection_id
    ~accepter ~requester __resource_id =
  let __resource_type = "aws_vpc_peering_connection_options" in
  let __resource =
    ({ id; vpc_peering_connection_id; accepter; requester }
      : aws_vpc_peering_connection_options)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_peering_connection_options __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       vpc_peering_connection_id =
         Prop.computed __resource_type __resource_id
           "vpc_peering_connection_id";
     }
      : t)
  in
  __resource_attributes

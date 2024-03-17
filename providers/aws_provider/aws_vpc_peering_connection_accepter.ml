(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_peering_connection_accepter__accepter = {
  allow_remote_vpc_dns_resolution : bool prop option; [@option]
      (** allow_remote_vpc_dns_resolution *)
}
[@@deriving yojson_of]
(** aws_vpc_peering_connection_accepter__accepter *)

type aws_vpc_peering_connection_accepter__requester = {
  allow_remote_vpc_dns_resolution : bool prop option; [@option]
      (** allow_remote_vpc_dns_resolution *)
}
[@@deriving yojson_of]
(** aws_vpc_peering_connection_accepter__requester *)

type aws_vpc_peering_connection_accepter__timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_vpc_peering_connection_accepter__timeouts *)

type aws_vpc_peering_connection_accepter = {
  auto_accept : bool prop option; [@option]  (** auto_accept *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_peering_connection_id : string prop;
      (** vpc_peering_connection_id *)
  accepter : aws_vpc_peering_connection_accepter__accepter list;
  requester : aws_vpc_peering_connection_accepter__requester list;
  timeouts : aws_vpc_peering_connection_accepter__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_peering_connection_accepter *)

let aws_vpc_peering_connection_accepter ?auto_accept ?id ?tags
    ?tags_all ?timeouts ~vpc_peering_connection_id ~accepter
    ~requester __resource_id =
  let __resource_type = "aws_vpc_peering_connection_accepter" in
  let __resource =
    {
      auto_accept;
      id;
      tags;
      tags_all;
      vpc_peering_connection_id;
      accepter;
      requester;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_peering_connection_accepter __resource);
  ()

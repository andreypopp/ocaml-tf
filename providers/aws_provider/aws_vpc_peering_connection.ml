(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_vpc_peering_connection__accepter = {
  allow_remote_vpc_dns_resolution : bool option; [@option]
      (** allow_remote_vpc_dns_resolution *)
}
[@@deriving yojson_of]
(** aws_vpc_peering_connection__accepter *)

type aws_vpc_peering_connection__requester = {
  allow_remote_vpc_dns_resolution : bool option; [@option]
      (** allow_remote_vpc_dns_resolution *)
}
[@@deriving yojson_of]
(** aws_vpc_peering_connection__requester *)

type aws_vpc_peering_connection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_vpc_peering_connection__timeouts *)

type aws_vpc_peering_connection = {
  auto_accept : bool option; [@option]  (** auto_accept *)
  peer_vpc_id : string;  (** peer_vpc_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  vpc_id : string;  (** vpc_id *)
  accepter : aws_vpc_peering_connection__accepter list;
  requester : aws_vpc_peering_connection__requester list;
  timeouts : aws_vpc_peering_connection__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_peering_connection *)

let aws_vpc_peering_connection ?auto_accept ?tags ?timeouts
    ~peer_vpc_id ~vpc_id ~accepter ~requester __resource_id =
  let __resource_type = "aws_vpc_peering_connection" in
  let __resource =
    {
      auto_accept;
      peer_vpc_id;
      tags;
      vpc_id;
      accepter;
      requester;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_peering_connection __resource);
  ()
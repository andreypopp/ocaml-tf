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

type t = {
  accept_status : string prop;
  auto_accept : bool prop;
  id : string prop;
  peer_owner_id : string prop;
  peer_region : string prop;
  peer_vpc_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
  vpc_peering_connection_id : string prop;
}

let aws_vpc_peering_connection_accepter ?auto_accept ?id ?tags
    ?tags_all ?timeouts ~vpc_peering_connection_id ~accepter
    ~requester __resource_id =
  let __resource_type = "aws_vpc_peering_connection_accepter" in
  let __resource =
    ({
       auto_accept;
       id;
       tags;
       tags_all;
       vpc_peering_connection_id;
       accepter;
       requester;
       timeouts;
     }
      : aws_vpc_peering_connection_accepter)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_peering_connection_accepter __resource);
  let __resource_attributes =
    ({
       accept_status =
         Prop.computed __resource_type __resource_id "accept_status";
       auto_accept =
         Prop.computed __resource_type __resource_id "auto_accept";
       id = Prop.computed __resource_type __resource_id "id";
       peer_owner_id =
         Prop.computed __resource_type __resource_id "peer_owner_id";
       peer_region =
         Prop.computed __resource_type __resource_id "peer_region";
       peer_vpc_id =
         Prop.computed __resource_type __resource_id "peer_vpc_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
       vpc_peering_connection_id =
         Prop.computed __resource_type __resource_id
           "vpc_peering_connection_id";
     }
      : t)
  in
  __resource_attributes

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type accepter = {
  allow_remote_vpc_dns_resolution : bool prop option; [@option]
      (** allow_remote_vpc_dns_resolution *)
}
[@@deriving yojson_of]
(** accepter *)

type requester = {
  allow_remote_vpc_dns_resolution : bool prop option; [@option]
      (** allow_remote_vpc_dns_resolution *)
}
[@@deriving yojson_of]
(** requester *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_vpc_peering_connection = {
  auto_accept : bool prop option; [@option]  (** auto_accept *)
  id : string prop option; [@option]  (** id *)
  peer_owner_id : string prop option; [@option]  (** peer_owner_id *)
  peer_region : string prop option; [@option]  (** peer_region *)
  peer_vpc_id : string prop;  (** peer_vpc_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_id : string prop;  (** vpc_id *)
  accepter : accepter list;
  requester : requester list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_peering_connection *)

let accepter ?allow_remote_vpc_dns_resolution () : accepter =
  { allow_remote_vpc_dns_resolution }

let requester ?allow_remote_vpc_dns_resolution () : requester =
  { allow_remote_vpc_dns_resolution }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_vpc_peering_connection ?auto_accept ?id ?peer_owner_id
    ?peer_region ?tags ?tags_all ?timeouts ~peer_vpc_id ~vpc_id
    ~accepter ~requester () : aws_vpc_peering_connection =
  {
    auto_accept;
    id;
    peer_owner_id;
    peer_region;
    peer_vpc_id;
    tags;
    tags_all;
    vpc_id;
    accepter;
    requester;
    timeouts;
  }

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
}

let register ?tf_module ?auto_accept ?id ?peer_owner_id ?peer_region
    ?tags ?tags_all ?timeouts ~peer_vpc_id ~vpc_id ~accepter
    ~requester __resource_id =
  let __resource_type = "aws_vpc_peering_connection" in
  let __resource =
    aws_vpc_peering_connection ?auto_accept ?id ?peer_owner_id
      ?peer_region ?tags ?tags_all ?timeouts ~peer_vpc_id ~vpc_id
      ~accepter ~requester ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_peering_connection __resource);
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
     }
      : t)
  in
  __resource_attributes

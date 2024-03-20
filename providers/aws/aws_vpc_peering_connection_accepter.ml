(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_vpc_peering_connection_accepter = {
  auto_accept : bool prop option; [@option]  (** auto_accept *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_peering_connection_id : string prop;
      (** vpc_peering_connection_id *)
  accepter : accepter list;
  requester : requester list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_peering_connection_accepter *)

let accepter ?allow_remote_vpc_dns_resolution () : accepter =
  { allow_remote_vpc_dns_resolution }

let requester ?allow_remote_vpc_dns_resolution () : requester =
  { allow_remote_vpc_dns_resolution }

let timeouts ?create ?update () : timeouts = { create; update }

let aws_vpc_peering_connection_accepter ?auto_accept ?id ?tags
    ?tags_all ?timeouts ~vpc_peering_connection_id ~accepter
    ~requester () : aws_vpc_peering_connection_accepter =
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

let make ?auto_accept ?id ?tags ?tags_all ?timeouts
    ~vpc_peering_connection_id ~accepter ~requester __id =
  let __type = "aws_vpc_peering_connection_accepter" in
  let __attrs =
    ({
       accept_status = Prop.computed __type __id "accept_status";
       auto_accept = Prop.computed __type __id "auto_accept";
       id = Prop.computed __type __id "id";
       peer_owner_id = Prop.computed __type __id "peer_owner_id";
       peer_region = Prop.computed __type __id "peer_region";
       peer_vpc_id = Prop.computed __type __id "peer_vpc_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_id = Prop.computed __type __id "vpc_id";
       vpc_peering_connection_id =
         Prop.computed __type __id "vpc_peering_connection_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_peering_connection_accepter
        (aws_vpc_peering_connection_accepter ?auto_accept ?id ?tags
           ?tags_all ?timeouts ~vpc_peering_connection_id ~accepter
           ~requester ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_accept ?id ?tags ?tags_all ?timeouts
    ~vpc_peering_connection_id ~accepter ~requester __id =
  let (r : _ Tf_core.resource) =
    make ?auto_accept ?id ?tags ?tags_all ?timeouts
      ~vpc_peering_connection_id ~accepter ~requester __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

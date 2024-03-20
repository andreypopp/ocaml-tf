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

type aws_vpc_peering_connection_options = {
  id : string prop option; [@option]  (** id *)
  vpc_peering_connection_id : string prop;
      (** vpc_peering_connection_id *)
  accepter : accepter list;
  requester : requester list;
}
[@@deriving yojson_of]
(** aws_vpc_peering_connection_options *)

let accepter ?allow_remote_vpc_dns_resolution () : accepter =
  { allow_remote_vpc_dns_resolution }

let requester ?allow_remote_vpc_dns_resolution () : requester =
  { allow_remote_vpc_dns_resolution }

let aws_vpc_peering_connection_options ?id ~vpc_peering_connection_id
    ~accepter ~requester () : aws_vpc_peering_connection_options =
  { id; vpc_peering_connection_id; accepter; requester }

type t = {
  id : string prop;
  vpc_peering_connection_id : string prop;
}

let make ?id ~vpc_peering_connection_id ~accepter ~requester __id =
  let __type = "aws_vpc_peering_connection_options" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       vpc_peering_connection_id =
         Prop.computed __type __id "vpc_peering_connection_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_peering_connection_options
        (aws_vpc_peering_connection_options ?id
           ~vpc_peering_connection_id ~accepter ~requester ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~vpc_peering_connection_id ~accepter
    ~requester __id =
  let (r : _ Tf_core.resource) =
    make ?id ~vpc_peering_connection_id ~accepter ~requester __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

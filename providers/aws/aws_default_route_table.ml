(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type route = {
  cidr_block : string prop;  (** cidr_block *)
  core_network_arn : string prop;  (** core_network_arn *)
  destination_prefix_list_id : string prop;
      (** destination_prefix_list_id *)
  egress_only_gateway_id : string prop;
      (** egress_only_gateway_id *)
  gateway_id : string prop;  (** gateway_id *)
  instance_id : string prop;  (** instance_id *)
  ipv6_cidr_block : string prop;  (** ipv6_cidr_block *)
  nat_gateway_id : string prop;  (** nat_gateway_id *)
  network_interface_id : string prop;  (** network_interface_id *)
  transit_gateway_id : string prop;  (** transit_gateway_id *)
  vpc_endpoint_id : string prop;  (** vpc_endpoint_id *)
  vpc_peering_connection_id : string prop;
      (** vpc_peering_connection_id *)
}
[@@deriving yojson_of]

type aws_default_route_table = {
  default_route_table_id : string prop;
      (** default_route_table_id *)
  id : string prop option; [@option]  (** id *)
  propagating_vgws : string prop list option; [@option]
      (** propagating_vgws *)
  route : route list option; [@option]  (** route *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_default_route_table *)

let timeouts ?create ?update () : timeouts = { create; update }

let aws_default_route_table ?id ?propagating_vgws ?route ?tags
    ?tags_all ?timeouts ~default_route_table_id () :
    aws_default_route_table =
  {
    default_route_table_id;
    id;
    propagating_vgws;
    route;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  arn : string prop;
  default_route_table_id : string prop;
  id : string prop;
  owner_id : string prop;
  propagating_vgws : string list prop;
  route : route list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

let make ?id ?propagating_vgws ?route ?tags ?tags_all ?timeouts
    ~default_route_table_id __id =
  let __type = "aws_default_route_table" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       default_route_table_id =
         Prop.computed __type __id "default_route_table_id";
       id = Prop.computed __type __id "id";
       owner_id = Prop.computed __type __id "owner_id";
       propagating_vgws =
         Prop.computed __type __id "propagating_vgws";
       route = Prop.computed __type __id "route";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_default_route_table
        (aws_default_route_table ?id ?propagating_vgws ?route ?tags
           ?tags_all ?timeouts ~default_route_table_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?propagating_vgws ?route ?tags ?tags_all
    ?timeouts ~default_route_table_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?propagating_vgws ?route ?tags ?tags_all ?timeouts
      ~default_route_table_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

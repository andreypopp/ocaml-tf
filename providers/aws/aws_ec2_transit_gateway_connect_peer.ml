(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ec2_transit_gateway_connect_peer = {
  bgp_asn : string prop option; [@option]  (** bgp_asn *)
  id : string prop option; [@option]  (** id *)
  inside_cidr_blocks : string prop list;  (** inside_cidr_blocks *)
  peer_address : string prop;  (** peer_address *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  transit_gateway_address : string prop option; [@option]
      (** transit_gateway_address *)
  transit_gateway_attachment_id : string prop;
      (** transit_gateway_attachment_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_connect_peer *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ec2_transit_gateway_connect_peer ?bgp_asn ?id ?tags ?tags_all
    ?transit_gateway_address ?timeouts ~inside_cidr_blocks
    ~peer_address ~transit_gateway_attachment_id () :
    aws_ec2_transit_gateway_connect_peer =
  {
    bgp_asn;
    id;
    inside_cidr_blocks;
    peer_address;
    tags;
    tags_all;
    transit_gateway_address;
    transit_gateway_attachment_id;
    timeouts;
  }

type t = {
  arn : string prop;
  bgp_asn : string prop;
  bgp_peer_address : string prop;
  bgp_transit_gateway_addresses : string list prop;
  id : string prop;
  inside_cidr_blocks : string list prop;
  peer_address : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  transit_gateway_address : string prop;
  transit_gateway_attachment_id : string prop;
}

let make ?bgp_asn ?id ?tags ?tags_all ?transit_gateway_address
    ?timeouts ~inside_cidr_blocks ~peer_address
    ~transit_gateway_attachment_id __id =
  let __type = "aws_ec2_transit_gateway_connect_peer" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       bgp_asn = Prop.computed __type __id "bgp_asn";
       bgp_peer_address =
         Prop.computed __type __id "bgp_peer_address";
       bgp_transit_gateway_addresses =
         Prop.computed __type __id "bgp_transit_gateway_addresses";
       id = Prop.computed __type __id "id";
       inside_cidr_blocks =
         Prop.computed __type __id "inside_cidr_blocks";
       peer_address = Prop.computed __type __id "peer_address";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       transit_gateway_address =
         Prop.computed __type __id "transit_gateway_address";
       transit_gateway_attachment_id =
         Prop.computed __type __id "transit_gateway_attachment_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_transit_gateway_connect_peer
        (aws_ec2_transit_gateway_connect_peer ?bgp_asn ?id ?tags
           ?tags_all ?transit_gateway_address ?timeouts
           ~inside_cidr_blocks ~peer_address
           ~transit_gateway_attachment_id ());
    attrs = __attrs;
  }

let register ?tf_module ?bgp_asn ?id ?tags ?tags_all
    ?transit_gateway_address ?timeouts ~inside_cidr_blocks
    ~peer_address ~transit_gateway_attachment_id __id =
  let (r : _ Tf_core.resource) =
    make ?bgp_asn ?id ?tags ?tags_all ?transit_gateway_address
      ?timeouts ~inside_cidr_blocks ~peer_address
      ~transit_gateway_attachment_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

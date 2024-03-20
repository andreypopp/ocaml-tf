(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type bgp_options = {
  peer_asn : float prop option; [@option]  (** peer_asn *)
}
[@@deriving yojson_of]
(** bgp_options *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type configuration__bgp_configurations = {
  core_network_address : string prop;  (** core_network_address *)
  core_network_asn : float prop;  (** core_network_asn *)
  peer_address : string prop;  (** peer_address *)
  peer_asn : float prop;  (** peer_asn *)
}
[@@deriving yojson_of]

type configuration = {
  bgp_configurations : configuration__bgp_configurations list;
      (** bgp_configurations *)
  core_network_address : string prop;  (** core_network_address *)
  inside_cidr_blocks : string prop list;  (** inside_cidr_blocks *)
  peer_address : string prop;  (** peer_address *)
  protocol : string prop;  (** protocol *)
}
[@@deriving yojson_of]

type aws_networkmanager_connect_peer = {
  connect_attachment_id : string prop;  (** connect_attachment_id *)
  core_network_address : string prop option; [@option]
      (** core_network_address *)
  id : string prop option; [@option]  (** id *)
  inside_cidr_blocks : string prop list option; [@option]
      (** inside_cidr_blocks *)
  peer_address : string prop;  (** peer_address *)
  subnet_arn : string prop option; [@option]  (** subnet_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  bgp_options : bgp_options list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_connect_peer *)

let bgp_options ?peer_asn () : bgp_options = { peer_asn }
let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_networkmanager_connect_peer ?core_network_address ?id
    ?inside_cidr_blocks ?subnet_arn ?tags ?tags_all ?timeouts
    ~connect_attachment_id ~peer_address ~bgp_options () :
    aws_networkmanager_connect_peer =
  {
    connect_attachment_id;
    core_network_address;
    id;
    inside_cidr_blocks;
    peer_address;
    subnet_arn;
    tags;
    tags_all;
    bgp_options;
    timeouts;
  }

type t = {
  arn : string prop;
  configuration : configuration list prop;
  connect_attachment_id : string prop;
  connect_peer_id : string prop;
  core_network_address : string prop;
  core_network_id : string prop;
  created_at : string prop;
  edge_location : string prop;
  id : string prop;
  inside_cidr_blocks : string list prop;
  peer_address : string prop;
  state : string prop;
  subnet_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?core_network_address ?id ?inside_cidr_blocks ?subnet_arn
    ?tags ?tags_all ?timeouts ~connect_attachment_id ~peer_address
    ~bgp_options __id =
  let __type = "aws_networkmanager_connect_peer" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       configuration = Prop.computed __type __id "configuration";
       connect_attachment_id =
         Prop.computed __type __id "connect_attachment_id";
       connect_peer_id = Prop.computed __type __id "connect_peer_id";
       core_network_address =
         Prop.computed __type __id "core_network_address";
       core_network_id = Prop.computed __type __id "core_network_id";
       created_at = Prop.computed __type __id "created_at";
       edge_location = Prop.computed __type __id "edge_location";
       id = Prop.computed __type __id "id";
       inside_cidr_blocks =
         Prop.computed __type __id "inside_cidr_blocks";
       peer_address = Prop.computed __type __id "peer_address";
       state = Prop.computed __type __id "state";
       subnet_arn = Prop.computed __type __id "subnet_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkmanager_connect_peer
        (aws_networkmanager_connect_peer ?core_network_address ?id
           ?inside_cidr_blocks ?subnet_arn ?tags ?tags_all ?timeouts
           ~connect_attachment_id ~peer_address ~bgp_options ());
    attrs = __attrs;
  }

let register ?tf_module ?core_network_address ?id ?inside_cidr_blocks
    ?subnet_arn ?tags ?tags_all ?timeouts ~connect_attachment_id
    ~peer_address ~bgp_options __id =
  let (r : _ Tf_core.resource) =
    make ?core_network_address ?id ?inside_cidr_blocks ?subnet_arn
      ?tags ?tags_all ?timeouts ~connect_attachment_id ~peer_address
      ~bgp_options __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

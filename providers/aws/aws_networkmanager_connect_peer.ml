(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type bgp_options = { peer_asn : float prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : bgp_options) -> ()

let yojson_of_bgp_options =
  (function
   | { peer_asn = v_peer_asn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_peer_asn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "peer_asn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : bgp_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bgp_options

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type configuration__bgp_configurations = {
  core_network_address : string prop;
  core_network_asn : float prop;
  peer_address : string prop;
  peer_asn : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration__bgp_configurations) -> ()

let yojson_of_configuration__bgp_configurations =
  (function
   | {
       core_network_address = v_core_network_address;
       core_network_asn = v_core_network_asn;
       peer_address = v_peer_address;
       peer_asn = v_peer_asn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_peer_asn in
         ("peer_asn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_peer_address in
         ("peer_address", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_core_network_asn
         in
         ("core_network_asn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_core_network_address
         in
         ("core_network_address", arg) :: bnds
       in
       `Assoc bnds
    : configuration__bgp_configurations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__bgp_configurations

[@@@deriving.end]

type configuration = {
  bgp_configurations : configuration__bgp_configurations list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  core_network_address : string prop;
  inside_cidr_blocks : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  peer_address : string prop;
  protocol : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration) -> ()

let yojson_of_configuration =
  (function
   | {
       bgp_configurations = v_bgp_configurations;
       core_network_address = v_core_network_address;
       inside_cidr_blocks = v_inside_cidr_blocks;
       peer_address = v_peer_address;
       protocol = v_protocol;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_peer_address in
         ("peer_address", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_inside_cidr_blocks then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_inside_cidr_blocks
           in
           let bnd = "inside_cidr_blocks", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_core_network_address
         in
         ("core_network_address", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_bgp_configurations then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configuration__bgp_configurations)
               v_bgp_configurations
           in
           let bnd = "bgp_configurations", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration

[@@@deriving.end]

type aws_networkmanager_connect_peer = {
  connect_attachment_id : string prop;
  core_network_address : string prop option; [@option]
  id : string prop option; [@option]
  inside_cidr_blocks : string prop list option; [@option]
  peer_address : string prop;
  subnet_arn : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  bgp_options : bgp_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_networkmanager_connect_peer) -> ()

let yojson_of_aws_networkmanager_connect_peer =
  (function
   | {
       connect_attachment_id = v_connect_attachment_id;
       core_network_address = v_core_network_address;
       id = v_id;
       inside_cidr_blocks = v_inside_cidr_blocks;
       peer_address = v_peer_address;
       subnet_arn = v_subnet_arn;
       tags = v_tags;
       tags_all = v_tags_all;
       bgp_options = v_bgp_options;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_bgp_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_bgp_options) v_bgp_options
           in
           let bnd = "bgp_options", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subnet_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnet_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_peer_address in
         ("peer_address", arg) :: bnds
       in
       let bnds =
         match v_inside_cidr_blocks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "inside_cidr_blocks", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_core_network_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "core_network_address", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_connect_attachment_id
         in
         ("connect_attachment_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_networkmanager_connect_peer ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_networkmanager_connect_peer

[@@@deriving.end]

let bgp_options ?peer_asn () : bgp_options = { peer_asn }
let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_networkmanager_connect_peer ?core_network_address ?id
    ?inside_cidr_blocks ?subnet_arn ?tags ?tags_all
    ?(bgp_options = []) ?timeouts ~connect_attachment_id
    ~peer_address () : aws_networkmanager_connect_peer =
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
  tf_name : string;
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
    ?tags ?tags_all ?(bgp_options = []) ?timeouts
    ~connect_attachment_id ~peer_address __id =
  let __type = "aws_networkmanager_connect_peer" in
  let __attrs =
    ({
       tf_name = __id;
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
           ?inside_cidr_blocks ?subnet_arn ?tags ?tags_all
           ~bgp_options ?timeouts ~connect_attachment_id
           ~peer_address ());
    attrs = __attrs;
  }

let register ?tf_module ?core_network_address ?id ?inside_cidr_blocks
    ?subnet_arn ?tags ?tags_all ?(bgp_options = []) ?timeouts
    ~connect_attachment_id ~peer_address __id =
  let (r : _ Tf_core.resource) =
    make ?core_network_address ?id ?inside_cidr_blocks ?subnet_arn
      ?tags ?tags_all ~bgp_options ?timeouts ~connect_attachment_id
      ~peer_address __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

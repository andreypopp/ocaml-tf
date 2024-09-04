(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type bgp_settings = {
  asn : float prop;
  bgp_peering_address : string prop;
  peer_weight : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bgp_settings) -> ()

let yojson_of_bgp_settings =
  (function
   | {
       asn = v_asn;
       bgp_peering_address = v_bgp_peering_address;
       peer_weight = v_peer_weight;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_peer_weight with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "peer_weight", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_bgp_peering_address
         in
         ("bgp_peering_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_asn in
         ("asn", arg) :: bnds
       in
       `Assoc bnds
    : bgp_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bgp_settings

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
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

type azurerm_local_network_gateway = {
  address_space : string prop list option; [@option]
  gateway_address : string prop option; [@option]
  gateway_fqdn : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  bgp_settings : bgp_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_local_network_gateway) -> ()

let yojson_of_azurerm_local_network_gateway =
  (function
   | {
       address_space = v_address_space;
       gateway_address = v_gateway_address;
       gateway_fqdn = v_gateway_fqdn;
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       bgp_settings = v_bgp_settings;
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
         if Stdlib.( = ) [] v_bgp_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_bgp_settings) v_bgp_settings
           in
           let bnd = "bgp_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         match v_gateway_fqdn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gateway_fqdn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gateway_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gateway_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address_space with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "address_space", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_local_network_gateway ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_local_network_gateway

[@@@deriving.end]

let bgp_settings ?peer_weight ~asn ~bgp_peering_address () :
    bgp_settings =
  { asn; bgp_peering_address; peer_weight }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_local_network_gateway ?address_space ?gateway_address
    ?gateway_fqdn ?id ?tags ?(bgp_settings = []) ?timeouts ~location
    ~name ~resource_group_name () : azurerm_local_network_gateway =
  {
    address_space;
    gateway_address;
    gateway_fqdn;
    id;
    location;
    name;
    resource_group_name;
    tags;
    bgp_settings;
    timeouts;
  }

type t = {
  tf_name : string;
  address_space : string list prop;
  gateway_address : string prop;
  gateway_fqdn : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?address_space ?gateway_address ?gateway_fqdn ?id ?tags
    ?(bgp_settings = []) ?timeouts ~location ~name
    ~resource_group_name __id =
  let __type = "azurerm_local_network_gateway" in
  let __attrs =
    ({
       tf_name = __id;
       address_space = Prop.computed __type __id "address_space";
       gateway_address = Prop.computed __type __id "gateway_address";
       gateway_fqdn = Prop.computed __type __id "gateway_fqdn";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_local_network_gateway
        (azurerm_local_network_gateway ?address_space
           ?gateway_address ?gateway_fqdn ?id ?tags ~bgp_settings
           ?timeouts ~location ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?address_space ?gateway_address ?gateway_fqdn
    ?id ?tags ?(bgp_settings = []) ?timeouts ~location ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?address_space ?gateway_address ?gateway_fqdn ?id ?tags
      ~bgp_settings ?timeouts ~location ~name ~resource_group_name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

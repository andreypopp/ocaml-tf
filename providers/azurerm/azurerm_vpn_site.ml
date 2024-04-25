(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type link__bgp = { asn : float prop; peering_address : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : link__bgp) -> ()

let yojson_of_link__bgp =
  (function
   | { asn = v_asn; peering_address = v_peering_address } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_peering_address
         in
         ("peering_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_asn in
         ("asn", arg) :: bnds
       in
       `Assoc bnds
    : link__bgp -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_link__bgp

[@@@deriving.end]

type link = {
  fqdn : string prop option; [@option]
  ip_address : string prop option; [@option]
  name : string prop;
  provider_name : string prop option; [@option]
  speed_in_mbps : float prop option; [@option]
  bgp : link__bgp list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : link) -> ()

let yojson_of_link =
  (function
   | {
       fqdn = v_fqdn;
       ip_address = v_ip_address;
       name = v_name;
       provider_name = v_provider_name;
       speed_in_mbps = v_speed_in_mbps;
       bgp = v_bgp;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_link__bgp v_bgp in
         ("bgp", arg) :: bnds
       in
       let bnds =
         match v_speed_in_mbps with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "speed_in_mbps", arg in
             bnd :: bnds
       in
       let bnds =
         match v_provider_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "provider_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fqdn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fqdn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : link -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_link

[@@@deriving.end]

type o365_policy__traffic_category = {
  allow_endpoint_enabled : bool prop option; [@option]
  default_endpoint_enabled : bool prop option; [@option]
  optimize_endpoint_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : o365_policy__traffic_category) -> ()

let yojson_of_o365_policy__traffic_category =
  (function
   | {
       allow_endpoint_enabled = v_allow_endpoint_enabled;
       default_endpoint_enabled = v_default_endpoint_enabled;
       optimize_endpoint_enabled = v_optimize_endpoint_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_optimize_endpoint_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "optimize_endpoint_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_endpoint_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "default_endpoint_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_endpoint_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_endpoint_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : o365_policy__traffic_category ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_o365_policy__traffic_category

[@@@deriving.end]

type o365_policy = {
  traffic_category : o365_policy__traffic_category list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : o365_policy) -> ()

let yojson_of_o365_policy =
  (function
   | { traffic_category = v_traffic_category } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_o365_policy__traffic_category
             v_traffic_category
         in
         ("traffic_category", arg) :: bnds
       in
       `Assoc bnds
    : o365_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_o365_policy

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

type azurerm_vpn_site = {
  address_cidrs : string prop list option; [@option]
  device_model : string prop option; [@option]
  device_vendor : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  virtual_wan_id : string prop;
  link : link list;
  o365_policy : o365_policy list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_vpn_site) -> ()

let yojson_of_azurerm_vpn_site =
  (function
   | {
       address_cidrs = v_address_cidrs;
       device_model = v_device_model;
       device_vendor = v_device_vendor;
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       virtual_wan_id = v_virtual_wan_id;
       link = v_link;
       o365_policy = v_o365_policy;
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
         let arg =
           yojson_of_list yojson_of_o365_policy v_o365_policy
         in
         ("o365_policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_link v_link in
         ("link", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_wan_id
         in
         ("virtual_wan_id", arg) :: bnds
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
         match v_device_vendor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "device_vendor", arg in
             bnd :: bnds
       in
       let bnds =
         match v_device_model with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "device_model", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address_cidrs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "address_cidrs", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_vpn_site -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_vpn_site

[@@@deriving.end]

let link__bgp ~asn ~peering_address () : link__bgp =
  { asn; peering_address }

let link ?fqdn ?ip_address ?provider_name ?speed_in_mbps ?(bgp = [])
    ~name () : link =
  { fqdn; ip_address; name; provider_name; speed_in_mbps; bgp }

let o365_policy__traffic_category ?allow_endpoint_enabled
    ?default_endpoint_enabled ?optimize_endpoint_enabled () :
    o365_policy__traffic_category =
  {
    allow_endpoint_enabled;
    default_endpoint_enabled;
    optimize_endpoint_enabled;
  }

let o365_policy ?(traffic_category = []) () : o365_policy =
  { traffic_category }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_vpn_site ?address_cidrs ?device_model ?device_vendor ?id
    ?tags ?(link = []) ?(o365_policy = []) ?timeouts ~location ~name
    ~resource_group_name ~virtual_wan_id () : azurerm_vpn_site =
  {
    address_cidrs;
    device_model;
    device_vendor;
    id;
    location;
    name;
    resource_group_name;
    tags;
    virtual_wan_id;
    link;
    o365_policy;
    timeouts;
  }

type t = {
  address_cidrs : string list prop;
  device_model : string prop;
  device_vendor : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  virtual_wan_id : string prop;
}

let make ?address_cidrs ?device_model ?device_vendor ?id ?tags
    ?(link = []) ?(o365_policy = []) ?timeouts ~location ~name
    ~resource_group_name ~virtual_wan_id __id =
  let __type = "azurerm_vpn_site" in
  let __attrs =
    ({
       address_cidrs = Prop.computed __type __id "address_cidrs";
       device_model = Prop.computed __type __id "device_model";
       device_vendor = Prop.computed __type __id "device_vendor";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       virtual_wan_id = Prop.computed __type __id "virtual_wan_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_vpn_site
        (azurerm_vpn_site ?address_cidrs ?device_model ?device_vendor
           ?id ?tags ~link ~o365_policy ?timeouts ~location ~name
           ~resource_group_name ~virtual_wan_id ());
    attrs = __attrs;
  }

let register ?tf_module ?address_cidrs ?device_model ?device_vendor
    ?id ?tags ?(link = []) ?(o365_policy = []) ?timeouts ~location
    ~name ~resource_group_name ~virtual_wan_id __id =
  let (r : _ Tf_core.resource) =
    make ?address_cidrs ?device_model ?device_vendor ?id ?tags ~link
      ~o365_policy ?timeouts ~location ~name ~resource_group_name
      ~virtual_wan_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

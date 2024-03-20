(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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

type aws_dx_transit_virtual_interface = {
  address_family : string prop;
  amazon_address : string prop option; [@option]
  bgp_asn : float prop;
  bgp_auth_key : string prop option; [@option]
  connection_id : string prop;
  customer_address : string prop option; [@option]
  dx_gateway_id : string prop;
  id : string prop option; [@option]
  mtu : float prop option; [@option]
  name : string prop;
  sitelink_enabled : bool prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  vlan : float prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dx_transit_virtual_interface) -> ()

let yojson_of_aws_dx_transit_virtual_interface =
  (function
   | {
       address_family = v_address_family;
       amazon_address = v_amazon_address;
       bgp_asn = v_bgp_asn;
       bgp_auth_key = v_bgp_auth_key;
       connection_id = v_connection_id;
       customer_address = v_customer_address;
       dx_gateway_id = v_dx_gateway_id;
       id = v_id;
       mtu = v_mtu;
       name = v_name;
       sitelink_enabled = v_sitelink_enabled;
       tags = v_tags;
       tags_all = v_tags_all;
       vlan = v_vlan;
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
         let arg = yojson_of_prop yojson_of_float v_vlan in
         ("vlan", arg) :: bnds
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
         match v_sitelink_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "sitelink_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_mtu with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "mtu", arg in
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
         let arg = yojson_of_prop yojson_of_string v_dx_gateway_id in
         ("dx_gateway_id", arg) :: bnds
       in
       let bnds =
         match v_customer_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "customer_address", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_connection_id in
         ("connection_id", arg) :: bnds
       in
       let bnds =
         match v_bgp_auth_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bgp_auth_key", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_bgp_asn in
         ("bgp_asn", arg) :: bnds
       in
       let bnds =
         match v_amazon_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "amazon_address", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_address_family
         in
         ("address_family", arg) :: bnds
       in
       `Assoc bnds
    : aws_dx_transit_virtual_interface ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dx_transit_virtual_interface

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_dx_transit_virtual_interface ?amazon_address ?bgp_auth_key
    ?customer_address ?id ?mtu ?sitelink_enabled ?tags ?tags_all
    ?timeouts ~address_family ~bgp_asn ~connection_id ~dx_gateway_id
    ~name ~vlan () : aws_dx_transit_virtual_interface =
  {
    address_family;
    amazon_address;
    bgp_asn;
    bgp_auth_key;
    connection_id;
    customer_address;
    dx_gateway_id;
    id;
    mtu;
    name;
    sitelink_enabled;
    tags;
    tags_all;
    vlan;
    timeouts;
  }

type t = {
  address_family : string prop;
  amazon_address : string prop;
  amazon_side_asn : string prop;
  arn : string prop;
  aws_device : string prop;
  bgp_asn : float prop;
  bgp_auth_key : string prop;
  connection_id : string prop;
  customer_address : string prop;
  dx_gateway_id : string prop;
  id : string prop;
  jumbo_frame_capable : bool prop;
  mtu : float prop;
  name : string prop;
  sitelink_enabled : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vlan : float prop;
}

let make ?amazon_address ?bgp_auth_key ?customer_address ?id ?mtu
    ?sitelink_enabled ?tags ?tags_all ?timeouts ~address_family
    ~bgp_asn ~connection_id ~dx_gateway_id ~name ~vlan __id =
  let __type = "aws_dx_transit_virtual_interface" in
  let __attrs =
    ({
       address_family = Prop.computed __type __id "address_family";
       amazon_address = Prop.computed __type __id "amazon_address";
       amazon_side_asn = Prop.computed __type __id "amazon_side_asn";
       arn = Prop.computed __type __id "arn";
       aws_device = Prop.computed __type __id "aws_device";
       bgp_asn = Prop.computed __type __id "bgp_asn";
       bgp_auth_key = Prop.computed __type __id "bgp_auth_key";
       connection_id = Prop.computed __type __id "connection_id";
       customer_address =
         Prop.computed __type __id "customer_address";
       dx_gateway_id = Prop.computed __type __id "dx_gateway_id";
       id = Prop.computed __type __id "id";
       jumbo_frame_capable =
         Prop.computed __type __id "jumbo_frame_capable";
       mtu = Prop.computed __type __id "mtu";
       name = Prop.computed __type __id "name";
       sitelink_enabled =
         Prop.computed __type __id "sitelink_enabled";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vlan = Prop.computed __type __id "vlan";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dx_transit_virtual_interface
        (aws_dx_transit_virtual_interface ?amazon_address
           ?bgp_auth_key ?customer_address ?id ?mtu ?sitelink_enabled
           ?tags ?tags_all ?timeouts ~address_family ~bgp_asn
           ~connection_id ~dx_gateway_id ~name ~vlan ());
    attrs = __attrs;
  }

let register ?tf_module ?amazon_address ?bgp_auth_key
    ?customer_address ?id ?mtu ?sitelink_enabled ?tags ?tags_all
    ?timeouts ~address_family ~bgp_asn ~connection_id ~dx_gateway_id
    ~name ~vlan __id =
  let (r : _ Tf_core.resource) =
    make ?amazon_address ?bgp_auth_key ?customer_address ?id ?mtu
      ?sitelink_enabled ?tags ?tags_all ?timeouts ~address_family
      ~bgp_asn ~connection_id ~dx_gateway_id ~name ~vlan __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

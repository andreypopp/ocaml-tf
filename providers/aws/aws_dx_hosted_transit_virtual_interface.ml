(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type aws_dx_hosted_transit_virtual_interface = {
  address_family : string prop;
  amazon_address : string prop option; [@option]
  bgp_asn : float prop;
  bgp_auth_key : string prop option; [@option]
  connection_id : string prop;
  customer_address : string prop option; [@option]
  id : string prop option; [@option]
  mtu : float prop option; [@option]
  name : string prop;
  owner_account_id : string prop;
  vlan : float prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dx_hosted_transit_virtual_interface) -> ()

let yojson_of_aws_dx_hosted_transit_virtual_interface =
  (function
   | {
       address_family = v_address_family;
       amazon_address = v_amazon_address;
       bgp_asn = v_bgp_asn;
       bgp_auth_key = v_bgp_auth_key;
       connection_id = v_connection_id;
       customer_address = v_customer_address;
       id = v_id;
       mtu = v_mtu;
       name = v_name;
       owner_account_id = v_owner_account_id;
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
         let arg =
           yojson_of_prop yojson_of_string v_owner_account_id
         in
         ("owner_account_id", arg) :: bnds
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
    : aws_dx_hosted_transit_virtual_interface ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dx_hosted_transit_virtual_interface

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_dx_hosted_transit_virtual_interface ?amazon_address
    ?bgp_auth_key ?customer_address ?id ?mtu ?timeouts
    ~address_family ~bgp_asn ~connection_id ~name ~owner_account_id
    ~vlan () : aws_dx_hosted_transit_virtual_interface =
  {
    address_family;
    amazon_address;
    bgp_asn;
    bgp_auth_key;
    connection_id;
    customer_address;
    id;
    mtu;
    name;
    owner_account_id;
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
  id : string prop;
  jumbo_frame_capable : bool prop;
  mtu : float prop;
  name : string prop;
  owner_account_id : string prop;
  vlan : float prop;
}

let make ?amazon_address ?bgp_auth_key ?customer_address ?id ?mtu
    ?timeouts ~address_family ~bgp_asn ~connection_id ~name
    ~owner_account_id ~vlan __id =
  let __type = "aws_dx_hosted_transit_virtual_interface" in
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
       id = Prop.computed __type __id "id";
       jumbo_frame_capable =
         Prop.computed __type __id "jumbo_frame_capable";
       mtu = Prop.computed __type __id "mtu";
       name = Prop.computed __type __id "name";
       owner_account_id =
         Prop.computed __type __id "owner_account_id";
       vlan = Prop.computed __type __id "vlan";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dx_hosted_transit_virtual_interface
        (aws_dx_hosted_transit_virtual_interface ?amazon_address
           ?bgp_auth_key ?customer_address ?id ?mtu ?timeouts
           ~address_family ~bgp_asn ~connection_id ~name
           ~owner_account_id ~vlan ());
    attrs = __attrs;
  }

let register ?tf_module ?amazon_address ?bgp_auth_key
    ?customer_address ?id ?mtu ?timeouts ~address_family ~bgp_asn
    ~connection_id ~name ~owner_account_id ~vlan __id =
  let (r : _ Tf_core.resource) =
    make ?amazon_address ?bgp_auth_key ?customer_address ?id ?mtu
      ?timeouts ~address_family ~bgp_asn ~connection_id ~name
      ~owner_account_id ~vlan __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

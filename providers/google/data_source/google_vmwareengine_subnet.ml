(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dhcp_address_ranges = {
  first_address : string prop;
  last_address : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dhcp_address_ranges) -> ()

let yojson_of_dhcp_address_ranges =
  (function
   | {
       first_address = v_first_address;
       last_address = v_last_address;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_last_address in
         ("last_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_first_address in
         ("first_address", arg) :: bnds
       in
       `Assoc bnds
    : dhcp_address_ranges -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dhcp_address_ranges

[@@@deriving.end]

type google_vmwareengine_subnet = {
  id : string prop option; [@option]
  name : string prop;
  parent : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_vmwareengine_subnet) -> ()

let yojson_of_google_vmwareengine_subnet =
  (function
   | { id = v_id; name = v_name; parent = v_parent } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent in
         ("parent", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_vmwareengine_subnet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_vmwareengine_subnet

[@@@deriving.end]

let google_vmwareengine_subnet ?id ~name ~parent () :
    google_vmwareengine_subnet =
  { id; name; parent }

type t = {
  tf_name : string;
  create_time : string prop;
  dhcp_address_ranges : dhcp_address_ranges list prop;
  gateway_id : string prop;
  gateway_ip : string prop;
  id : string prop;
  ip_cidr_range : string prop;
  name : string prop;
  parent : string prop;
  standard_config : bool prop;
  state : string prop;
  type_ : string prop;
  uid : string prop;
  update_time : string prop;
  vlan_id : float prop;
}

let make ?id ~name ~parent __id =
  let __type = "google_vmwareengine_subnet" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       dhcp_address_ranges =
         Prop.computed __type __id "dhcp_address_ranges";
       gateway_id = Prop.computed __type __id "gateway_id";
       gateway_ip = Prop.computed __type __id "gateway_ip";
       id = Prop.computed __type __id "id";
       ip_cidr_range = Prop.computed __type __id "ip_cidr_range";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       standard_config = Prop.computed __type __id "standard_config";
       state = Prop.computed __type __id "state";
       type_ = Prop.computed __type __id "type";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
       vlan_id = Prop.computed __type __id "vlan_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_vmwareengine_subnet
        (google_vmwareengine_subnet ?id ~name ~parent ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~parent __id =
  let (r : _ Tf_core.resource) = make ?id ~name ~parent __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

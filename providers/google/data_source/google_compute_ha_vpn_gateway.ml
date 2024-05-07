(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vpn_interfaces = {
  id : float prop;
  interconnect_attachment : string prop;
  ip_address : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpn_interfaces) -> ()

let yojson_of_vpn_interfaces =
  (function
   | {
       id = v_id;
       interconnect_attachment = v_interconnect_attachment;
       ip_address = v_ip_address;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_address in
         ("ip_address", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_interconnect_attachment
         in
         ("interconnect_attachment", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : vpn_interfaces -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpn_interfaces

[@@@deriving.end]

type google_compute_ha_vpn_gateway = {
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_ha_vpn_gateway) -> ()

let yojson_of_google_compute_ha_vpn_gateway =
  (function
   | {
       id = v_id;
       name = v_name;
       project = v_project;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
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
    : google_compute_ha_vpn_gateway ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_ha_vpn_gateway

[@@@deriving.end]

let google_compute_ha_vpn_gateway ?id ?project ?region ~name () :
    google_compute_ha_vpn_gateway =
  { id; name; project; region }

type t = {
  tf_name : string;
  description : string prop;
  id : string prop;
  name : string prop;
  network : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
  stack_type : string prop;
  vpn_interfaces : vpn_interfaces list prop;
}

let make ?id ?project ?region ~name __id =
  let __type = "google_compute_ha_vpn_gateway" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       self_link = Prop.computed __type __id "self_link";
       stack_type = Prop.computed __type __id "stack_type";
       vpn_interfaces = Prop.computed __type __id "vpn_interfaces";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_ha_vpn_gateway
        (google_compute_ha_vpn_gateway ?id ?project ?region ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

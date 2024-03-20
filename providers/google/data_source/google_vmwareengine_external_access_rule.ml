(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type destination_ip_ranges = {
  external_address : string prop;
  ip_address_range : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination_ip_ranges) -> ()

let yojson_of_destination_ip_ranges =
  (function
   | {
       external_address = v_external_address;
       ip_address_range = v_ip_address_range;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ip_address_range
         in
         ("ip_address_range", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_external_address
         in
         ("external_address", arg) :: bnds
       in
       `Assoc bnds
    : destination_ip_ranges -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination_ip_ranges

[@@@deriving.end]

type source_ip_ranges = {
  ip_address : string prop;
  ip_address_range : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source_ip_ranges) -> ()

let yojson_of_source_ip_ranges =
  (function
   | {
       ip_address = v_ip_address;
       ip_address_range = v_ip_address_range;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ip_address_range
         in
         ("ip_address_range", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_address in
         ("ip_address", arg) :: bnds
       in
       `Assoc bnds
    : source_ip_ranges -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_ip_ranges

[@@@deriving.end]

type google_vmwareengine_external_access_rule = {
  id : string prop option; [@option]
  name : string prop;
  parent : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_vmwareengine_external_access_rule) -> ()

let yojson_of_google_vmwareengine_external_access_rule =
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
    : google_vmwareengine_external_access_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_vmwareengine_external_access_rule

[@@@deriving.end]

let google_vmwareengine_external_access_rule ?id ~name ~parent () :
    google_vmwareengine_external_access_rule =
  { id; name; parent }

type t = {
  action : string prop;
  create_time : string prop;
  description : string prop;
  destination_ip_ranges : destination_ip_ranges list prop;
  destination_ports : string list prop;
  id : string prop;
  ip_protocol : string prop;
  name : string prop;
  parent : string prop;
  priority : float prop;
  source_ip_ranges : source_ip_ranges list prop;
  source_ports : string list prop;
  state : string prop;
  uid : string prop;
  update_time : string prop;
}

let make ?id ~name ~parent __id =
  let __type = "google_vmwareengine_external_access_rule" in
  let __attrs =
    ({
       action = Prop.computed __type __id "action";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       destination_ip_ranges =
         Prop.computed __type __id "destination_ip_ranges";
       destination_ports =
         Prop.computed __type __id "destination_ports";
       id = Prop.computed __type __id "id";
       ip_protocol = Prop.computed __type __id "ip_protocol";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       priority = Prop.computed __type __id "priority";
       source_ip_ranges =
         Prop.computed __type __id "source_ip_ranges";
       source_ports = Prop.computed __type __id "source_ports";
       state = Prop.computed __type __id "state";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_vmwareengine_external_access_rule
        (google_vmwareengine_external_access_rule ?id ~name ~parent
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~parent __id =
  let (r : _ Tf_core.resource) = make ?id ~name ~parent __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

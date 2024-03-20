(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type primary_ips = {
  assignee_id : float prop;
  assignee_type : string prop;
  auto_delete : bool prop;
  datacenter : string prop;
  delete_protection : bool prop;
  id : float prop;
  ip_address : string prop;
  ip_network : string prop;
  labels : (string * string prop) list;
  name : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : primary_ips) -> ()

let yojson_of_primary_ips =
  (function
   | {
       assignee_id = v_assignee_id;
       assignee_type = v_assignee_type;
       auto_delete = v_auto_delete;
       datacenter = v_datacenter;
       delete_protection = v_delete_protection;
       id = v_id;
       ip_address = v_ip_address;
       ip_network = v_ip_network;
       labels = v_labels;
       name = v_name;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_labels
         in
         ("labels", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_network in
         ("ip_network", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_address in
         ("ip_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_delete_protection
         in
         ("delete_protection", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_datacenter in
         ("datacenter", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_auto_delete in
         ("auto_delete", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_assignee_type in
         ("assignee_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_assignee_id in
         ("assignee_id", arg) :: bnds
       in
       `Assoc bnds
    : primary_ips -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_primary_ips

[@@@deriving.end]

type hcloud_primary_ips = {
  id : string prop option; [@option]
  with_selector : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_primary_ips) -> ()

let yojson_of_hcloud_primary_ips =
  (function
   | { id = v_id; with_selector = v_with_selector } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_with_selector with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "with_selector", arg in
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
       `Assoc bnds
    : hcloud_primary_ips -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_primary_ips

[@@@deriving.end]

let hcloud_primary_ips ?id ?with_selector () : hcloud_primary_ips =
  { id; with_selector }

type t = {
  id : string prop;
  primary_ips : primary_ips list prop;
  with_selector : string prop;
}

let make ?id ?with_selector __id =
  let __type = "hcloud_primary_ips" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       primary_ips = Prop.computed __type __id "primary_ips";
       with_selector = Prop.computed __type __id "with_selector";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_primary_ips
        (hcloud_primary_ips ?id ?with_selector ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?with_selector __id =
  let (r : _ Tf_core.resource) = make ?id ?with_selector __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

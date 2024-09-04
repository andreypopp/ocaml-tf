(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type floating_ips = {
  delete_protection : bool prop;
  description : string prop;
  home_location : string prop;
  id : float prop;
  ip_address : string prop;
  ip_network : string prop;
  labels : string prop Tf_core.assoc;
  name : string prop;
  server_id : float prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : floating_ips) -> ()

let yojson_of_floating_ips =
  (function
   | {
       delete_protection = v_delete_protection;
       description = v_description;
       home_location = v_home_location;
       id = v_id;
       ip_address = v_ip_address;
       ip_network = v_ip_network;
       labels = v_labels;
       name = v_name;
       server_id = v_server_id;
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
         let arg = yojson_of_prop yojson_of_float v_server_id in
         ("server_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
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
         let arg = yojson_of_prop yojson_of_string v_home_location in
         ("home_location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_delete_protection
         in
         ("delete_protection", arg) :: bnds
       in
       `Assoc bnds
    : floating_ips -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_floating_ips

[@@@deriving.end]

type hcloud_floating_ips = {
  id : string prop option; [@option]
  with_selector : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_floating_ips) -> ()

let yojson_of_hcloud_floating_ips =
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
    : hcloud_floating_ips -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_floating_ips

[@@@deriving.end]

let hcloud_floating_ips ?id ?with_selector () : hcloud_floating_ips =
  { id; with_selector }

type t = {
  tf_name : string;
  floating_ips : floating_ips list prop;
  id : string prop;
  with_selector : string prop;
}

let make ?id ?with_selector __id =
  let __type = "hcloud_floating_ips" in
  let __attrs =
    ({
       tf_name = __id;
       floating_ips = Prop.computed __type __id "floating_ips";
       id = Prop.computed __type __id "id";
       with_selector = Prop.computed __type __id "with_selector";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_floating_ips
        (hcloud_floating_ips ?id ?with_selector ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?with_selector __id =
  let (r : _ Tf_core.resource) = make ?id ?with_selector __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

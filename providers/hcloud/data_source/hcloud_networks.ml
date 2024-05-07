(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type networks = {
  delete_protection : bool prop;
  expose_routes_to_vswitch : bool prop;
  id : float prop;
  ip_range : string prop;
  labels : (string * string prop) list;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : networks) -> ()

let yojson_of_networks =
  (function
   | {
       delete_protection = v_delete_protection;
       expose_routes_to_vswitch = v_expose_routes_to_vswitch;
       id = v_id;
       ip_range = v_ip_range;
       labels = v_labels;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_ip_range in
         ("ip_range", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_expose_routes_to_vswitch
         in
         ("expose_routes_to_vswitch", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_delete_protection
         in
         ("delete_protection", arg) :: bnds
       in
       `Assoc bnds
    : networks -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_networks

[@@@deriving.end]

type hcloud_networks = {
  id : string prop option; [@option]
  with_selector : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_networks) -> ()

let yojson_of_hcloud_networks =
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
    : hcloud_networks -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_networks

[@@@deriving.end]

let hcloud_networks ?id ?with_selector () : hcloud_networks =
  { id; with_selector }

type t = {
  tf_name : string;
  id : string prop;
  networks : networks list prop;
  with_selector : string prop;
}

let make ?id ?with_selector __id =
  let __type = "hcloud_networks" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       networks = Prop.computed __type __id "networks";
       with_selector = Prop.computed __type __id "with_selector";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_networks
        (hcloud_networks ?id ?with_selector ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?with_selector __id =
  let (r : _ Tf_core.resource) = make ?id ?with_selector __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

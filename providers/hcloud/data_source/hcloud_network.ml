(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_network = {
  id : float prop option; [@option]
  ip_range : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  most_recent : bool prop option; [@option]
  name : string prop option; [@option]
  with_selector : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_network) -> ()

let yojson_of_hcloud_network =
  (function
   | {
       id = v_id;
       ip_range = v_ip_range;
       labels = v_labels;
       most_recent = v_most_recent;
       name = v_name;
       with_selector = v_with_selector;
     } ->
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_most_recent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "most_recent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
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
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_range", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : hcloud_network -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_network

[@@@deriving.end]

let hcloud_network ?id ?ip_range ?labels ?most_recent ?name
    ?with_selector () : hcloud_network =
  { id; ip_range; labels; most_recent; name; with_selector }

type t = {
  tf_name : string;
  delete_protection : bool prop;
  expose_routes_to_vswitch : bool prop;
  id : float prop;
  ip_range : string prop;
  labels : (string * string) list prop;
  most_recent : bool prop;
  name : string prop;
  with_selector : string prop;
}

let make ?id ?ip_range ?labels ?most_recent ?name ?with_selector __id
    =
  let __type = "hcloud_network" in
  let __attrs =
    ({
       tf_name = __id;
       delete_protection =
         Prop.computed __type __id "delete_protection";
       expose_routes_to_vswitch =
         Prop.computed __type __id "expose_routes_to_vswitch";
       id = Prop.computed __type __id "id";
       ip_range = Prop.computed __type __id "ip_range";
       labels = Prop.computed __type __id "labels";
       most_recent = Prop.computed __type __id "most_recent";
       name = Prop.computed __type __id "name";
       with_selector = Prop.computed __type __id "with_selector";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_network
        (hcloud_network ?id ?ip_range ?labels ?most_recent ?name
           ?with_selector ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?ip_range ?labels ?most_recent ?name
    ?with_selector __id =
  let (r : _ Tf_core.resource) =
    make ?id ?ip_range ?labels ?most_recent ?name ?with_selector __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

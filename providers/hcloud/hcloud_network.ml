(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_network = {
  delete_protection : bool prop option; [@option]
  expose_routes_to_vswitch : bool prop option; [@option]
  id : string prop option; [@option]
  ip_range : string prop;
  labels : (string * string prop) list option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_network) -> ()

let yojson_of_hcloud_network =
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
         let arg = yojson_of_prop yojson_of_string v_ip_range in
         ("ip_range", arg) :: bnds
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
         match v_expose_routes_to_vswitch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "expose_routes_to_vswitch", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_protection", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : hcloud_network -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_network

[@@@deriving.end]

let hcloud_network ?delete_protection ?expose_routes_to_vswitch ?id
    ?labels ~ip_range ~name () : hcloud_network =
  {
    delete_protection;
    expose_routes_to_vswitch;
    id;
    ip_range;
    labels;
    name;
  }

type t = {
  delete_protection : bool prop;
  expose_routes_to_vswitch : bool prop;
  id : string prop;
  ip_range : string prop;
  labels : (string * string) list prop;
  name : string prop;
}

let make ?delete_protection ?expose_routes_to_vswitch ?id ?labels
    ~ip_range ~name __id =
  let __type = "hcloud_network" in
  let __attrs =
    ({
       delete_protection =
         Prop.computed __type __id "delete_protection";
       expose_routes_to_vswitch =
         Prop.computed __type __id "expose_routes_to_vswitch";
       id = Prop.computed __type __id "id";
       ip_range = Prop.computed __type __id "ip_range";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_network
        (hcloud_network ?delete_protection ?expose_routes_to_vswitch
           ?id ?labels ~ip_range ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?delete_protection ?expose_routes_to_vswitch
    ?id ?labels ~ip_range ~name __id =
  let (r : _ Tf_core.resource) =
    make ?delete_protection ?expose_routes_to_vswitch ?id ?labels
      ~ip_range ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

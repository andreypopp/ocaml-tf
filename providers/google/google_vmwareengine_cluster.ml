(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type node_type_configs = {
  custom_core_count : float prop option; [@option]
  node_count : float prop;
  node_type_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_type_configs) -> ()

let yojson_of_node_type_configs =
  (function
   | {
       custom_core_count = v_custom_core_count;
       node_count = v_node_count;
       node_type_id = v_node_type_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_node_type_id in
         ("node_type_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_node_count in
         ("node_count", arg) :: bnds
       in
       let bnds =
         match v_custom_core_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "custom_core_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : node_type_configs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_type_configs

[@@@deriving.end]

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

type google_vmwareengine_cluster = {
  id : string prop option; [@option]
  name : string prop;
  parent : string prop;
  node_type_configs : node_type_configs list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_vmwareengine_cluster) -> ()

let yojson_of_google_vmwareengine_cluster =
  (function
   | {
       id = v_id;
       name = v_name;
       parent = v_parent;
       node_type_configs = v_node_type_configs;
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
         let arg =
           yojson_of_list yojson_of_node_type_configs
             v_node_type_configs
         in
         ("node_type_configs", arg) :: bnds
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
    : google_vmwareengine_cluster ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_vmwareengine_cluster

[@@@deriving.end]

let node_type_configs ?custom_core_count ~node_count ~node_type_id ()
    : node_type_configs =
  { custom_core_count; node_count; node_type_id }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_vmwareengine_cluster ?id ?timeouts ~name ~parent
    ~node_type_configs () : google_vmwareengine_cluster =
  { id; name; parent; node_type_configs; timeouts }

type t = {
  id : string prop;
  management : bool prop;
  name : string prop;
  parent : string prop;
  state : string prop;
  uid : string prop;
}

let make ?id ?timeouts ~name ~parent ~node_type_configs __id =
  let __type = "google_vmwareengine_cluster" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       management = Prop.computed __type __id "management";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       state = Prop.computed __type __id "state";
       uid = Prop.computed __type __id "uid";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_vmwareengine_cluster
        (google_vmwareengine_cluster ?id ?timeouts ~name ~parent
           ~node_type_configs ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~parent
    ~node_type_configs __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~parent ~node_type_configs __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

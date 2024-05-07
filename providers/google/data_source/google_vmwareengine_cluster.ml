(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type node_type_configs = {
  custom_core_count : float prop;
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
         let arg =
           yojson_of_prop yojson_of_float v_custom_core_count
         in
         ("custom_core_count", arg) :: bnds
       in
       `Assoc bnds
    : node_type_configs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_type_configs

[@@@deriving.end]

type google_vmwareengine_cluster = {
  id : string prop option; [@option]
  name : string prop;
  parent : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_vmwareengine_cluster) -> ()

let yojson_of_google_vmwareengine_cluster =
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
    : google_vmwareengine_cluster ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_vmwareengine_cluster

[@@@deriving.end]

let google_vmwareengine_cluster ?id ~name ~parent () :
    google_vmwareengine_cluster =
  { id; name; parent }

type t = {
  tf_name : string;
  id : string prop;
  management : bool prop;
  name : string prop;
  node_type_configs : node_type_configs list prop;
  parent : string prop;
  state : string prop;
  uid : string prop;
}

let make ?id ~name ~parent __id =
  let __type = "google_vmwareengine_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       management = Prop.computed __type __id "management";
       name = Prop.computed __type __id "name";
       node_type_configs =
         Prop.computed __type __id "node_type_configs";
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
        (google_vmwareengine_cluster ?id ~name ~parent ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~parent __id =
  let (r : _ Tf_core.resource) = make ?id ~name ~parent __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

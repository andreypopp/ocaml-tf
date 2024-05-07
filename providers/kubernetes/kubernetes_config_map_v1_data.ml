(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata = {
  name : string prop;
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metadata) -> ()

let yojson_of_metadata =
  (function
   | { name = v_name; namespace = v_namespace } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_namespace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespace", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata

[@@@deriving.end]

type kubernetes_config_map_v1_data = {
  data : (string * string prop) list;
  field_manager : string prop option; [@option]
  force : bool prop option; [@option]
  id : string prop option; [@option]
  metadata : metadata list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes_config_map_v1_data) -> ()

let yojson_of_kubernetes_config_map_v1_data =
  (function
   | {
       data = v_data;
       field_manager = v_field_manager;
       force = v_force;
       id = v_id;
       metadata = v_metadata;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_metadata v_metadata in
         ("metadata", arg) :: bnds
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
         match v_force with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force", arg in
             bnd :: bnds
       in
       let bnds =
         match v_field_manager with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "field_manager", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_data
         in
         ("data", arg) :: bnds
       in
       `Assoc bnds
    : kubernetes_config_map_v1_data ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubernetes_config_map_v1_data

[@@@deriving.end]

let metadata ?namespace ~name () : metadata = { name; namespace }

let kubernetes_config_map_v1_data ?field_manager ?force ?id ~data
    ~metadata () : kubernetes_config_map_v1_data =
  { data; field_manager; force; id; metadata }

type t = {
  tf_name : string;
  data : (string * string) list prop;
  field_manager : string prop;
  force : bool prop;
  id : string prop;
}

let make ?field_manager ?force ?id ~data ~metadata __id =
  let __type = "kubernetes_config_map_v1_data" in
  let __attrs =
    ({
       tf_name = __id;
       data = Prop.computed __type __id "data";
       field_manager = Prop.computed __type __id "field_manager";
       force = Prop.computed __type __id "force";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_config_map_v1_data
        (kubernetes_config_map_v1_data ?field_manager ?force ?id
           ~data ~metadata ());
    attrs = __attrs;
  }

let register ?tf_module ?field_manager ?force ?id ~data ~metadata
    __id =
  let (r : _ Tf_core.resource) =
    make ?field_manager ?force ?id ~data ~metadata __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

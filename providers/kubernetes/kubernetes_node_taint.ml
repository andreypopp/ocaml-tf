(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata = { name : string prop } [@@deriving_inline yojson_of]

let _ = fun (_ : metadata) -> ()

let yojson_of_metadata =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata

[@@@deriving.end]

type taint = {
  effect : string prop;
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : taint) -> ()

let yojson_of_taint =
  (function
   | { effect = v_effect; key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_effect in
         ("effect", arg) :: bnds
       in
       `Assoc bnds
    : taint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_taint

[@@@deriving.end]

type kubernetes_node_taint = {
  field_manager : string prop option; [@option]
  force : bool prop option; [@option]
  id : string prop option; [@option]
  metadata : metadata list;
  taint : taint list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes_node_taint) -> ()

let yojson_of_kubernetes_node_taint =
  (function
   | {
       field_manager = v_field_manager;
       force = v_force;
       id = v_id;
       metadata = v_metadata;
       taint = v_taint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_taint v_taint in
         ("taint", arg) :: bnds
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
       `Assoc bnds
    : kubernetes_node_taint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubernetes_node_taint

[@@@deriving.end]

let metadata ~name () : metadata = { name }
let taint ~effect ~key ~value () : taint = { effect; key; value }

let kubernetes_node_taint ?field_manager ?force ?id ~metadata ~taint
    () : kubernetes_node_taint =
  { field_manager; force; id; metadata; taint }

type t = {
  field_manager : string prop;
  force : bool prop;
  id : string prop;
}

let make ?field_manager ?force ?id ~metadata ~taint __id =
  let __type = "kubernetes_node_taint" in
  let __attrs =
    ({
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
      yojson_of_kubernetes_node_taint
        (kubernetes_node_taint ?field_manager ?force ?id ~metadata
           ~taint ());
    attrs = __attrs;
  }

let register ?tf_module ?field_manager ?force ?id ~metadata ~taint
    __id =
  let (r : _ Tf_core.resource) =
    make ?field_manager ?force ?id ~metadata ~taint __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

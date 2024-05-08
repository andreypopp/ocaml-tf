(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type spec__listener__port_mapping = {
  port : float prop;
  protocol : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener__port_mapping) -> ()

let yojson_of_spec__listener__port_mapping =
  (function
   | { port = v_port; protocol = v_protocol } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       `Assoc bnds
    : spec__listener__port_mapping ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener__port_mapping

[@@@deriving.end]

type spec__listener = {
  port_mapping : spec__listener__port_mapping list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__listener) -> ()

let yojson_of_spec__listener =
  (function
   | { port_mapping = v_port_mapping } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_port_mapping then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__listener__port_mapping)
               v_port_mapping
           in
           let bnd = "port_mapping", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__listener -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__listener

[@@@deriving.end]

type spec = {
  listener : spec__listener list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec) -> ()

let yojson_of_spec =
  (function
   | { listener = v_listener } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_listener then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__listener) v_listener
           in
           let bnd = "listener", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec

[@@@deriving.end]

type aws_appmesh_virtual_router = {
  id : string prop option; [@option]
  mesh_name : string prop;
  mesh_owner : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appmesh_virtual_router) -> ()

let yojson_of_aws_appmesh_virtual_router =
  (function
   | {
       id = v_id;
       mesh_name = v_mesh_name;
       mesh_owner = v_mesh_owner;
       name = v_name;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
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
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_mesh_owner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mesh_owner", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mesh_name in
         ("mesh_name", arg) :: bnds
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
    : aws_appmesh_virtual_router -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appmesh_virtual_router

[@@@deriving.end]

let aws_appmesh_virtual_router ?id ?mesh_owner ?tags ~mesh_name ~name
    () : aws_appmesh_virtual_router =
  { id; mesh_name; mesh_owner; name; tags }

type t = {
  tf_name : string;
  arn : string prop;
  created_date : string prop;
  id : string prop;
  last_updated_date : string prop;
  mesh_name : string prop;
  mesh_owner : string prop;
  name : string prop;
  resource_owner : string prop;
  spec : spec list prop;
  tags : (string * string) list prop;
}

let make ?id ?mesh_owner ?tags ~mesh_name ~name __id =
  let __type = "aws_appmesh_virtual_router" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       created_date = Prop.computed __type __id "created_date";
       id = Prop.computed __type __id "id";
       last_updated_date =
         Prop.computed __type __id "last_updated_date";
       mesh_name = Prop.computed __type __id "mesh_name";
       mesh_owner = Prop.computed __type __id "mesh_owner";
       name = Prop.computed __type __id "name";
       resource_owner = Prop.computed __type __id "resource_owner";
       spec = Prop.computed __type __id "spec";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appmesh_virtual_router
        (aws_appmesh_virtual_router ?id ?mesh_owner ?tags ~mesh_name
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?mesh_owner ?tags ~mesh_name ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?mesh_owner ?tags ~mesh_name ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

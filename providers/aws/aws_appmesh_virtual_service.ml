(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type spec__provider__virtual_node = {
  virtual_node_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__provider__virtual_node) -> ()

let yojson_of_spec__provider__virtual_node =
  (function
   | { virtual_node_name = v_virtual_node_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_node_name
         in
         ("virtual_node_name", arg) :: bnds
       in
       `Assoc bnds
    : spec__provider__virtual_node ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__provider__virtual_node

[@@@deriving.end]

type spec__provider__virtual_router = {
  virtual_router_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__provider__virtual_router) -> ()

let yojson_of_spec__provider__virtual_router =
  (function
   | { virtual_router_name = v_virtual_router_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_router_name
         in
         ("virtual_router_name", arg) :: bnds
       in
       `Assoc bnds
    : spec__provider__virtual_router ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__provider__virtual_router

[@@@deriving.end]

type spec__provider = {
  virtual_node : spec__provider__virtual_node list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  virtual_router : spec__provider__virtual_router list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__provider) -> ()

let yojson_of_spec__provider =
  (function
   | {
       virtual_node = v_virtual_node;
       virtual_router = v_virtual_router;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_virtual_router then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__provider__virtual_router)
               v_virtual_router
           in
           let bnd = "virtual_router", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_virtual_node then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__provider__virtual_node)
               v_virtual_node
           in
           let bnd = "virtual_node", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__provider -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__provider

[@@@deriving.end]

type spec = {
  provider : spec__provider list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec) -> ()

let yojson_of_spec =
  (function
   | { provider = v_provider } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_provider then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__provider) v_provider
           in
           let bnd = "provider", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec

[@@@deriving.end]

type aws_appmesh_virtual_service = {
  id : string prop option; [@option]
  mesh_name : string prop;
  mesh_owner : string prop option; [@option]
  name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  spec : spec list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appmesh_virtual_service) -> ()

let yojson_of_aws_appmesh_virtual_service =
  (function
   | {
       id = v_id;
       mesh_name = v_mesh_name;
       mesh_owner = v_mesh_owner;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       spec = v_spec;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_spec then bnds
         else
           let arg = (yojson_of_list yojson_of_spec) v_spec in
           let bnd = "spec", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
    : aws_appmesh_virtual_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appmesh_virtual_service

[@@@deriving.end]

let spec__provider__virtual_node ~virtual_node_name () :
    spec__provider__virtual_node =
  { virtual_node_name }

let spec__provider__virtual_router ~virtual_router_name () :
    spec__provider__virtual_router =
  { virtual_router_name }

let spec__provider ?(virtual_node = []) ?(virtual_router = []) () :
    spec__provider =
  { virtual_node; virtual_router }

let spec ?(provider = []) () : spec = { provider }

let aws_appmesh_virtual_service ?id ?mesh_owner ?tags ?tags_all
    ~mesh_name ~name ~spec () : aws_appmesh_virtual_service =
  { id; mesh_name; mesh_owner; name; tags; tags_all; spec }

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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?id ?mesh_owner ?tags ?tags_all ~mesh_name ~name ~spec __id
    =
  let __type = "aws_appmesh_virtual_service" in
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
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appmesh_virtual_service
        (aws_appmesh_virtual_service ?id ?mesh_owner ?tags ?tags_all
           ~mesh_name ~name ~spec ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?mesh_owner ?tags ?tags_all ~mesh_name
    ~name ~spec __id =
  let (r : _ Tf_core.resource) =
    make ?id ?mesh_owner ?tags ?tags_all ~mesh_name ~name ~spec __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

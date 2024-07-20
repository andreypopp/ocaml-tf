(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type spec__service_discovery = { ip_preference : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__service_discovery) -> ()

let yojson_of_spec__service_discovery =
  (function
   | { ip_preference = v_ip_preference } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_preference in
         ("ip_preference", arg) :: bnds
       in
       `Assoc bnds
    : spec__service_discovery -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__service_discovery

[@@@deriving.end]

type spec__egress_filter = { type_ : string prop [@key "type"] }
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__egress_filter) -> ()

let yojson_of_spec__egress_filter =
  (function
   | { type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : spec__egress_filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__egress_filter

[@@@deriving.end]

type spec = {
  egress_filter : spec__egress_filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  service_discovery : spec__service_discovery list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec) -> ()

let yojson_of_spec =
  (function
   | {
       egress_filter = v_egress_filter;
       service_discovery = v_service_discovery;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_service_discovery then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__service_discovery)
               v_service_discovery
           in
           let bnd = "service_discovery", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_egress_filter then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__egress_filter)
               v_egress_filter
           in
           let bnd = "egress_filter", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec

[@@@deriving.end]

type aws_appmesh_mesh = {
  id : string prop option; [@option]
  mesh_owner : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appmesh_mesh) -> ()

let yojson_of_aws_appmesh_mesh =
  (function
   | {
       id = v_id;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_appmesh_mesh -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appmesh_mesh

[@@@deriving.end]

let aws_appmesh_mesh ?id ?mesh_owner ?tags ~name () :
    aws_appmesh_mesh =
  { id; mesh_owner; name; tags }

type t = {
  tf_name : string;
  arn : string prop;
  created_date : string prop;
  id : string prop;
  last_updated_date : string prop;
  mesh_owner : string prop;
  name : string prop;
  resource_owner : string prop;
  spec : spec list prop;
  tags : (string * string) list prop;
}

let make ?id ?mesh_owner ?tags ~name __id =
  let __type = "aws_appmesh_mesh" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       created_date = Prop.computed __type __id "created_date";
       id = Prop.computed __type __id "id";
       last_updated_date =
         Prop.computed __type __id "last_updated_date";
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
      yojson_of_aws_appmesh_mesh
        (aws_appmesh_mesh ?id ?mesh_owner ?tags ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?mesh_owner ?tags ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?mesh_owner ?tags ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

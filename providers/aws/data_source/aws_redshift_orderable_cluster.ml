(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_redshift_orderable_cluster = {
  cluster_type : string prop option; [@option]
  cluster_version : string prop option; [@option]
  id : string prop option; [@option]
  node_type : string prop option; [@option]
  preferred_node_types : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_redshift_orderable_cluster) -> ()

let yojson_of_aws_redshift_orderable_cluster =
  (function
   | {
       cluster_type = v_cluster_type;
       cluster_version = v_cluster_version;
       id = v_id;
       node_type = v_node_type;
       preferred_node_types = v_preferred_node_types;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_preferred_node_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "preferred_node_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_type", arg in
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
       let bnds =
         match v_cluster_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cluster_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_redshift_orderable_cluster ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_redshift_orderable_cluster

[@@@deriving.end]

let aws_redshift_orderable_cluster ?cluster_type ?cluster_version ?id
    ?node_type ?preferred_node_types () :
    aws_redshift_orderable_cluster =
  {
    cluster_type;
    cluster_version;
    id;
    node_type;
    preferred_node_types;
  }

type t = {
  availability_zones : string list prop;
  cluster_type : string prop;
  cluster_version : string prop;
  id : string prop;
  node_type : string prop;
  preferred_node_types : string list prop;
}

let make ?cluster_type ?cluster_version ?id ?node_type
    ?preferred_node_types __id =
  let __type = "aws_redshift_orderable_cluster" in
  let __attrs =
    ({
       availability_zones =
         Prop.computed __type __id "availability_zones";
       cluster_type = Prop.computed __type __id "cluster_type";
       cluster_version = Prop.computed __type __id "cluster_version";
       id = Prop.computed __type __id "id";
       node_type = Prop.computed __type __id "node_type";
       preferred_node_types =
         Prop.computed __type __id "preferred_node_types";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshift_orderable_cluster
        (aws_redshift_orderable_cluster ?cluster_type
           ?cluster_version ?id ?node_type ?preferred_node_types ());
    attrs = __attrs;
  }

let register ?tf_module ?cluster_type ?cluster_version ?id ?node_type
    ?preferred_node_types __id =
  let (r : _ Tf_core.resource) =
    make ?cluster_type ?cluster_version ?id ?node_type
      ?preferred_node_types __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

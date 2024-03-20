(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_eks_node_groups = {
  cluster_name : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_eks_node_groups) -> ()

let yojson_of_aws_eks_node_groups =
  (function
   | { cluster_name = v_cluster_name; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_cluster_name in
         ("cluster_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_eks_node_groups -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_eks_node_groups

[@@@deriving.end]

let aws_eks_node_groups ?id ~cluster_name () : aws_eks_node_groups =
  { cluster_name; id }

type t = {
  cluster_name : string prop;
  id : string prop;
  names : string list prop;
}

let make ?id ~cluster_name __id =
  let __type = "aws_eks_node_groups" in
  let __attrs =
    ({
       cluster_name = Prop.computed __type __id "cluster_name";
       id = Prop.computed __type __id "id";
       names = Prop.computed __type __id "names";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_eks_node_groups
        (aws_eks_node_groups ?id ~cluster_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~cluster_name __id =
  let (r : _ Tf_core.resource) = make ?id ~cluster_name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

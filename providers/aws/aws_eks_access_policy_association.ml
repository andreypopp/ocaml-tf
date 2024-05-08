(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type access_scope = {
  namespaces : string prop list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_scope) -> ()

let yojson_of_access_scope =
  (function
   | { namespaces = v_namespaces; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_namespaces with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "namespaces", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : access_scope -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_scope

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type aws_eks_access_policy_association = {
  cluster_name : string prop;
  id : string prop option; [@option]
  policy_arn : string prop;
  principal_arn : string prop;
  access_scope : access_scope list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_eks_access_policy_association) -> ()

let yojson_of_aws_eks_access_policy_association =
  (function
   | {
       cluster_name = v_cluster_name;
       id = v_id;
       policy_arn = v_policy_arn;
       principal_arn = v_principal_arn;
       access_scope = v_access_scope;
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
         if Stdlib.( = ) [] v_access_scope then bnds
         else
           let arg =
             (yojson_of_list yojson_of_access_scope) v_access_scope
           in
           let bnd = "access_scope", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal_arn in
         ("principal_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy_arn in
         ("policy_arn", arg) :: bnds
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
    : aws_eks_access_policy_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_eks_access_policy_association

[@@@deriving.end]

let access_scope ?namespaces ~type_ () : access_scope =
  { namespaces; type_ }

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_eks_access_policy_association ?id ?timeouts ~cluster_name
    ~policy_arn ~principal_arn ~access_scope () :
    aws_eks_access_policy_association =
  {
    cluster_name;
    id;
    policy_arn;
    principal_arn;
    access_scope;
    timeouts;
  }

type t = {
  tf_name : string;
  associated_at : string prop;
  cluster_name : string prop;
  id : string prop;
  modified_at : string prop;
  policy_arn : string prop;
  principal_arn : string prop;
}

let make ?id ?timeouts ~cluster_name ~policy_arn ~principal_arn
    ~access_scope __id =
  let __type = "aws_eks_access_policy_association" in
  let __attrs =
    ({
       tf_name = __id;
       associated_at = Prop.computed __type __id "associated_at";
       cluster_name = Prop.computed __type __id "cluster_name";
       id = Prop.computed __type __id "id";
       modified_at = Prop.computed __type __id "modified_at";
       policy_arn = Prop.computed __type __id "policy_arn";
       principal_arn = Prop.computed __type __id "principal_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_eks_access_policy_association
        (aws_eks_access_policy_association ?id ?timeouts
           ~cluster_name ~policy_arn ~principal_arn ~access_scope ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~cluster_name ~policy_arn
    ~principal_arn ~access_scope __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~cluster_name ~policy_arn ~principal_arn
      ~access_scope __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_eks_cluster_auth = {
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_eks_cluster_auth) -> ()

let yojson_of_aws_eks_cluster_auth =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : aws_eks_cluster_auth -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_eks_cluster_auth

[@@@deriving.end]

let aws_eks_cluster_auth ?id ~name () : aws_eks_cluster_auth =
  { id; name }

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  token : string prop;
}

let make ?id ~name __id =
  let __type = "aws_eks_cluster_auth" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       token = Prop.computed __type __id "token";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_eks_cluster_auth
        (aws_eks_cluster_auth ?id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

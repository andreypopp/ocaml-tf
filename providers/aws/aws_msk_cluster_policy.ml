(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_msk_cluster_policy = {
  cluster_arn : string prop;
  id : string prop option; [@option]
  policy : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_msk_cluster_policy) -> ()

let yojson_of_aws_msk_cluster_policy =
  (function
   | { cluster_arn = v_cluster_arn; id = v_id; policy = v_policy } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy in
         ("policy", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_cluster_arn in
         ("cluster_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_msk_cluster_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_msk_cluster_policy

[@@@deriving.end]

let aws_msk_cluster_policy ?id ~cluster_arn ~policy () :
    aws_msk_cluster_policy =
  { cluster_arn; id; policy }

type t = {
  tf_name : string;
  cluster_arn : string prop;
  current_version : string prop;
  id : string prop;
  policy : string prop;
}

let make ?id ~cluster_arn ~policy __id =
  let __type = "aws_msk_cluster_policy" in
  let __attrs =
    ({
       tf_name = __id;
       cluster_arn = Prop.computed __type __id "cluster_arn";
       current_version = Prop.computed __type __id "current_version";
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_msk_cluster_policy
        (aws_msk_cluster_policy ?id ~cluster_arn ~policy ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~cluster_arn ~policy __id =
  let (r : _ Tf_core.resource) =
    make ?id ~cluster_arn ~policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

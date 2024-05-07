(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_role_policy = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  policy : string prop;
  role : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_role_policy) -> ()

let yojson_of_aws_iam_role_policy =
  (function
   | {
       id = v_id;
       name = v_name;
       name_prefix = v_name_prefix;
       policy = v_policy;
       role = v_role;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role in
         ("role", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy in
         ("policy", arg) :: bnds
       in
       let bnds =
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
    : aws_iam_role_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_role_policy

[@@@deriving.end]

let aws_iam_role_policy ?id ?name ?name_prefix ~policy ~role () :
    aws_iam_role_policy =
  { id; name; name_prefix; policy; role }

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  policy : string prop;
  role : string prop;
}

let make ?id ?name ?name_prefix ~policy ~role __id =
  let __type = "aws_iam_role_policy" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       policy = Prop.computed __type __id "policy";
       role = Prop.computed __type __id "role";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_role_policy
        (aws_iam_role_policy ?id ?name ?name_prefix ~policy ~role ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?name_prefix ~policy ~role __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?name_prefix ~policy ~role __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

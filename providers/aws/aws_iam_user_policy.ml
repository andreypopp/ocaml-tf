(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_user_policy = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  policy : string prop;
  user : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_user_policy) -> ()

let yojson_of_aws_iam_user_policy =
  (function
   | {
       id = v_id;
       name = v_name;
       name_prefix = v_name_prefix;
       policy = v_policy;
       user = v_user;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user in
         ("user", arg) :: bnds
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
    : aws_iam_user_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_user_policy

[@@@deriving.end]

let aws_iam_user_policy ?id ?name ?name_prefix ~policy ~user () :
    aws_iam_user_policy =
  { id; name; name_prefix; policy; user }

type t = {
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  policy : string prop;
  user : string prop;
}

let make ?id ?name ?name_prefix ~policy ~user __id =
  let __type = "aws_iam_user_policy" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       policy = Prop.computed __type __id "policy";
       user = Prop.computed __type __id "user";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_user_policy
        (aws_iam_user_policy ?id ?name ?name_prefix ~policy ~user ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?name_prefix ~policy ~user __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?name_prefix ~policy ~user __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_policy = {
  arn : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
  path_prefix : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_policy) -> ()

let yojson_of_aws_iam_policy =
  (function
   | {
       arn = v_arn;
       id = v_id;
       name = v_name;
       path_prefix = v_path_prefix;
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
         match v_path_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path_prefix", arg in
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
       let bnds =
         match v_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_iam_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_policy

[@@@deriving.end]

let aws_iam_policy ?arn ?id ?name ?path_prefix ?tags () :
    aws_iam_policy =
  { arn; id; name; path_prefix; tags }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  path : string prop;
  path_prefix : string prop;
  policy : string prop;
  policy_id : string prop;
  tags : (string * string) list prop;
}

let make ?arn ?id ?name ?path_prefix ?tags __id =
  let __type = "aws_iam_policy" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       path = Prop.computed __type __id "path";
       path_prefix = Prop.computed __type __id "path_prefix";
       policy = Prop.computed __type __id "policy";
       policy_id = Prop.computed __type __id "policy_id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_policy
        (aws_iam_policy ?arn ?id ?name ?path_prefix ?tags ());
    attrs = __attrs;
  }

let register ?tf_module ?arn ?id ?name ?path_prefix ?tags __id =
  let (r : _ Tf_core.resource) =
    make ?arn ?id ?name ?path_prefix ?tags __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

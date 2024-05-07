(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_users = {
  id : string prop option; [@option]
  name_regex : string prop option; [@option]
  path_prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_users) -> ()

let yojson_of_aws_iam_users =
  (function
   | {
       id = v_id;
       name_regex = v_name_regex;
       path_prefix = v_path_prefix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_name_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_regex", arg in
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
    : aws_iam_users -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_users

[@@@deriving.end]

let aws_iam_users ?id ?name_regex ?path_prefix () : aws_iam_users =
  { id; name_regex; path_prefix }

type t = {
  tf_name : string;
  arns : string list prop;
  id : string prop;
  name_regex : string prop;
  names : string list prop;
  path_prefix : string prop;
}

let make ?id ?name_regex ?path_prefix __id =
  let __type = "aws_iam_users" in
  let __attrs =
    ({
       tf_name = __id;
       arns = Prop.computed __type __id "arns";
       id = Prop.computed __type __id "id";
       name_regex = Prop.computed __type __id "name_regex";
       names = Prop.computed __type __id "names";
       path_prefix = Prop.computed __type __id "path_prefix";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_users
        (aws_iam_users ?id ?name_regex ?path_prefix ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name_regex ?path_prefix __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name_regex ?path_prefix __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_instance_profile = {
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_instance_profile) -> ()

let yojson_of_aws_iam_instance_profile =
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
    : aws_iam_instance_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_instance_profile

[@@@deriving.end]

let aws_iam_instance_profile ?id ~name () : aws_iam_instance_profile
    =
  { id; name }

type t = {
  tf_name : string;
  arn : string prop;
  create_date : string prop;
  id : string prop;
  name : string prop;
  path : string prop;
  role_arn : string prop;
  role_id : string prop;
  role_name : string prop;
}

let make ?id ~name __id =
  let __type = "aws_iam_instance_profile" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       create_date = Prop.computed __type __id "create_date";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       path = Prop.computed __type __id "path";
       role_arn = Prop.computed __type __id "role_arn";
       role_id = Prop.computed __type __id "role_id";
       role_name = Prop.computed __type __id "role_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_instance_profile
        (aws_iam_instance_profile ?id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

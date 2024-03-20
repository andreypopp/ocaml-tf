(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_instance_profiles = {
  id : string prop option; [@option]
  role_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_instance_profiles) -> ()

let yojson_of_aws_iam_instance_profiles =
  (function
   | { id = v_id; role_name = v_role_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_name in
         ("role_name", arg) :: bnds
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
    : aws_iam_instance_profiles -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_instance_profiles

[@@@deriving.end]

let aws_iam_instance_profiles ?id ~role_name () :
    aws_iam_instance_profiles =
  { id; role_name }

type t = {
  arns : string list prop;
  id : string prop;
  names : string list prop;
  paths : string list prop;
  role_name : string prop;
}

let make ?id ~role_name __id =
  let __type = "aws_iam_instance_profiles" in
  let __attrs =
    ({
       arns = Prop.computed __type __id "arns";
       id = Prop.computed __type __id "id";
       names = Prop.computed __type __id "names";
       paths = Prop.computed __type __id "paths";
       role_name = Prop.computed __type __id "role_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_instance_profiles
        (aws_iam_instance_profiles ?id ~role_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~role_name __id =
  let (r : _ Tf_core.resource) = make ?id ~role_name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

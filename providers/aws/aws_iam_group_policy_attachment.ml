(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_group_policy_attachment = {
  group : string prop;
  id : string prop option; [@option]
  policy_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_group_policy_attachment) -> ()

let yojson_of_aws_iam_group_policy_attachment =
  (function
   | { group = v_group; id = v_id; policy_arn = v_policy_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_group in
         ("group", arg) :: bnds
       in
       `Assoc bnds
    : aws_iam_group_policy_attachment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_group_policy_attachment

[@@@deriving.end]

let aws_iam_group_policy_attachment ?id ~group ~policy_arn () :
    aws_iam_group_policy_attachment =
  { group; id; policy_arn }

type t = {
  tf_name : string;
  group : string prop;
  id : string prop;
  policy_arn : string prop;
}

let make ?id ~group ~policy_arn __id =
  let __type = "aws_iam_group_policy_attachment" in
  let __attrs =
    ({
       tf_name = __id;
       group = Prop.computed __type __id "group";
       id = Prop.computed __type __id "id";
       policy_arn = Prop.computed __type __id "policy_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_group_policy_attachment
        (aws_iam_group_policy_attachment ?id ~group ~policy_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~group ~policy_arn __id =
  let (r : _ Tf_core.resource) = make ?id ~group ~policy_arn __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_kinesis_resource_policy = {
  policy : string prop;
  resource_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_kinesis_resource_policy) -> ()

let yojson_of_aws_kinesis_resource_policy =
  (function
   | { policy = v_policy; resource_arn = v_resource_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_arn in
         ("resource_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy in
         ("policy", arg) :: bnds
       in
       `Assoc bnds
    : aws_kinesis_resource_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_kinesis_resource_policy

[@@@deriving.end]

let aws_kinesis_resource_policy ~policy ~resource_arn () :
    aws_kinesis_resource_policy =
  { policy; resource_arn }

type t = {
  tf_name : string;
  id : string prop;
  policy : string prop;
  resource_arn : string prop;
}

let make ~policy ~resource_arn __id =
  let __type = "aws_kinesis_resource_policy" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
       resource_arn = Prop.computed __type __id "resource_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kinesis_resource_policy
        (aws_kinesis_resource_policy ~policy ~resource_arn ());
    attrs = __attrs;
  }

let register ?tf_module ~policy ~resource_arn __id =
  let (r : _ Tf_core.resource) = make ~policy ~resource_arn __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

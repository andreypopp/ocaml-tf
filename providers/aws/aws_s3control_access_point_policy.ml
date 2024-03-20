(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_s3control_access_point_policy = {
  access_point_arn : string prop;
  id : string prop option; [@option]
  policy : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3control_access_point_policy) -> ()

let yojson_of_aws_s3control_access_point_policy =
  (function
   | {
       access_point_arn = v_access_point_arn;
       id = v_id;
       policy = v_policy;
     } ->
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
         let arg =
           yojson_of_prop yojson_of_string v_access_point_arn
         in
         ("access_point_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_s3control_access_point_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3control_access_point_policy

[@@@deriving.end]

let aws_s3control_access_point_policy ?id ~access_point_arn ~policy
    () : aws_s3control_access_point_policy =
  { access_point_arn; id; policy }

type t = {
  access_point_arn : string prop;
  has_public_access_policy : bool prop;
  id : string prop;
  policy : string prop;
}

let make ?id ~access_point_arn ~policy __id =
  let __type = "aws_s3control_access_point_policy" in
  let __attrs =
    ({
       access_point_arn =
         Prop.computed __type __id "access_point_arn";
       has_public_access_policy =
         Prop.computed __type __id "has_public_access_policy";
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3control_access_point_policy
        (aws_s3control_access_point_policy ?id ~access_point_arn
           ~policy ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~access_point_arn ~policy __id =
  let (r : _ Tf_core.resource) =
    make ?id ~access_point_arn ~policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

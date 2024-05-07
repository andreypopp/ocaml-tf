(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_s3control_object_lambda_access_point_policy = {
  account_id : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  policy : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_s3control_object_lambda_access_point_policy) -> ()

let yojson_of_aws_s3control_object_lambda_access_point_policy =
  (function
   | {
       account_id = v_account_id;
       id = v_id;
       name = v_name;
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
       let bnds =
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_s3control_object_lambda_access_point_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3control_object_lambda_access_point_policy

[@@@deriving.end]

let aws_s3control_object_lambda_access_point_policy ?account_id ?id
    ~name ~policy () :
    aws_s3control_object_lambda_access_point_policy =
  { account_id; id; name; policy }

type t = {
  tf_name : string;
  account_id : string prop;
  has_public_access_policy : bool prop;
  id : string prop;
  name : string prop;
  policy : string prop;
}

let make ?account_id ?id ~name ~policy __id =
  let __type = "aws_s3control_object_lambda_access_point_policy" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       has_public_access_policy =
         Prop.computed __type __id "has_public_access_policy";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       policy = Prop.computed __type __id "policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3control_object_lambda_access_point_policy
        (aws_s3control_object_lambda_access_point_policy ?account_id
           ?id ~name ~policy ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?id ~name ~policy __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?id ~name ~policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

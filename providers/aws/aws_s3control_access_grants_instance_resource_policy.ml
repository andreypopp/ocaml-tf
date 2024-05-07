(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_s3control_access_grants_instance_resource_policy = {
  account_id : string prop option; [@option]
  policy : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_s3control_access_grants_instance_resource_policy) -> ()

let yojson_of_aws_s3control_access_grants_instance_resource_policy =
  (function
   | { account_id = v_account_id; policy = v_policy } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy in
         ("policy", arg) :: bnds
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
    : aws_s3control_access_grants_instance_resource_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_aws_s3control_access_grants_instance_resource_policy

[@@@deriving.end]

let aws_s3control_access_grants_instance_resource_policy ?account_id
    ~policy () : aws_s3control_access_grants_instance_resource_policy
    =
  { account_id; policy }

type t = {
  tf_name : string;
  account_id : string prop;
  id : string prop;
  policy : string prop;
}

let make ?account_id ~policy __id =
  let __type =
    "aws_s3control_access_grants_instance_resource_policy"
  in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3control_access_grants_instance_resource_policy
        (aws_s3control_access_grants_instance_resource_policy
           ?account_id ~policy ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ~policy __id =
  let (r : _ Tf_core.resource) = make ?account_id ~policy __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_dynamodb_resource_policy = {
  confirm_remove_self_resource_access : bool prop option; [@option]
  policy : string prop;
  resource_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dynamodb_resource_policy) -> ()

let yojson_of_aws_dynamodb_resource_policy =
  (function
   | {
       confirm_remove_self_resource_access =
         v_confirm_remove_self_resource_access;
       policy = v_policy;
       resource_arn = v_resource_arn;
     } ->
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
       let bnds =
         match v_confirm_remove_self_resource_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "confirm_remove_self_resource_access", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_dynamodb_resource_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dynamodb_resource_policy

[@@@deriving.end]

let aws_dynamodb_resource_policy ?confirm_remove_self_resource_access
    ~policy ~resource_arn () : aws_dynamodb_resource_policy =
  { confirm_remove_self_resource_access; policy; resource_arn }

type t = {
  tf_name : string;
  confirm_remove_self_resource_access : bool prop;
  id : string prop;
  policy : string prop;
  resource_arn : string prop;
  revision_id : string prop;
}

let make ?confirm_remove_self_resource_access ~policy ~resource_arn
    __id =
  let __type = "aws_dynamodb_resource_policy" in
  let __attrs =
    ({
       tf_name = __id;
       confirm_remove_self_resource_access =
         Prop.computed __type __id
           "confirm_remove_self_resource_access";
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
       resource_arn = Prop.computed __type __id "resource_arn";
       revision_id = Prop.computed __type __id "revision_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dynamodb_resource_policy
        (aws_dynamodb_resource_policy
           ?confirm_remove_self_resource_access ~policy ~resource_arn
           ());
    attrs = __attrs;
  }

let register ?tf_module ?confirm_remove_self_resource_access ~policy
    ~resource_arn __id =
  let (r : _ Tf_core.resource) =
    make ?confirm_remove_self_resource_access ~policy ~resource_arn
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

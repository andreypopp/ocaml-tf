(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudwatch_log_resource_policy = {
  id : string prop option; [@option]
  policy_document : string prop;
  policy_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudwatch_log_resource_policy) -> ()

let yojson_of_aws_cloudwatch_log_resource_policy =
  (function
   | {
       id = v_id;
       policy_document = v_policy_document;
       policy_name = v_policy_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy_name in
         ("policy_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_policy_document
         in
         ("policy_document", arg) :: bnds
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
    : aws_cloudwatch_log_resource_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudwatch_log_resource_policy

[@@@deriving.end]

let aws_cloudwatch_log_resource_policy ?id ~policy_document
    ~policy_name () : aws_cloudwatch_log_resource_policy =
  { id; policy_document; policy_name }

type t = {
  id : string prop;
  policy_document : string prop;
  policy_name : string prop;
}

let make ?id ~policy_document ~policy_name __id =
  let __type = "aws_cloudwatch_log_resource_policy" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       policy_document = Prop.computed __type __id "policy_document";
       policy_name = Prop.computed __type __id "policy_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_log_resource_policy
        (aws_cloudwatch_log_resource_policy ?id ~policy_document
           ~policy_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~policy_document ~policy_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~policy_document ~policy_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudwatch_log_account_policy = {
  id : string prop option; [@option]
  policy_document : string prop;
  policy_name : string prop;
  policy_type : string prop;
  scope : string prop option; [@option]
  selection_criteria : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudwatch_log_account_policy) -> ()

let yojson_of_aws_cloudwatch_log_account_policy =
  (function
   | {
       id = v_id;
       policy_document = v_policy_document;
       policy_name = v_policy_name;
       policy_type = v_policy_type;
       scope = v_scope;
       selection_criteria = v_selection_criteria;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_selection_criteria with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "selection_criteria", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scope", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy_type in
         ("policy_type", arg) :: bnds
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
    : aws_cloudwatch_log_account_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudwatch_log_account_policy

[@@@deriving.end]

let aws_cloudwatch_log_account_policy ?id ?scope ?selection_criteria
    ~policy_document ~policy_name ~policy_type () :
    aws_cloudwatch_log_account_policy =
  {
    id;
    policy_document;
    policy_name;
    policy_type;
    scope;
    selection_criteria;
  }

type t = {
  tf_name : string;
  id : string prop;
  policy_document : string prop;
  policy_name : string prop;
  policy_type : string prop;
  scope : string prop;
  selection_criteria : string prop;
}

let make ?id ?scope ?selection_criteria ~policy_document ~policy_name
    ~policy_type __id =
  let __type = "aws_cloudwatch_log_account_policy" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       policy_document = Prop.computed __type __id "policy_document";
       policy_name = Prop.computed __type __id "policy_name";
       policy_type = Prop.computed __type __id "policy_type";
       scope = Prop.computed __type __id "scope";
       selection_criteria =
         Prop.computed __type __id "selection_criteria";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_log_account_policy
        (aws_cloudwatch_log_account_policy ?id ?scope
           ?selection_criteria ~policy_document ~policy_name
           ~policy_type ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?scope ?selection_criteria
    ~policy_document ~policy_name ~policy_type __id =
  let (r : _ Tf_core.resource) =
    make ?id ?scope ?selection_criteria ~policy_document ~policy_name
      ~policy_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

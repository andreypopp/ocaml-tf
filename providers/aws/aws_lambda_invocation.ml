(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lambda_invocation = {
  function_name : string prop;
  id : string prop option; [@option]
  input : string prop;
  lifecycle_scope : string prop option; [@option]
  qualifier : string prop option; [@option]
  terraform_key : string prop option; [@option]
  triggers : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lambda_invocation) -> ()

let yojson_of_aws_lambda_invocation =
  (function
   | {
       function_name = v_function_name;
       id = v_id;
       input = v_input;
       lifecycle_scope = v_lifecycle_scope;
       qualifier = v_qualifier;
       terraform_key = v_terraform_key;
       triggers = v_triggers;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_triggers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "triggers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_terraform_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "terraform_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_qualifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "qualifier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lifecycle_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lifecycle_scope", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_input in
         ("input", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_function_name in
         ("function_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_lambda_invocation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lambda_invocation

[@@@deriving.end]

let aws_lambda_invocation ?id ?lifecycle_scope ?qualifier
    ?terraform_key ?triggers ~function_name ~input () :
    aws_lambda_invocation =
  {
    function_name;
    id;
    input;
    lifecycle_scope;
    qualifier;
    terraform_key;
    triggers;
  }

type t = {
  function_name : string prop;
  id : string prop;
  input : string prop;
  lifecycle_scope : string prop;
  qualifier : string prop;
  result : string prop;
  terraform_key : string prop;
  triggers : (string * string) list prop;
}

let make ?id ?lifecycle_scope ?qualifier ?terraform_key ?triggers
    ~function_name ~input __id =
  let __type = "aws_lambda_invocation" in
  let __attrs =
    ({
       function_name = Prop.computed __type __id "function_name";
       id = Prop.computed __type __id "id";
       input = Prop.computed __type __id "input";
       lifecycle_scope = Prop.computed __type __id "lifecycle_scope";
       qualifier = Prop.computed __type __id "qualifier";
       result = Prop.computed __type __id "result";
       terraform_key = Prop.computed __type __id "terraform_key";
       triggers = Prop.computed __type __id "triggers";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lambda_invocation
        (aws_lambda_invocation ?id ?lifecycle_scope ?qualifier
           ?terraform_key ?triggers ~function_name ~input ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?lifecycle_scope ?qualifier
    ?terraform_key ?triggers ~function_name ~input __id =
  let (r : _ Tf_core.resource) =
    make ?id ?lifecycle_scope ?qualifier ?terraform_key ?triggers
      ~function_name ~input __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

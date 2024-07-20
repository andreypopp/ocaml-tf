(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lambda_runtime_management_config = {
  function_name : string prop;
  qualifier : string prop option; [@option]
  runtime_version_arn : string prop option; [@option]
  update_runtime_on : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lambda_runtime_management_config) -> ()

let yojson_of_aws_lambda_runtime_management_config =
  (function
   | {
       function_name = v_function_name;
       qualifier = v_qualifier;
       runtime_version_arn = v_runtime_version_arn;
       update_runtime_on = v_update_runtime_on;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update_runtime_on with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update_runtime_on", arg in
             bnd :: bnds
       in
       let bnds =
         match v_runtime_version_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "runtime_version_arn", arg in
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
         let arg = yojson_of_prop yojson_of_string v_function_name in
         ("function_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_lambda_runtime_management_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lambda_runtime_management_config

[@@@deriving.end]

let aws_lambda_runtime_management_config ?qualifier
    ?runtime_version_arn ?update_runtime_on ~function_name () :
    aws_lambda_runtime_management_config =
  {
    function_name;
    qualifier;
    runtime_version_arn;
    update_runtime_on;
  }

type t = {
  tf_name : string;
  function_arn : string prop;
  function_name : string prop;
  qualifier : string prop;
  runtime_version_arn : string prop;
  update_runtime_on : string prop;
}

let make ?qualifier ?runtime_version_arn ?update_runtime_on
    ~function_name __id =
  let __type = "aws_lambda_runtime_management_config" in
  let __attrs =
    ({
       tf_name = __id;
       function_arn = Prop.computed __type __id "function_arn";
       function_name = Prop.computed __type __id "function_name";
       qualifier = Prop.computed __type __id "qualifier";
       runtime_version_arn =
         Prop.computed __type __id "runtime_version_arn";
       update_runtime_on =
         Prop.computed __type __id "update_runtime_on";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lambda_runtime_management_config
        (aws_lambda_runtime_management_config ?qualifier
           ?runtime_version_arn ?update_runtime_on ~function_name ());
    attrs = __attrs;
  }

let register ?tf_module ?qualifier ?runtime_version_arn
    ?update_runtime_on ~function_name __id =
  let (r : _ Tf_core.resource) =
    make ?qualifier ?runtime_version_arn ?update_runtime_on
      ~function_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

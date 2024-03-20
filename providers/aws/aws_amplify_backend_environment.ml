(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_amplify_backend_environment = {
  app_id : string prop;
  deployment_artifacts : string prop option; [@option]
  environment_name : string prop;
  id : string prop option; [@option]
  stack_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_amplify_backend_environment) -> ()

let yojson_of_aws_amplify_backend_environment =
  (function
   | {
       app_id = v_app_id;
       deployment_artifacts = v_deployment_artifacts;
       environment_name = v_environment_name;
       id = v_id;
       stack_name = v_stack_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_stack_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "stack_name", arg in
             bnd :: bnds
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
           yojson_of_prop yojson_of_string v_environment_name
         in
         ("environment_name", arg) :: bnds
       in
       let bnds =
         match v_deployment_artifacts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deployment_artifacts", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_app_id in
         ("app_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_amplify_backend_environment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_amplify_backend_environment

[@@@deriving.end]

let aws_amplify_backend_environment ?deployment_artifacts ?id
    ?stack_name ~app_id ~environment_name () :
    aws_amplify_backend_environment =
  { app_id; deployment_artifacts; environment_name; id; stack_name }

type t = {
  app_id : string prop;
  arn : string prop;
  deployment_artifacts : string prop;
  environment_name : string prop;
  id : string prop;
  stack_name : string prop;
}

let make ?deployment_artifacts ?id ?stack_name ~app_id
    ~environment_name __id =
  let __type = "aws_amplify_backend_environment" in
  let __attrs =
    ({
       app_id = Prop.computed __type __id "app_id";
       arn = Prop.computed __type __id "arn";
       deployment_artifacts =
         Prop.computed __type __id "deployment_artifacts";
       environment_name =
         Prop.computed __type __id "environment_name";
       id = Prop.computed __type __id "id";
       stack_name = Prop.computed __type __id "stack_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_amplify_backend_environment
        (aws_amplify_backend_environment ?deployment_artifacts ?id
           ?stack_name ~app_id ~environment_name ());
    attrs = __attrs;
  }

let register ?tf_module ?deployment_artifacts ?id ?stack_name ~app_id
    ~environment_name __id =
  let (r : _ Tf_core.resource) =
    make ?deployment_artifacts ?id ?stack_name ~app_id
      ~environment_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

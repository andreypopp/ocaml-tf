(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lambda_permission = {
  action : string prop;
  event_source_token : string prop option; [@option]
  function_name : string prop;
  function_url_auth_type : string prop option; [@option]
  id : string prop option; [@option]
  principal : string prop;
  principal_org_id : string prop option; [@option]
  qualifier : string prop option; [@option]
  source_account : string prop option; [@option]
  source_arn : string prop option; [@option]
  statement_id : string prop option; [@option]
  statement_id_prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lambda_permission) -> ()

let yojson_of_aws_lambda_permission =
  (function
   | {
       action = v_action;
       event_source_token = v_event_source_token;
       function_name = v_function_name;
       function_url_auth_type = v_function_url_auth_type;
       id = v_id;
       principal = v_principal;
       principal_org_id = v_principal_org_id;
       qualifier = v_qualifier;
       source_account = v_source_account;
       source_arn = v_source_arn;
       statement_id = v_statement_id;
       statement_id_prefix = v_statement_id_prefix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_statement_id_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "statement_id_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_statement_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "statement_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_account", arg in
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
         match v_principal_org_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "principal_org_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal in
         ("principal", arg) :: bnds
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
         match v_function_url_auth_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "function_url_auth_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_function_name in
         ("function_name", arg) :: bnds
       in
       let bnds =
         match v_event_source_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event_source_token", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : aws_lambda_permission -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lambda_permission

[@@@deriving.end]

let aws_lambda_permission ?event_source_token ?function_url_auth_type
    ?id ?principal_org_id ?qualifier ?source_account ?source_arn
    ?statement_id ?statement_id_prefix ~action ~function_name
    ~principal () : aws_lambda_permission =
  {
    action;
    event_source_token;
    function_name;
    function_url_auth_type;
    id;
    principal;
    principal_org_id;
    qualifier;
    source_account;
    source_arn;
    statement_id;
    statement_id_prefix;
  }

type t = {
  action : string prop;
  event_source_token : string prop;
  function_name : string prop;
  function_url_auth_type : string prop;
  id : string prop;
  principal : string prop;
  principal_org_id : string prop;
  qualifier : string prop;
  source_account : string prop;
  source_arn : string prop;
  statement_id : string prop;
  statement_id_prefix : string prop;
}

let make ?event_source_token ?function_url_auth_type ?id
    ?principal_org_id ?qualifier ?source_account ?source_arn
    ?statement_id ?statement_id_prefix ~action ~function_name
    ~principal __id =
  let __type = "aws_lambda_permission" in
  let __attrs =
    ({
       action = Prop.computed __type __id "action";
       event_source_token =
         Prop.computed __type __id "event_source_token";
       function_name = Prop.computed __type __id "function_name";
       function_url_auth_type =
         Prop.computed __type __id "function_url_auth_type";
       id = Prop.computed __type __id "id";
       principal = Prop.computed __type __id "principal";
       principal_org_id =
         Prop.computed __type __id "principal_org_id";
       qualifier = Prop.computed __type __id "qualifier";
       source_account = Prop.computed __type __id "source_account";
       source_arn = Prop.computed __type __id "source_arn";
       statement_id = Prop.computed __type __id "statement_id";
       statement_id_prefix =
         Prop.computed __type __id "statement_id_prefix";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lambda_permission
        (aws_lambda_permission ?event_source_token
           ?function_url_auth_type ?id ?principal_org_id ?qualifier
           ?source_account ?source_arn ?statement_id
           ?statement_id_prefix ~action ~function_name ~principal ());
    attrs = __attrs;
  }

let register ?tf_module ?event_source_token ?function_url_auth_type
    ?id ?principal_org_id ?qualifier ?source_account ?source_arn
    ?statement_id ?statement_id_prefix ~action ~function_name
    ~principal __id =
  let (r : _ Tf_core.resource) =
    make ?event_source_token ?function_url_auth_type ?id
      ?principal_org_id ?qualifier ?source_account ?source_arn
      ?statement_id ?statement_id_prefix ~action ~function_name
      ~principal __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

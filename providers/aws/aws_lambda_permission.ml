(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lambda_permission = {
  action : string prop;  (** action *)
  event_source_token : string prop option; [@option]
      (** event_source_token *)
  function_name : string prop;  (** function_name *)
  function_url_auth_type : string prop option; [@option]
      (** function_url_auth_type *)
  id : string prop option; [@option]  (** id *)
  principal : string prop;  (** principal *)
  principal_org_id : string prop option; [@option]
      (** principal_org_id *)
  qualifier : string prop option; [@option]  (** qualifier *)
  source_account : string prop option; [@option]
      (** source_account *)
  source_arn : string prop option; [@option]  (** source_arn *)
  statement_id : string prop option; [@option]  (** statement_id *)
  statement_id_prefix : string prop option; [@option]
      (** statement_id_prefix *)
}
[@@deriving yojson_of]
(** aws_lambda_permission *)

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

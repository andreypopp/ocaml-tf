(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?event_source_token ?function_url_auth_type
    ?id ?principal_org_id ?qualifier ?source_account ?source_arn
    ?statement_id ?statement_id_prefix ~action ~function_name
    ~principal __resource_id =
  let __resource_type = "aws_lambda_permission" in
  let __resource =
    aws_lambda_permission ?event_source_token ?function_url_auth_type
      ?id ?principal_org_id ?qualifier ?source_account ?source_arn
      ?statement_id ?statement_id_prefix ~action ~function_name
      ~principal ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lambda_permission __resource);
  let __resource_attributes =
    ({
       action = Prop.computed __resource_type __resource_id "action";
       event_source_token =
         Prop.computed __resource_type __resource_id
           "event_source_token";
       function_name =
         Prop.computed __resource_type __resource_id "function_name";
       function_url_auth_type =
         Prop.computed __resource_type __resource_id
           "function_url_auth_type";
       id = Prop.computed __resource_type __resource_id "id";
       principal =
         Prop.computed __resource_type __resource_id "principal";
       principal_org_id =
         Prop.computed __resource_type __resource_id
           "principal_org_id";
       qualifier =
         Prop.computed __resource_type __resource_id "qualifier";
       source_account =
         Prop.computed __resource_type __resource_id "source_account";
       source_arn =
         Prop.computed __resource_type __resource_id "source_arn";
       statement_id =
         Prop.computed __resource_type __resource_id "statement_id";
       statement_id_prefix =
         Prop.computed __resource_type __resource_id
           "statement_id_prefix";
     }
      : t)
  in
  __resource_attributes

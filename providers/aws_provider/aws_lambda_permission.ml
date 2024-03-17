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
    ~principal __resource_id =
  let __resource_type = "aws_lambda_permission" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lambda_permission __resource);
  ()

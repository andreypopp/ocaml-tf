(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_lambda_permission = {
  action : string;  (** action *)
  event_source_token : string option; [@option]
      (** event_source_token *)
  function_name : string;  (** function_name *)
  function_url_auth_type : string option; [@option]
      (** function_url_auth_type *)
  principal : string;  (** principal *)
  principal_org_id : string option; [@option]
      (** principal_org_id *)
  qualifier : string option; [@option]  (** qualifier *)
  source_account : string option; [@option]  (** source_account *)
  source_arn : string option; [@option]  (** source_arn *)
}
[@@deriving yojson_of]
(** aws_lambda_permission *)

let aws_lambda_permission ?event_source_token ?function_url_auth_type
    ?principal_org_id ?qualifier ?source_account ?source_arn ~action
    ~function_name ~principal __resource_id =
  let __resource_type = "aws_lambda_permission" in
  let __resource =
    {
      action;
      event_source_token;
      function_name;
      function_url_auth_type;
      principal;
      principal_org_id;
      qualifier;
      source_account;
      source_arn;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lambda_permission __resource);
  ()
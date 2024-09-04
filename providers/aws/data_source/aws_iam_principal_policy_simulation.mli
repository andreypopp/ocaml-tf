(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type results__matched_statements = {
  source_policy_id : string prop;  (** source_policy_id *)
  source_policy_type : string prop;  (** source_policy_type *)
}

type results = {
  action_name : string prop;  (** action_name *)
  allowed : bool prop;  (** allowed *)
  decision : string prop;  (** decision *)
  decision_details : string prop Tf_core.assoc;
      (** decision_details *)
  matched_statements : results__matched_statements list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** matched_statements *)
  missing_context_keys : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** missing_context_keys *)
  resource_arn : string prop;  (** resource_arn *)
}

type context

val context :
  key:string prop ->
  type_:string prop ->
  values:string prop list ->
  unit ->
  context

type aws_iam_principal_policy_simulation

val aws_iam_principal_policy_simulation :
  ?additional_policies_json:string prop list ->
  ?caller_arn:string prop ->
  ?permissions_boundary_policies_json:string prop list ->
  ?resource_arns:string prop list ->
  ?resource_handling_option:string prop ->
  ?resource_owner_account_id:string prop ->
  ?resource_policy_json:string prop ->
  action_names:string prop list ->
  policy_source_arn:string prop ->
  context:context list ->
  unit ->
  aws_iam_principal_policy_simulation

val yojson_of_aws_iam_principal_policy_simulation :
  aws_iam_principal_policy_simulation -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  action_names : string list prop;
  additional_policies_json : string list prop;
  all_allowed : bool prop;
  caller_arn : string prop;
  id : string prop;
  permissions_boundary_policies_json : string list prop;
  policy_source_arn : string prop;
  resource_arns : string list prop;
  resource_handling_option : string prop;
  resource_owner_account_id : string prop;
  resource_policy_json : string prop;
  results : results list prop;
}

val register :
  ?tf_module:tf_module ->
  ?additional_policies_json:string prop list ->
  ?caller_arn:string prop ->
  ?permissions_boundary_policies_json:string prop list ->
  ?resource_arns:string prop list ->
  ?resource_handling_option:string prop ->
  ?resource_owner_account_id:string prop ->
  ?resource_policy_json:string prop ->
  action_names:string prop list ->
  policy_source_arn:string prop ->
  context:context list ->
  string ->
  t

val make :
  ?additional_policies_json:string prop list ->
  ?caller_arn:string prop ->
  ?permissions_boundary_policies_json:string prop list ->
  ?resource_arns:string prop list ->
  ?resource_handling_option:string prop ->
  ?resource_owner_account_id:string prop ->
  ?resource_policy_json:string prop ->
  action_names:string prop list ->
  policy_source_arn:string prop ->
  context:context list ->
  string ->
  t Tf_core.resource

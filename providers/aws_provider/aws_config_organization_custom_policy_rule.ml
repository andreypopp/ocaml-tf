(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_config_organization_custom_policy_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_config_organization_custom_policy_rule__timeouts *)

type aws_config_organization_custom_policy_rule = {
  debug_log_delivery_accounts : string list option; [@option]
      (** debug_log_delivery_accounts *)
  description : string option; [@option]  (** description *)
  excluded_accounts : string list option; [@option]
      (** excluded_accounts *)
  input_parameters : string option; [@option]
      (** input_parameters *)
  maximum_execution_frequency : string option; [@option]
      (** maximum_execution_frequency *)
  name : string;  (** name *)
  policy_runtime : string;  (** policy_runtime *)
  policy_text : string;  (** policy_text *)
  resource_id_scope : string option; [@option]
      (** resource_id_scope *)
  resource_types_scope : string list option; [@option]
      (** resource_types_scope *)
  tag_key_scope : string option; [@option]  (** tag_key_scope *)
  tag_value_scope : string option; [@option]  (** tag_value_scope *)
  trigger_types : string list;  (** trigger_types *)
  timeouts :
    aws_config_organization_custom_policy_rule__timeouts option;
}
[@@deriving yojson_of]
(** aws_config_organization_custom_policy_rule *)

let aws_config_organization_custom_policy_rule
    ?debug_log_delivery_accounts ?description ?excluded_accounts
    ?input_parameters ?maximum_execution_frequency ?resource_id_scope
    ?resource_types_scope ?tag_key_scope ?tag_value_scope ?timeouts
    ~name ~policy_runtime ~policy_text ~trigger_types __resource_id =
  let __resource_type =
    "aws_config_organization_custom_policy_rule"
  in
  let __resource =
    {
      debug_log_delivery_accounts;
      description;
      excluded_accounts;
      input_parameters;
      maximum_execution_frequency;
      name;
      policy_runtime;
      policy_text;
      resource_id_scope;
      resource_types_scope;
      tag_key_scope;
      tag_value_scope;
      trigger_types;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_config_organization_custom_policy_rule __resource);
  ()

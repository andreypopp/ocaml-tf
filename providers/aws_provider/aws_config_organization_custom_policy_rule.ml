(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_config_organization_custom_policy_rule__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_config_organization_custom_policy_rule__timeouts *)

type aws_config_organization_custom_policy_rule = {
  debug_log_delivery_accounts : string prop list option; [@option]
      (** debug_log_delivery_accounts *)
  description : string prop option; [@option]  (** description *)
  excluded_accounts : string prop list option; [@option]
      (** excluded_accounts *)
  id : string prop option; [@option]  (** id *)
  input_parameters : string prop option; [@option]
      (** input_parameters *)
  maximum_execution_frequency : string prop option; [@option]
      (** maximum_execution_frequency *)
  name : string prop;  (** name *)
  policy_runtime : string prop;  (** policy_runtime *)
  policy_text : string prop;  (** policy_text *)
  resource_id_scope : string prop option; [@option]
      (** resource_id_scope *)
  resource_types_scope : string prop list option; [@option]
      (** resource_types_scope *)
  tag_key_scope : string prop option; [@option]  (** tag_key_scope *)
  tag_value_scope : string prop option; [@option]
      (** tag_value_scope *)
  trigger_types : string prop list;  (** trigger_types *)
  timeouts :
    aws_config_organization_custom_policy_rule__timeouts option;
}
[@@deriving yojson_of]
(** aws_config_organization_custom_policy_rule *)

let aws_config_organization_custom_policy_rule
    ?debug_log_delivery_accounts ?description ?excluded_accounts ?id
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
      id;
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

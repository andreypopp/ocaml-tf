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

type t = {
  arn : string prop;
  debug_log_delivery_accounts : string list prop;
  description : string prop;
  excluded_accounts : string list prop;
  id : string prop;
  input_parameters : string prop;
  maximum_execution_frequency : string prop;
  name : string prop;
  policy_runtime : string prop;
  policy_text : string prop;
  resource_id_scope : string prop;
  resource_types_scope : string list prop;
  tag_key_scope : string prop;
  tag_value_scope : string prop;
  trigger_types : string list prop;
}

let aws_config_organization_custom_policy_rule
    ?debug_log_delivery_accounts ?description ?excluded_accounts ?id
    ?input_parameters ?maximum_execution_frequency ?resource_id_scope
    ?resource_types_scope ?tag_key_scope ?tag_value_scope ?timeouts
    ~name ~policy_runtime ~policy_text ~trigger_types __resource_id =
  let __resource_type =
    "aws_config_organization_custom_policy_rule"
  in
  let __resource =
    ({
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
      : aws_config_organization_custom_policy_rule)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_config_organization_custom_policy_rule __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       debug_log_delivery_accounts =
         Prop.computed __resource_type __resource_id
           "debug_log_delivery_accounts";
       description =
         Prop.computed __resource_type __resource_id "description";
       excluded_accounts =
         Prop.computed __resource_type __resource_id
           "excluded_accounts";
       id = Prop.computed __resource_type __resource_id "id";
       input_parameters =
         Prop.computed __resource_type __resource_id
           "input_parameters";
       maximum_execution_frequency =
         Prop.computed __resource_type __resource_id
           "maximum_execution_frequency";
       name = Prop.computed __resource_type __resource_id "name";
       policy_runtime =
         Prop.computed __resource_type __resource_id "policy_runtime";
       policy_text =
         Prop.computed __resource_type __resource_id "policy_text";
       resource_id_scope =
         Prop.computed __resource_type __resource_id
           "resource_id_scope";
       resource_types_scope =
         Prop.computed __resource_type __resource_id
           "resource_types_scope";
       tag_key_scope =
         Prop.computed __resource_type __resource_id "tag_key_scope";
       tag_value_scope =
         Prop.computed __resource_type __resource_id
           "tag_value_scope";
       trigger_types =
         Prop.computed __resource_type __resource_id "trigger_types";
     }
      : t)
  in
  __resource_attributes

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_config_organization_custom_rule__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_config_organization_custom_rule__timeouts *)

type aws_config_organization_custom_rule = {
  description : string prop option; [@option]  (** description *)
  excluded_accounts : string prop list option; [@option]
      (** excluded_accounts *)
  id : string prop option; [@option]  (** id *)
  input_parameters : string prop option; [@option]
      (** input_parameters *)
  lambda_function_arn : string prop;  (** lambda_function_arn *)
  maximum_execution_frequency : string prop option; [@option]
      (** maximum_execution_frequency *)
  name : string prop;  (** name *)
  resource_id_scope : string prop option; [@option]
      (** resource_id_scope *)
  resource_types_scope : string prop list option; [@option]
      (** resource_types_scope *)
  tag_key_scope : string prop option; [@option]  (** tag_key_scope *)
  tag_value_scope : string prop option; [@option]
      (** tag_value_scope *)
  trigger_types : string prop list;  (** trigger_types *)
  timeouts : aws_config_organization_custom_rule__timeouts option;
}
[@@deriving yojson_of]
(** aws_config_organization_custom_rule *)

type t = {
  arn : string prop;
  description : string prop;
  excluded_accounts : string list prop;
  id : string prop;
  input_parameters : string prop;
  lambda_function_arn : string prop;
  maximum_execution_frequency : string prop;
  name : string prop;
  resource_id_scope : string prop;
  resource_types_scope : string list prop;
  tag_key_scope : string prop;
  tag_value_scope : string prop;
  trigger_types : string list prop;
}

let aws_config_organization_custom_rule ?description
    ?excluded_accounts ?id ?input_parameters
    ?maximum_execution_frequency ?resource_id_scope
    ?resource_types_scope ?tag_key_scope ?tag_value_scope ?timeouts
    ~lambda_function_arn ~name ~trigger_types __resource_id =
  let __resource_type = "aws_config_organization_custom_rule" in
  let __resource =
    ({
       description;
       excluded_accounts;
       id;
       input_parameters;
       lambda_function_arn;
       maximum_execution_frequency;
       name;
       resource_id_scope;
       resource_types_scope;
       tag_key_scope;
       tag_value_scope;
       trigger_types;
       timeouts;
     }
      : aws_config_organization_custom_rule)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_config_organization_custom_rule __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       excluded_accounts =
         Prop.computed __resource_type __resource_id
           "excluded_accounts";
       id = Prop.computed __resource_type __resource_id "id";
       input_parameters =
         Prop.computed __resource_type __resource_id
           "input_parameters";
       lambda_function_arn =
         Prop.computed __resource_type __resource_id
           "lambda_function_arn";
       maximum_execution_frequency =
         Prop.computed __resource_type __resource_id
           "maximum_execution_frequency";
       name = Prop.computed __resource_type __resource_id "name";
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

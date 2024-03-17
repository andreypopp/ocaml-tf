(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_config_organization_custom_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_config_organization_custom_rule__timeouts *)

type aws_config_organization_custom_rule = {
  description : string option; [@option]  (** description *)
  excluded_accounts : string list option; [@option]
      (** excluded_accounts *)
  id : string option; [@option]  (** id *)
  input_parameters : string option; [@option]
      (** input_parameters *)
  lambda_function_arn : string;  (** lambda_function_arn *)
  maximum_execution_frequency : string option; [@option]
      (** maximum_execution_frequency *)
  name : string;  (** name *)
  resource_id_scope : string option; [@option]
      (** resource_id_scope *)
  resource_types_scope : string list option; [@option]
      (** resource_types_scope *)
  tag_key_scope : string option; [@option]  (** tag_key_scope *)
  tag_value_scope : string option; [@option]  (** tag_value_scope *)
  trigger_types : string list;  (** trigger_types *)
  timeouts : aws_config_organization_custom_rule__timeouts option;
}
[@@deriving yojson_of]
(** aws_config_organization_custom_rule *)

let aws_config_organization_custom_rule ?description
    ?excluded_accounts ?id ?input_parameters
    ?maximum_execution_frequency ?resource_id_scope
    ?resource_types_scope ?tag_key_scope ?tag_value_scope ?timeouts
    ~lambda_function_arn ~name ~trigger_types __resource_id =
  let __resource_type = "aws_config_organization_custom_rule" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_config_organization_custom_rule __resource);
  ()

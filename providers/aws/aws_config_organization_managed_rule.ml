(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_config_organization_managed_rule = {
  description : string prop option; [@option]  (** description *)
  excluded_accounts : string prop list option; [@option]
      (** excluded_accounts *)
  id : string prop option; [@option]  (** id *)
  input_parameters : string prop option; [@option]
      (** input_parameters *)
  maximum_execution_frequency : string prop option; [@option]
      (** maximum_execution_frequency *)
  name : string prop;  (** name *)
  resource_id_scope : string prop option; [@option]
      (** resource_id_scope *)
  resource_types_scope : string prop list option; [@option]
      (** resource_types_scope *)
  rule_identifier : string prop;  (** rule_identifier *)
  tag_key_scope : string prop option; [@option]  (** tag_key_scope *)
  tag_value_scope : string prop option; [@option]
      (** tag_value_scope *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_config_organization_managed_rule *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_config_organization_managed_rule ?description
    ?excluded_accounts ?id ?input_parameters
    ?maximum_execution_frequency ?resource_id_scope
    ?resource_types_scope ?tag_key_scope ?tag_value_scope ?timeouts
    ~name ~rule_identifier () : aws_config_organization_managed_rule
    =
  {
    description;
    excluded_accounts;
    id;
    input_parameters;
    maximum_execution_frequency;
    name;
    resource_id_scope;
    resource_types_scope;
    rule_identifier;
    tag_key_scope;
    tag_value_scope;
    timeouts;
  }

type t = {
  arn : string prop;
  description : string prop;
  excluded_accounts : string list prop;
  id : string prop;
  input_parameters : string prop;
  maximum_execution_frequency : string prop;
  name : string prop;
  resource_id_scope : string prop;
  resource_types_scope : string list prop;
  rule_identifier : string prop;
  tag_key_scope : string prop;
  tag_value_scope : string prop;
}

let register ?tf_module ?description ?excluded_accounts ?id
    ?input_parameters ?maximum_execution_frequency ?resource_id_scope
    ?resource_types_scope ?tag_key_scope ?tag_value_scope ?timeouts
    ~name ~rule_identifier __resource_id =
  let __resource_type = "aws_config_organization_managed_rule" in
  let __resource =
    aws_config_organization_managed_rule ?description
      ?excluded_accounts ?id ?input_parameters
      ?maximum_execution_frequency ?resource_id_scope
      ?resource_types_scope ?tag_key_scope ?tag_value_scope ?timeouts
      ~name ~rule_identifier ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_config_organization_managed_rule __resource);
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
       rule_identifier =
         Prop.computed __resource_type __resource_id
           "rule_identifier";
       tag_key_scope =
         Prop.computed __resource_type __resource_id "tag_key_scope";
       tag_value_scope =
         Prop.computed __resource_type __resource_id
           "tag_value_scope";
     }
      : t)
  in
  __resource_attributes

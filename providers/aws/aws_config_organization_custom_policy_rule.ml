(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_config_organization_custom_policy_rule *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_config_organization_custom_policy_rule
    ?debug_log_delivery_accounts ?description ?excluded_accounts ?id
    ?input_parameters ?maximum_execution_frequency ?resource_id_scope
    ?resource_types_scope ?tag_key_scope ?tag_value_scope ?timeouts
    ~name ~policy_runtime ~policy_text ~trigger_types () :
    aws_config_organization_custom_policy_rule =
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

let make ?debug_log_delivery_accounts ?description ?excluded_accounts
    ?id ?input_parameters ?maximum_execution_frequency
    ?resource_id_scope ?resource_types_scope ?tag_key_scope
    ?tag_value_scope ?timeouts ~name ~policy_runtime ~policy_text
    ~trigger_types __id =
  let __type = "aws_config_organization_custom_policy_rule" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       debug_log_delivery_accounts =
         Prop.computed __type __id "debug_log_delivery_accounts";
       description = Prop.computed __type __id "description";
       excluded_accounts =
         Prop.computed __type __id "excluded_accounts";
       id = Prop.computed __type __id "id";
       input_parameters =
         Prop.computed __type __id "input_parameters";
       maximum_execution_frequency =
         Prop.computed __type __id "maximum_execution_frequency";
       name = Prop.computed __type __id "name";
       policy_runtime = Prop.computed __type __id "policy_runtime";
       policy_text = Prop.computed __type __id "policy_text";
       resource_id_scope =
         Prop.computed __type __id "resource_id_scope";
       resource_types_scope =
         Prop.computed __type __id "resource_types_scope";
       tag_key_scope = Prop.computed __type __id "tag_key_scope";
       tag_value_scope = Prop.computed __type __id "tag_value_scope";
       trigger_types = Prop.computed __type __id "trigger_types";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_config_organization_custom_policy_rule
        (aws_config_organization_custom_policy_rule
           ?debug_log_delivery_accounts ?description
           ?excluded_accounts ?id ?input_parameters
           ?maximum_execution_frequency ?resource_id_scope
           ?resource_types_scope ?tag_key_scope ?tag_value_scope
           ?timeouts ~name ~policy_runtime ~policy_text
           ~trigger_types ());
    attrs = __attrs;
  }

let register ?tf_module ?debug_log_delivery_accounts ?description
    ?excluded_accounts ?id ?input_parameters
    ?maximum_execution_frequency ?resource_id_scope
    ?resource_types_scope ?tag_key_scope ?tag_value_scope ?timeouts
    ~name ~policy_runtime ~policy_text ~trigger_types __id =
  let (r : _ Tf_core.resource) =
    make ?debug_log_delivery_accounts ?description ?excluded_accounts
      ?id ?input_parameters ?maximum_execution_frequency
      ?resource_id_scope ?resource_types_scope ?tag_key_scope
      ?tag_value_scope ?timeouts ~name ~policy_runtime ~policy_text
      ~trigger_types __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_applicationinsights_application = {
  auto_config_enabled : bool prop option; [@option]
      (** auto_config_enabled *)
  auto_create : bool prop option; [@option]  (** auto_create *)
  cwe_monitor_enabled : bool prop option; [@option]
      (** cwe_monitor_enabled *)
  grouping_type : string prop option; [@option]  (** grouping_type *)
  id : string prop option; [@option]  (** id *)
  ops_center_enabled : bool prop option; [@option]
      (** ops_center_enabled *)
  ops_item_sns_topic_arn : string prop option; [@option]
      (** ops_item_sns_topic_arn *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_applicationinsights_application *)

let aws_applicationinsights_application ?auto_config_enabled
    ?auto_create ?cwe_monitor_enabled ?grouping_type ?id
    ?ops_center_enabled ?ops_item_sns_topic_arn ?tags ?tags_all
    ~resource_group_name () : aws_applicationinsights_application =
  {
    auto_config_enabled;
    auto_create;
    cwe_monitor_enabled;
    grouping_type;
    id;
    ops_center_enabled;
    ops_item_sns_topic_arn;
    resource_group_name;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  auto_config_enabled : bool prop;
  auto_create : bool prop;
  cwe_monitor_enabled : bool prop;
  grouping_type : string prop;
  id : string prop;
  ops_center_enabled : bool prop;
  ops_item_sns_topic_arn : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?auto_config_enabled ?auto_create
    ?cwe_monitor_enabled ?grouping_type ?id ?ops_center_enabled
    ?ops_item_sns_topic_arn ?tags ?tags_all ~resource_group_name
    __resource_id =
  let __resource_type = "aws_applicationinsights_application" in
  let __resource =
    aws_applicationinsights_application ?auto_config_enabled
      ?auto_create ?cwe_monitor_enabled ?grouping_type ?id
      ?ops_center_enabled ?ops_item_sns_topic_arn ?tags ?tags_all
      ~resource_group_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_applicationinsights_application __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       auto_config_enabled =
         Prop.computed __resource_type __resource_id
           "auto_config_enabled";
       auto_create =
         Prop.computed __resource_type __resource_id "auto_create";
       cwe_monitor_enabled =
         Prop.computed __resource_type __resource_id
           "cwe_monitor_enabled";
       grouping_type =
         Prop.computed __resource_type __resource_id "grouping_type";
       id = Prop.computed __resource_type __resource_id "id";
       ops_center_enabled =
         Prop.computed __resource_type __resource_id
           "ops_center_enabled";
       ops_item_sns_topic_arn =
         Prop.computed __resource_type __resource_id
           "ops_item_sns_topic_arn";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes

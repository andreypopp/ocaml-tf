(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_applicationinsights_application = {
  auto_config_enabled : bool option; [@option]
      (** auto_config_enabled *)
  auto_create : bool option; [@option]  (** auto_create *)
  cwe_monitor_enabled : bool option; [@option]
      (** cwe_monitor_enabled *)
  grouping_type : string option; [@option]  (** grouping_type *)
  id : string option; [@option]  (** id *)
  ops_center_enabled : bool option; [@option]
      (** ops_center_enabled *)
  ops_item_sns_topic_arn : string option; [@option]
      (** ops_item_sns_topic_arn *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_applicationinsights_application *)

let aws_applicationinsights_application ?auto_config_enabled
    ?auto_create ?cwe_monitor_enabled ?grouping_type ?id
    ?ops_center_enabled ?ops_item_sns_topic_arn ?tags ?tags_all
    ~resource_group_name __resource_id =
  let __resource_type = "aws_applicationinsights_application" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_applicationinsights_application __resource);
  ()

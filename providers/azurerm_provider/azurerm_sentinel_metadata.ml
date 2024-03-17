(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sentinel_metadata__author = {
  email : string option; [@option]  (** email *)
  link : string option; [@option]  (** link *)
  name : string option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_metadata__author *)

type azurerm_sentinel_metadata__category = {
  domains : string list option; [@option]  (** domains *)
  verticals : string list option; [@option]  (** verticals *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_metadata__category *)

type azurerm_sentinel_metadata__source = {
  id : string option; [@option]  (** id *)
  kind : string;  (** kind *)
  name : string option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_metadata__source *)

type azurerm_sentinel_metadata__support = {
  email : string option; [@option]  (** email *)
  link : string option; [@option]  (** link *)
  name : string option; [@option]  (** name *)
  tier : string;  (** tier *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_metadata__support *)

type azurerm_sentinel_metadata__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_metadata__timeouts *)

type azurerm_sentinel_metadata = {
  content_id : string;  (** content_id *)
  content_schema_version : string option; [@option]
      (** content_schema_version *)
  custom_version : string option; [@option]  (** custom_version *)
  dependency : string option; [@option]  (** dependency *)
  first_publish_date : string option; [@option]
      (** first_publish_date *)
  icon_id : string option; [@option]  (** icon_id *)
  kind : string;  (** kind *)
  last_publish_date : string option; [@option]
      (** last_publish_date *)
  name : string;  (** name *)
  parent_id : string;  (** parent_id *)
  preview_images : string list option; [@option]
      (** preview_images *)
  preview_images_dark : string list option; [@option]
      (** preview_images_dark *)
  providers : string list option; [@option]  (** providers *)
  threat_analysis_tactics : string list option; [@option]
      (** threat_analysis_tactics *)
  threat_analysis_techniques : string list option; [@option]
      (** threat_analysis_techniques *)
  version : string option; [@option]  (** version *)
  workspace_id : string;  (** workspace_id *)
  author : azurerm_sentinel_metadata__author list;
  category : azurerm_sentinel_metadata__category list;
  source : azurerm_sentinel_metadata__source list;
  support : azurerm_sentinel_metadata__support list;
  timeouts : azurerm_sentinel_metadata__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_metadata *)

let azurerm_sentinel_metadata ?content_schema_version ?custom_version
    ?dependency ?first_publish_date ?icon_id ?last_publish_date
    ?preview_images ?preview_images_dark ?providers
    ?threat_analysis_tactics ?threat_analysis_techniques ?version
    ?timeouts ~content_id ~kind ~name ~parent_id ~workspace_id
    ~author ~category ~source ~support __resource_id =
  let __resource_type = "azurerm_sentinel_metadata" in
  let __resource =
    {
      content_id;
      content_schema_version;
      custom_version;
      dependency;
      first_publish_date;
      icon_id;
      kind;
      last_publish_date;
      name;
      parent_id;
      preview_images;
      preview_images_dark;
      providers;
      threat_analysis_tactics;
      threat_analysis_techniques;
      version;
      workspace_id;
      author;
      category;
      source;
      support;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_metadata __resource);
  ()

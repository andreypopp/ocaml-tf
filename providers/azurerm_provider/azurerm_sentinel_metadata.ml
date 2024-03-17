(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sentinel_metadata__author = {
  email : string prop option; [@option]  (** email *)
  link : string prop option; [@option]  (** link *)
  name : string prop option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_metadata__author *)

type azurerm_sentinel_metadata__category = {
  domains : string prop list option; [@option]  (** domains *)
  verticals : string prop list option; [@option]  (** verticals *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_metadata__category *)

type azurerm_sentinel_metadata__source = {
  id : string prop option; [@option]  (** id *)
  kind : string prop;  (** kind *)
  name : string prop option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_metadata__source *)

type azurerm_sentinel_metadata__support = {
  email : string prop option; [@option]  (** email *)
  link : string prop option; [@option]  (** link *)
  name : string prop option; [@option]  (** name *)
  tier : string prop;  (** tier *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_metadata__support *)

type azurerm_sentinel_metadata__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_metadata__timeouts *)

type azurerm_sentinel_metadata = {
  content_id : string prop;  (** content_id *)
  content_schema_version : string prop option; [@option]
      (** content_schema_version *)
  custom_version : string prop option; [@option]
      (** custom_version *)
  dependency : string prop option; [@option]  (** dependency *)
  first_publish_date : string prop option; [@option]
      (** first_publish_date *)
  icon_id : string prop option; [@option]  (** icon_id *)
  id : string prop option; [@option]  (** id *)
  kind : string prop;  (** kind *)
  last_publish_date : string prop option; [@option]
      (** last_publish_date *)
  name : string prop;  (** name *)
  parent_id : string prop;  (** parent_id *)
  preview_images : string prop list option; [@option]
      (** preview_images *)
  preview_images_dark : string prop list option; [@option]
      (** preview_images_dark *)
  providers : string prop list option; [@option]  (** providers *)
  threat_analysis_tactics : string prop list option; [@option]
      (** threat_analysis_tactics *)
  threat_analysis_techniques : string prop list option; [@option]
      (** threat_analysis_techniques *)
  version : string prop option; [@option]  (** version *)
  workspace_id : string prop;  (** workspace_id *)
  author : azurerm_sentinel_metadata__author list;
  category : azurerm_sentinel_metadata__category list;
  source : azurerm_sentinel_metadata__source list;
  support : azurerm_sentinel_metadata__support list;
  timeouts : azurerm_sentinel_metadata__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_metadata *)

type t = {
  content_id : string prop;
  content_schema_version : string prop;
  custom_version : string prop;
  dependency : string prop;
  first_publish_date : string prop;
  icon_id : string prop;
  id : string prop;
  kind : string prop;
  last_publish_date : string prop;
  name : string prop;
  parent_id : string prop;
  preview_images : string list prop;
  preview_images_dark : string list prop;
  providers : string list prop;
  threat_analysis_tactics : string list prop;
  threat_analysis_techniques : string list prop;
  version : string prop;
  workspace_id : string prop;
}

let azurerm_sentinel_metadata ?content_schema_version ?custom_version
    ?dependency ?first_publish_date ?icon_id ?id ?last_publish_date
    ?preview_images ?preview_images_dark ?providers
    ?threat_analysis_tactics ?threat_analysis_techniques ?version
    ?timeouts ~content_id ~kind ~name ~parent_id ~workspace_id
    ~author ~category ~source ~support __resource_id =
  let __resource_type = "azurerm_sentinel_metadata" in
  let __resource =
    ({
       content_id;
       content_schema_version;
       custom_version;
       dependency;
       first_publish_date;
       icon_id;
       id;
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
      : azurerm_sentinel_metadata)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_metadata __resource);
  let __resource_attributes =
    ({
       content_id =
         Prop.computed __resource_type __resource_id "content_id";
       content_schema_version =
         Prop.computed __resource_type __resource_id
           "content_schema_version";
       custom_version =
         Prop.computed __resource_type __resource_id "custom_version";
       dependency =
         Prop.computed __resource_type __resource_id "dependency";
       first_publish_date =
         Prop.computed __resource_type __resource_id
           "first_publish_date";
       icon_id =
         Prop.computed __resource_type __resource_id "icon_id";
       id = Prop.computed __resource_type __resource_id "id";
       kind = Prop.computed __resource_type __resource_id "kind";
       last_publish_date =
         Prop.computed __resource_type __resource_id
           "last_publish_date";
       name = Prop.computed __resource_type __resource_id "name";
       parent_id =
         Prop.computed __resource_type __resource_id "parent_id";
       preview_images =
         Prop.computed __resource_type __resource_id "preview_images";
       preview_images_dark =
         Prop.computed __resource_type __resource_id
           "preview_images_dark";
       providers =
         Prop.computed __resource_type __resource_id "providers";
       threat_analysis_tactics =
         Prop.computed __resource_type __resource_id
           "threat_analysis_tactics";
       threat_analysis_techniques =
         Prop.computed __resource_type __resource_id
           "threat_analysis_techniques";
       version =
         Prop.computed __resource_type __resource_id "version";
       workspace_id =
         Prop.computed __resource_type __resource_id "workspace_id";
     }
      : t)
  in
  __resource_attributes

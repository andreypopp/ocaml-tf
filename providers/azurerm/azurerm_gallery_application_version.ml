(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_gallery_application_version__manage_action = {
  install : string prop;  (** install *)
  remove : string prop;  (** remove *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_gallery_application_version__manage_action *)

type azurerm_gallery_application_version__source = {
  default_configuration_link : string prop option; [@option]
      (** default_configuration_link *)
  media_link : string prop;  (** media_link *)
}
[@@deriving yojson_of]
(** azurerm_gallery_application_version__source *)

type azurerm_gallery_application_version__target_region = {
  exclude_from_latest : bool prop option; [@option]
      (** exclude_from_latest *)
  name : string prop;  (** name *)
  regional_replica_count : float prop;  (** regional_replica_count *)
  storage_account_type : string prop option; [@option]
      (** storage_account_type *)
}
[@@deriving yojson_of]
(** azurerm_gallery_application_version__target_region *)

type azurerm_gallery_application_version__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_gallery_application_version__timeouts *)

type azurerm_gallery_application_version = {
  config_file : string prop option; [@option]  (** config_file *)
  enable_health_check : bool prop option; [@option]
      (** enable_health_check *)
  end_of_life_date : string prop option; [@option]
      (** end_of_life_date *)
  exclude_from_latest : bool prop option; [@option]
      (** exclude_from_latest *)
  gallery_application_id : string prop;
      (** gallery_application_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  package_file : string prop option; [@option]  (** package_file *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  manage_action :
    azurerm_gallery_application_version__manage_action list;
  source : azurerm_gallery_application_version__source list;
  target_region :
    azurerm_gallery_application_version__target_region list;
  timeouts : azurerm_gallery_application_version__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_gallery_application_version *)

type t = {
  config_file : string prop;
  enable_health_check : bool prop;
  end_of_life_date : string prop;
  exclude_from_latest : bool prop;
  gallery_application_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  package_file : string prop;
  tags : (string * string) list prop;
}

let azurerm_gallery_application_version ?config_file
    ?enable_health_check ?end_of_life_date ?exclude_from_latest ?id
    ?package_file ?tags ?timeouts ~gallery_application_id ~location
    ~name ~manage_action ~source ~target_region __resource_id =
  let __resource_type = "azurerm_gallery_application_version" in
  let __resource =
    ({
       config_file;
       enable_health_check;
       end_of_life_date;
       exclude_from_latest;
       gallery_application_id;
       id;
       location;
       name;
       package_file;
       tags;
       manage_action;
       source;
       target_region;
       timeouts;
     }
      : azurerm_gallery_application_version)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_gallery_application_version __resource);
  let __resource_attributes =
    ({
       config_file =
         Prop.computed __resource_type __resource_id "config_file";
       enable_health_check =
         Prop.computed __resource_type __resource_id
           "enable_health_check";
       end_of_life_date =
         Prop.computed __resource_type __resource_id
           "end_of_life_date";
       exclude_from_latest =
         Prop.computed __resource_type __resource_id
           "exclude_from_latest";
       gallery_application_id =
         Prop.computed __resource_type __resource_id
           "gallery_application_id";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       package_file =
         Prop.computed __resource_type __resource_id "package_file";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes

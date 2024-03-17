(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_gallery_application_version__manage_action = {
  install : string;  (** install *)
  remove : string;  (** remove *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_gallery_application_version__manage_action *)

type azurerm_gallery_application_version__source = {
  default_configuration_link : string option; [@option]
      (** default_configuration_link *)
  media_link : string;  (** media_link *)
}
[@@deriving yojson_of]
(** azurerm_gallery_application_version__source *)

type azurerm_gallery_application_version__target_region = {
  exclude_from_latest : bool option; [@option]
      (** exclude_from_latest *)
  name : string;  (** name *)
  regional_replica_count : float;  (** regional_replica_count *)
  storage_account_type : string option; [@option]
      (** storage_account_type *)
}
[@@deriving yojson_of]
(** azurerm_gallery_application_version__target_region *)

type azurerm_gallery_application_version__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_gallery_application_version__timeouts *)

type azurerm_gallery_application_version = {
  config_file : string option; [@option]  (** config_file *)
  enable_health_check : bool option; [@option]
      (** enable_health_check *)
  end_of_life_date : string option; [@option]
      (** end_of_life_date *)
  exclude_from_latest : bool option; [@option]
      (** exclude_from_latest *)
  gallery_application_id : string;  (** gallery_application_id *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  package_file : string option; [@option]  (** package_file *)
  tags : (string * string) list option; [@option]  (** tags *)
  manage_action :
    azurerm_gallery_application_version__manage_action list;
  source : azurerm_gallery_application_version__source list;
  target_region :
    azurerm_gallery_application_version__target_region list;
  timeouts : azurerm_gallery_application_version__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_gallery_application_version *)

let azurerm_gallery_application_version ?config_file
    ?enable_health_check ?end_of_life_date ?exclude_from_latest ?id
    ?package_file ?tags ?timeouts ~gallery_application_id ~location
    ~name ~manage_action ~source ~target_region __resource_id =
  let __resource_type = "azurerm_gallery_application_version" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_gallery_application_version __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_app_service_plan__sku = {
  capacity : float option; [@option]  (** capacity *)
  size : string;  (** size *)
  tier : string;  (** tier *)
}
[@@deriving yojson_of]
(** azurerm_app_service_plan__sku *)

type azurerm_app_service_plan__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_app_service_plan__timeouts *)

type azurerm_app_service_plan = {
  app_service_environment_id : string option; [@option]
      (** app_service_environment_id *)
  is_xenon : bool option; [@option]  (** is_xenon *)
  kind : string option; [@option]  (** kind *)
  location : string;  (** location *)
  name : string;  (** name *)
  per_site_scaling : bool option; [@option]  (** per_site_scaling *)
  reserved : bool option; [@option]  (** reserved *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  zone_redundant : bool option; [@option]  (** zone_redundant *)
  sku : azurerm_app_service_plan__sku list;
  timeouts : azurerm_app_service_plan__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_plan *)

let azurerm_app_service_plan ?app_service_environment_id ?is_xenon
    ?kind ?per_site_scaling ?reserved ?tags ?zone_redundant ?timeouts
    ~location ~name ~resource_group_name ~sku __resource_id =
  let __resource_type = "azurerm_app_service_plan" in
  let __resource =
    {
      app_service_environment_id;
      is_xenon;
      kind;
      location;
      name;
      per_site_scaling;
      reserved;
      resource_group_name;
      tags;
      zone_redundant;
      sku;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_service_plan __resource);
  ()

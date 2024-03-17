(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_service_plan__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_service_plan__timeouts *)

type azurerm_service_plan = {
  app_service_environment_id : string option; [@option]
      (** app_service_environment_id *)
  location : string;  (** location *)
  name : string;  (** name *)
  os_type : string;  (** os_type *)
  per_site_scaling_enabled : bool option; [@option]
      (** per_site_scaling_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  sku_name : string;  (** sku_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  zone_balancing_enabled : bool option; [@option]
      (** zone_balancing_enabled *)
  timeouts : azurerm_service_plan__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_service_plan *)

let azurerm_service_plan ?app_service_environment_id
    ?per_site_scaling_enabled ?tags ?zone_balancing_enabled ?timeouts
    ~location ~name ~os_type ~resource_group_name ~sku_name
    __resource_id =
  let __resource_type = "azurerm_service_plan" in
  let __resource =
    {
      app_service_environment_id;
      location;
      name;
      os_type;
      per_site_scaling_enabled;
      resource_group_name;
      sku_name;
      tags;
      zone_balancing_enabled;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_service_plan __resource);
  ()

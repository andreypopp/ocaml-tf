(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_service_plan__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_service_plan__timeouts *)

type azurerm_service_plan = {
  app_service_environment_id : string prop option; [@option]
      (** app_service_environment_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  maximum_elastic_worker_count : float prop option; [@option]
      (** maximum_elastic_worker_count *)
  name : string prop;  (** name *)
  os_type : string prop;  (** os_type *)
  per_site_scaling_enabled : bool prop option; [@option]
      (** per_site_scaling_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  worker_count : float prop option; [@option]  (** worker_count *)
  zone_balancing_enabled : bool prop option; [@option]
      (** zone_balancing_enabled *)
  timeouts : azurerm_service_plan__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_service_plan *)

let azurerm_service_plan ?app_service_environment_id ?id
    ?maximum_elastic_worker_count ?per_site_scaling_enabled ?tags
    ?worker_count ?zone_balancing_enabled ?timeouts ~location ~name
    ~os_type ~resource_group_name ~sku_name __resource_id =
  let __resource_type = "azurerm_service_plan" in
  let __resource =
    {
      app_service_environment_id;
      id;
      location;
      maximum_elastic_worker_count;
      name;
      os_type;
      per_site_scaling_enabled;
      resource_group_name;
      sku_name;
      tags;
      worker_count;
      zone_balancing_enabled;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_service_plan __resource);
  ()

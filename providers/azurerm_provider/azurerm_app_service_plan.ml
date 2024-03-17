(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_app_service_plan__sku = {
  capacity : float prop option; [@option]  (** capacity *)
  size : string prop;  (** size *)
  tier : string prop;  (** tier *)
}
[@@deriving yojson_of]
(** azurerm_app_service_plan__sku *)

type azurerm_app_service_plan__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_app_service_plan__timeouts *)

type azurerm_app_service_plan = {
  app_service_environment_id : string prop option; [@option]
      (** app_service_environment_id *)
  id : string prop option; [@option]  (** id *)
  is_xenon : bool prop option; [@option]  (** is_xenon *)
  kind : string prop option; [@option]  (** kind *)
  location : string prop;  (** location *)
  maximum_elastic_worker_count : float prop option; [@option]
      (** maximum_elastic_worker_count *)
  name : string prop;  (** name *)
  per_site_scaling : bool prop option; [@option]
      (** per_site_scaling *)
  reserved : bool prop option; [@option]  (** reserved *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zone_redundant : bool prop option; [@option]  (** zone_redundant *)
  sku : azurerm_app_service_plan__sku list;
  timeouts : azurerm_app_service_plan__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_plan *)

let azurerm_app_service_plan ?app_service_environment_id ?id
    ?is_xenon ?kind ?maximum_elastic_worker_count ?per_site_scaling
    ?reserved ?tags ?zone_redundant ?timeouts ~location ~name
    ~resource_group_name ~sku __resource_id =
  let __resource_type = "azurerm_app_service_plan" in
  let __resource =
    {
      app_service_environment_id;
      id;
      is_xenon;
      kind;
      location;
      maximum_elastic_worker_count;
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

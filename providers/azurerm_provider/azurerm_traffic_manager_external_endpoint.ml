(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_traffic_manager_external_endpoint__custom_header = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_traffic_manager_external_endpoint__custom_header *)

type azurerm_traffic_manager_external_endpoint__subnet = {
  first : string prop;  (** first *)
  last : string prop option; [@option]  (** last *)
  scope : float prop option; [@option]  (** scope *)
}
[@@deriving yojson_of]
(** azurerm_traffic_manager_external_endpoint__subnet *)

type azurerm_traffic_manager_external_endpoint__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_traffic_manager_external_endpoint__timeouts *)

type azurerm_traffic_manager_external_endpoint = {
  always_serve_enabled : bool prop option; [@option]
      (** always_serve_enabled *)
  enabled : bool prop option; [@option]  (** enabled *)
  endpoint_location : string prop option; [@option]
      (** endpoint_location *)
  geo_mappings : string prop list option; [@option]
      (** geo_mappings *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  priority : float prop option; [@option]  (** priority *)
  profile_id : string prop;  (** profile_id *)
  target : string prop;  (** target *)
  weight : float prop option; [@option]  (** weight *)
  custom_header :
    azurerm_traffic_manager_external_endpoint__custom_header list;
  subnet : azurerm_traffic_manager_external_endpoint__subnet list;
  timeouts :
    azurerm_traffic_manager_external_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_traffic_manager_external_endpoint *)

let azurerm_traffic_manager_external_endpoint ?always_serve_enabled
    ?enabled ?endpoint_location ?geo_mappings ?id ?priority ?weight
    ?timeouts ~name ~profile_id ~target ~custom_header ~subnet
    __resource_id =
  let __resource_type =
    "azurerm_traffic_manager_external_endpoint"
  in
  let __resource =
    {
      always_serve_enabled;
      enabled;
      endpoint_location;
      geo_mappings;
      id;
      name;
      priority;
      profile_id;
      target;
      weight;
      custom_header;
      subnet;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_traffic_manager_external_endpoint __resource);
  ()

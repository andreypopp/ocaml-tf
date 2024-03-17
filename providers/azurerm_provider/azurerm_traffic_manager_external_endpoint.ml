(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_traffic_manager_external_endpoint__custom_header = {
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_traffic_manager_external_endpoint__custom_header *)

type azurerm_traffic_manager_external_endpoint__subnet = {
  first : string;  (** first *)
  last : string option; [@option]  (** last *)
  scope : float option; [@option]  (** scope *)
}
[@@deriving yojson_of]
(** azurerm_traffic_manager_external_endpoint__subnet *)

type azurerm_traffic_manager_external_endpoint__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_traffic_manager_external_endpoint__timeouts *)

type azurerm_traffic_manager_external_endpoint = {
  always_serve_enabled : bool option; [@option]
      (** always_serve_enabled *)
  enabled : bool option; [@option]  (** enabled *)
  geo_mappings : string list option; [@option]  (** geo_mappings *)
  name : string;  (** name *)
  profile_id : string;  (** profile_id *)
  target : string;  (** target *)
  custom_header :
    azurerm_traffic_manager_external_endpoint__custom_header list;
  subnet : azurerm_traffic_manager_external_endpoint__subnet list;
  timeouts :
    azurerm_traffic_manager_external_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_traffic_manager_external_endpoint *)

let azurerm_traffic_manager_external_endpoint ?always_serve_enabled
    ?enabled ?geo_mappings ?timeouts ~name ~profile_id ~target
    ~custom_header ~subnet __resource_id =
  let __resource_type =
    "azurerm_traffic_manager_external_endpoint"
  in
  let __resource =
    {
      always_serve_enabled;
      enabled;
      geo_mappings;
      name;
      profile_id;
      target;
      custom_header;
      subnet;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_traffic_manager_external_endpoint __resource);
  ()

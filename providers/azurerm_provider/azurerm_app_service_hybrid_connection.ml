(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_app_service_hybrid_connection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_app_service_hybrid_connection__timeouts *)

type azurerm_app_service_hybrid_connection = {
  app_service_name : string;  (** app_service_name *)
  hostname : string;  (** hostname *)
  port : float;  (** port *)
  relay_id : string;  (** relay_id *)
  resource_group_name : string;  (** resource_group_name *)
  send_key_name : string option; [@option]  (** send_key_name *)
  timeouts : azurerm_app_service_hybrid_connection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_hybrid_connection *)

let azurerm_app_service_hybrid_connection ?send_key_name ?timeouts
    ~app_service_name ~hostname ~port ~relay_id ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_app_service_hybrid_connection" in
  let __resource =
    {
      app_service_name;
      hostname;
      port;
      relay_id;
      resource_group_name;
      send_key_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_service_hybrid_connection __resource);
  ()

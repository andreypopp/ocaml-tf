(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_function_app_hybrid_connection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_function_app_hybrid_connection__timeouts *)

type azurerm_function_app_hybrid_connection = {
  function_app_id : string;
      (** The ID of the Function App for this Hybrid Connection. *)
  hostname : string;  (** The hostname of the endpoint. *)
  id : string option; [@option]  (** id *)
  port : float;  (** The port to use for the endpoint *)
  relay_id : string;
      (** The ID of the Relay Hybrid Connection to use. *)
  send_key_name : string option; [@option]
      (** The name of the Relay key with `Send` permission to use. Defaults to `RootManageSharedAccessKey` *)
  timeouts : azurerm_function_app_hybrid_connection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_function_app_hybrid_connection *)

let azurerm_function_app_hybrid_connection ?id ?send_key_name
    ?timeouts ~function_app_id ~hostname ~port ~relay_id
    __resource_id =
  let __resource_type = "azurerm_function_app_hybrid_connection" in
  let __resource =
    {
      function_app_id;
      hostname;
      id;
      port;
      relay_id;
      send_key_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_function_app_hybrid_connection __resource);
  ()

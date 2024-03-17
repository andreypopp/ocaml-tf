(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_web_app_hybrid_connection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_web_app_hybrid_connection__timeouts *)

type azurerm_web_app_hybrid_connection = {
  hostname : string;  (** The hostname of the endpoint. *)
  port : float;  (** The port to use for the endpoint *)
  relay_id : string;
      (** The ID of the Relay Hybrid Connection to use. *)
  send_key_name : string option; [@option]
      (** The name of the Relay key with `Send` permission to use. Defaults to `RootManageSharedAccessKey` *)
  web_app_id : string;
      (** The ID of the Web App for this Hybrid Connection. *)
  timeouts : azurerm_web_app_hybrid_connection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_web_app_hybrid_connection *)

let azurerm_web_app_hybrid_connection ?send_key_name ?timeouts
    ~hostname ~port ~relay_id ~web_app_id __resource_id =
  let __resource_type = "azurerm_web_app_hybrid_connection" in
  let __resource =
    { hostname; port; relay_id; send_key_name; web_app_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_web_app_hybrid_connection __resource);
  ()

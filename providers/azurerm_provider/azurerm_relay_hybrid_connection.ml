(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_relay_hybrid_connection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_relay_hybrid_connection__timeouts *)

type azurerm_relay_hybrid_connection = {
  name : string;  (** name *)
  relay_namespace_name : string;  (** relay_namespace_name *)
  requires_client_authorization : bool option; [@option]
      (** requires_client_authorization *)
  resource_group_name : string;  (** resource_group_name *)
  user_metadata : string option; [@option]  (** user_metadata *)
  timeouts : azurerm_relay_hybrid_connection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_relay_hybrid_connection *)

let azurerm_relay_hybrid_connection ?requires_client_authorization
    ?user_metadata ?timeouts ~name ~relay_namespace_name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_relay_hybrid_connection" in
  let __resource =
    {
      name;
      relay_namespace_name;
      requires_client_authorization;
      resource_group_name;
      user_metadata;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_relay_hybrid_connection __resource);
  ()

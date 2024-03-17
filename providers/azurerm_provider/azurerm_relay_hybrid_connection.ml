(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_relay_hybrid_connection__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_relay_hybrid_connection__timeouts *)

type azurerm_relay_hybrid_connection = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  relay_namespace_name : string prop;  (** relay_namespace_name *)
  requires_client_authorization : bool prop option; [@option]
      (** requires_client_authorization *)
  resource_group_name : string prop;  (** resource_group_name *)
  user_metadata : string prop option; [@option]  (** user_metadata *)
  timeouts : azurerm_relay_hybrid_connection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_relay_hybrid_connection *)

let azurerm_relay_hybrid_connection ?id
    ?requires_client_authorization ?user_metadata ?timeouts ~name
    ~relay_namespace_name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_relay_hybrid_connection" in
  let __resource =
    {
      id;
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

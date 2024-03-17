(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_application_insights_api_key__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_application_insights_api_key__timeouts *)

type azurerm_application_insights_api_key = {
  application_insights_id : string;  (** application_insights_id *)
  name : string;  (** name *)
  read_permissions : string list option; [@option]
      (** read_permissions *)
  write_permissions : string list option; [@option]
      (** write_permissions *)
  timeouts : azurerm_application_insights_api_key__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_application_insights_api_key *)

let azurerm_application_insights_api_key ?read_permissions
    ?write_permissions ?timeouts ~application_insights_id ~name
    __resource_id =
  let __resource_type = "azurerm_application_insights_api_key" in
  let __resource =
    {
      application_insights_id;
      name;
      read_permissions;
      write_permissions;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_application_insights_api_key __resource);
  ()

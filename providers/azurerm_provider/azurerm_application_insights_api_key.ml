(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_application_insights_api_key__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_application_insights_api_key__timeouts *)

type azurerm_application_insights_api_key = {
  application_insights_id : string prop;
      (** application_insights_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  read_permissions : string prop list option; [@option]
      (** read_permissions *)
  write_permissions : string prop list option; [@option]
      (** write_permissions *)
  timeouts : azurerm_application_insights_api_key__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_application_insights_api_key *)

let azurerm_application_insights_api_key ?id ?read_permissions
    ?write_permissions ?timeouts ~application_insights_id ~name
    __resource_id =
  let __resource_type = "azurerm_application_insights_api_key" in
  let __resource =
    {
      application_insights_id;
      id;
      name;
      read_permissions;
      write_permissions;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_application_insights_api_key __resource);
  ()

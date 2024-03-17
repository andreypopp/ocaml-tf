(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_postgresql_flexible_server_configuration__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_postgresql_flexible_server_configuration__timeouts *)

type azurerm_postgresql_flexible_server_configuration = {
  name : string;  (** name *)
  server_id : string;  (** server_id *)
  value : string;  (** value *)
  timeouts :
    azurerm_postgresql_flexible_server_configuration__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_postgresql_flexible_server_configuration *)

let azurerm_postgresql_flexible_server_configuration ?timeouts ~name
    ~server_id ~value __resource_id =
  let __resource_type =
    "azurerm_postgresql_flexible_server_configuration"
  in
  let __resource = { name; server_id; value; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_postgresql_flexible_server_configuration
       __resource);
  ()

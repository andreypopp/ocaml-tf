(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mysql_flexible_server_configuration__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mysql_flexible_server_configuration__timeouts *)

type azurerm_mysql_flexible_server_configuration = {
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  server_name : string;  (** server_name *)
  value : string;  (** value *)
  timeouts :
    azurerm_mysql_flexible_server_configuration__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mysql_flexible_server_configuration *)

let azurerm_mysql_flexible_server_configuration ?id ?timeouts ~name
    ~resource_group_name ~server_name ~value __resource_id =
  let __resource_type =
    "azurerm_mysql_flexible_server_configuration"
  in
  let __resource =
    { id; name; resource_group_name; server_name; value; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mysql_flexible_server_configuration __resource);
  ()

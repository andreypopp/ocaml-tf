(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_mysql_configuration__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_mysql_configuration__timeouts *)

type azurerm_mysql_configuration = {
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  server_name : string;  (** server_name *)
  value : string;  (** value *)
  timeouts : azurerm_mysql_configuration__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mysql_configuration *)

let azurerm_mysql_configuration ?timeouts ~name ~resource_group_name
    ~server_name ~value __resource_id =
  let __resource_type = "azurerm_mysql_configuration" in
  let __resource =
    { name; resource_group_name; server_name; value; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mysql_configuration __resource);
  ()

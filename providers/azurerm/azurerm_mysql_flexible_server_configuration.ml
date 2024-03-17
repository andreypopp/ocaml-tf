(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mysql_flexible_server_configuration__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mysql_flexible_server_configuration__timeouts *)

type azurerm_mysql_flexible_server_configuration = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  server_name : string prop;  (** server_name *)
  value : string prop;  (** value *)
  timeouts :
    azurerm_mysql_flexible_server_configuration__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mysql_flexible_server_configuration *)

type t = {
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  server_name : string prop;
  value : string prop;
}

let azurerm_mysql_flexible_server_configuration ?id ?timeouts ~name
    ~resource_group_name ~server_name ~value __resource_id =
  let __resource_type =
    "azurerm_mysql_flexible_server_configuration"
  in
  let __resource =
    ({ id; name; resource_group_name; server_name; value; timeouts }
      : azurerm_mysql_flexible_server_configuration)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mysql_flexible_server_configuration __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       server_name =
         Prop.computed __resource_type __resource_id "server_name";
       value = Prop.computed __resource_type __resource_id "value";
     }
      : t)
  in
  __resource_attributes

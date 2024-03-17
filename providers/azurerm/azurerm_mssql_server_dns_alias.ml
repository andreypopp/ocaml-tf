(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mssql_server_dns_alias__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_mssql_server_dns_alias__timeouts *)

type azurerm_mssql_server_dns_alias = {
  id : string prop option; [@option]  (** id *)
  mssql_server_id : string prop;  (** mssql_server_id *)
  name : string prop;  (** name *)
  timeouts : azurerm_mssql_server_dns_alias__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_server_dns_alias *)

type t = {
  dns_record : string prop;
  id : string prop;
  mssql_server_id : string prop;
  name : string prop;
}

let azurerm_mssql_server_dns_alias ?id ?timeouts ~mssql_server_id
    ~name __resource_id =
  let __resource_type = "azurerm_mssql_server_dns_alias" in
  let __resource =
    ({ id; mssql_server_id; name; timeouts }
      : azurerm_mssql_server_dns_alias)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_server_dns_alias __resource);
  let __resource_attributes =
    ({
       dns_record =
         Prop.computed __resource_type __resource_id "dns_record";
       id = Prop.computed __resource_type __resource_id "id";
       mssql_server_id =
         Prop.computed __resource_type __resource_id
           "mssql_server_id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes

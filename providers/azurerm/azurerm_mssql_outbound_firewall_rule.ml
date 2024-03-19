(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_mssql_outbound_firewall_rule = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  server_id : string prop;  (** server_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_outbound_firewall_rule *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_mssql_outbound_firewall_rule ?id ?timeouts ~name
    ~server_id () : azurerm_mssql_outbound_firewall_rule =
  { id; name; server_id; timeouts }

type t = {
  id : string prop;
  name : string prop;
  server_id : string prop;
}

let register ?tf_module ?id ?timeouts ~name ~server_id __resource_id
    =
  let __resource_type = "azurerm_mssql_outbound_firewall_rule" in
  let __resource =
    azurerm_mssql_outbound_firewall_rule ?id ?timeouts ~name
      ~server_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_outbound_firewall_rule __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       server_id =
         Prop.computed __resource_type __resource_id "server_id";
     }
      : t)
  in
  __resource_attributes

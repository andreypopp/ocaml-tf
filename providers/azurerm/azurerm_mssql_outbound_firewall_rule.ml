(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?timeouts ~name ~server_id __id =
  let __type = "azurerm_mssql_outbound_firewall_rule" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       server_id = Prop.computed __type __id "server_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mssql_outbound_firewall_rule
        (azurerm_mssql_outbound_firewall_rule ?id ?timeouts ~name
           ~server_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~server_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~server_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

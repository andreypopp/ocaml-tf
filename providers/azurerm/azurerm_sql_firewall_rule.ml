(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_sql_firewall_rule = {
  end_ip_address : string prop;  (** end_ip_address *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  server_name : string prop;  (** server_name *)
  start_ip_address : string prop;  (** start_ip_address *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sql_firewall_rule *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sql_firewall_rule ?id ?timeouts ~end_ip_address ~name
    ~resource_group_name ~server_name ~start_ip_address () :
    azurerm_sql_firewall_rule =
  {
    end_ip_address;
    id;
    name;
    resource_group_name;
    server_name;
    start_ip_address;
    timeouts;
  }

type t = {
  end_ip_address : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  server_name : string prop;
  start_ip_address : string prop;
}

let make ?id ?timeouts ~end_ip_address ~name ~resource_group_name
    ~server_name ~start_ip_address __id =
  let __type = "azurerm_sql_firewall_rule" in
  let __attrs =
    ({
       end_ip_address = Prop.computed __type __id "end_ip_address";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       server_name = Prop.computed __type __id "server_name";
       start_ip_address =
         Prop.computed __type __id "start_ip_address";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sql_firewall_rule
        (azurerm_sql_firewall_rule ?id ?timeouts ~end_ip_address
           ~name ~resource_group_name ~server_name ~start_ip_address
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~end_ip_address ~name
    ~resource_group_name ~server_name ~start_ip_address __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~end_ip_address ~name ~resource_group_name
      ~server_name ~start_ip_address __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

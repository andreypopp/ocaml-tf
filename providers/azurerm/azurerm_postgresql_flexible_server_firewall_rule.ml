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

type azurerm_postgresql_flexible_server_firewall_rule = {
  end_ip_address : string prop;  (** end_ip_address *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  server_id : string prop;  (** server_id *)
  start_ip_address : string prop;  (** start_ip_address *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_postgresql_flexible_server_firewall_rule *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_postgresql_flexible_server_firewall_rule ?id ?timeouts
    ~end_ip_address ~name ~server_id ~start_ip_address () :
    azurerm_postgresql_flexible_server_firewall_rule =
  { end_ip_address; id; name; server_id; start_ip_address; timeouts }

type t = {
  end_ip_address : string prop;
  id : string prop;
  name : string prop;
  server_id : string prop;
  start_ip_address : string prop;
}

let make ?id ?timeouts ~end_ip_address ~name ~server_id
    ~start_ip_address __id =
  let __type = "azurerm_postgresql_flexible_server_firewall_rule" in
  let __attrs =
    ({
       end_ip_address = Prop.computed __type __id "end_ip_address";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       server_id = Prop.computed __type __id "server_id";
       start_ip_address =
         Prop.computed __type __id "start_ip_address";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_postgresql_flexible_server_firewall_rule
        (azurerm_postgresql_flexible_server_firewall_rule ?id
           ?timeouts ~end_ip_address ~name ~server_id
           ~start_ip_address ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~end_ip_address ~name
    ~server_id ~start_ip_address __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~end_ip_address ~name ~server_id
      ~start_ip_address __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

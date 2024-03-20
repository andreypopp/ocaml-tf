(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_mssql_server_dns_alias = {
  id : string prop option; [@option]  (** id *)
  mssql_server_id : string prop;  (** mssql_server_id *)
  name : string prop;  (** name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_server_dns_alias *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_mssql_server_dns_alias ?id ?timeouts ~mssql_server_id
    ~name () : azurerm_mssql_server_dns_alias =
  { id; mssql_server_id; name; timeouts }

type t = {
  dns_record : string prop;
  id : string prop;
  mssql_server_id : string prop;
  name : string prop;
}

let make ?id ?timeouts ~mssql_server_id ~name __id =
  let __type = "azurerm_mssql_server_dns_alias" in
  let __attrs =
    ({
       dns_record = Prop.computed __type __id "dns_record";
       id = Prop.computed __type __id "id";
       mssql_server_id = Prop.computed __type __id "mssql_server_id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mssql_server_dns_alias
        (azurerm_mssql_server_dns_alias ?id ?timeouts
           ~mssql_server_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~mssql_server_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~mssql_server_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

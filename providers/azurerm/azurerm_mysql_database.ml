(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_mysql_database = {
  charset : string prop;  (** charset *)
  collation : string prop;  (** collation *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  server_name : string prop;  (** server_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mysql_database *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_mysql_database ?id ?timeouts ~charset ~collation ~name
    ~resource_group_name ~server_name () : azurerm_mysql_database =
  {
    charset;
    collation;
    id;
    name;
    resource_group_name;
    server_name;
    timeouts;
  }

type t = {
  charset : string prop;
  collation : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  server_name : string prop;
}

let make ?id ?timeouts ~charset ~collation ~name ~resource_group_name
    ~server_name __id =
  let __type = "azurerm_mysql_database" in
  let __attrs =
    ({
       charset = Prop.computed __type __id "charset";
       collation = Prop.computed __type __id "collation";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       server_name = Prop.computed __type __id "server_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mysql_database
        (azurerm_mysql_database ?id ?timeouts ~charset ~collation
           ~name ~resource_group_name ~server_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~charset ~collation ~name
    ~resource_group_name ~server_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~charset ~collation ~name ~resource_group_name
      ~server_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

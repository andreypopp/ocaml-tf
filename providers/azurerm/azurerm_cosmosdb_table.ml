(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type autoscale_settings = {
  max_throughput : float prop option; [@option]  (** max_throughput *)
}
[@@deriving yojson_of]
(** autoscale_settings *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_cosmosdb_table = {
  account_name : string prop;  (** account_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  throughput : float prop option; [@option]  (** throughput *)
  autoscale_settings : autoscale_settings list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_table *)

let autoscale_settings ?max_throughput () : autoscale_settings =
  { max_throughput }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cosmosdb_table ?id ?throughput ?timeouts ~account_name
    ~name ~resource_group_name ~autoscale_settings () :
    azurerm_cosmosdb_table =
  {
    account_name;
    id;
    name;
    resource_group_name;
    throughput;
    autoscale_settings;
    timeouts;
  }

type t = {
  account_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  throughput : float prop;
}

let make ?id ?throughput ?timeouts ~account_name ~name
    ~resource_group_name ~autoscale_settings __id =
  let __type = "azurerm_cosmosdb_table" in
  let __attrs =
    ({
       account_name = Prop.computed __type __id "account_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       throughput = Prop.computed __type __id "throughput";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cosmosdb_table
        (azurerm_cosmosdb_table ?id ?throughput ?timeouts
           ~account_name ~name ~resource_group_name
           ~autoscale_settings ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?throughput ?timeouts ~account_name ~name
    ~resource_group_name ~autoscale_settings __id =
  let (r : _ Tf_core.resource) =
    make ?id ?throughput ?timeouts ~account_name ~name
      ~resource_group_name ~autoscale_settings __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

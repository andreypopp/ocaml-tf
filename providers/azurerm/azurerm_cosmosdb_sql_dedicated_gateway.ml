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

type azurerm_cosmosdb_sql_dedicated_gateway = {
  cosmosdb_account_id : string prop;  (** cosmosdb_account_id *)
  id : string prop option; [@option]  (** id *)
  instance_count : float prop;  (** instance_count *)
  instance_size : string prop;  (** instance_size *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_dedicated_gateway *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cosmosdb_sql_dedicated_gateway ?id ?timeouts
    ~cosmosdb_account_id ~instance_count ~instance_size () :
    azurerm_cosmosdb_sql_dedicated_gateway =
  {
    cosmosdb_account_id;
    id;
    instance_count;
    instance_size;
    timeouts;
  }

type t = {
  cosmosdb_account_id : string prop;
  id : string prop;
  instance_count : float prop;
  instance_size : string prop;
}

let make ?id ?timeouts ~cosmosdb_account_id ~instance_count
    ~instance_size __id =
  let __type = "azurerm_cosmosdb_sql_dedicated_gateway" in
  let __attrs =
    ({
       cosmosdb_account_id =
         Prop.computed __type __id "cosmosdb_account_id";
       id = Prop.computed __type __id "id";
       instance_count = Prop.computed __type __id "instance_count";
       instance_size = Prop.computed __type __id "instance_size";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cosmosdb_sql_dedicated_gateway
        (azurerm_cosmosdb_sql_dedicated_gateway ?id ?timeouts
           ~cosmosdb_account_id ~instance_count ~instance_size ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~cosmosdb_account_id
    ~instance_count ~instance_size __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~cosmosdb_account_id ~instance_count
      ~instance_size __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

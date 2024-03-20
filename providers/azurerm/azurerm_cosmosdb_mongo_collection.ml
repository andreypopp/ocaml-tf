(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type autoscale_settings = {
  max_throughput : float prop option; [@option]  (** max_throughput *)
}
[@@deriving yojson_of]
(** autoscale_settings *)

type index = {
  keys : string prop list;  (** keys *)
  unique : bool prop option; [@option]  (** unique *)
}
[@@deriving yojson_of]
(** index *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type system_indexes = {
  keys : string prop list;  (** keys *)
  unique : bool prop;  (** unique *)
}
[@@deriving yojson_of]

type azurerm_cosmosdb_mongo_collection = {
  account_name : string prop;  (** account_name *)
  analytical_storage_ttl : float prop option; [@option]
      (** analytical_storage_ttl *)
  database_name : string prop;  (** database_name *)
  default_ttl_seconds : float prop option; [@option]
      (** default_ttl_seconds *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  shard_key : string prop option; [@option]  (** shard_key *)
  throughput : float prop option; [@option]  (** throughput *)
  autoscale_settings : autoscale_settings list;
  index : index list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_mongo_collection *)

let autoscale_settings ?max_throughput () : autoscale_settings =
  { max_throughput }

let index ?unique ~keys () : index = { keys; unique }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cosmosdb_mongo_collection ?analytical_storage_ttl
    ?default_ttl_seconds ?id ?shard_key ?throughput ?timeouts
    ~account_name ~database_name ~name ~resource_group_name
    ~autoscale_settings ~index () : azurerm_cosmosdb_mongo_collection
    =
  {
    account_name;
    analytical_storage_ttl;
    database_name;
    default_ttl_seconds;
    id;
    name;
    resource_group_name;
    shard_key;
    throughput;
    autoscale_settings;
    index;
    timeouts;
  }

type t = {
  account_name : string prop;
  analytical_storage_ttl : float prop;
  database_name : string prop;
  default_ttl_seconds : float prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  shard_key : string prop;
  system_indexes : system_indexes list prop;
  throughput : float prop;
}

let make ?analytical_storage_ttl ?default_ttl_seconds ?id ?shard_key
    ?throughput ?timeouts ~account_name ~database_name ~name
    ~resource_group_name ~autoscale_settings ~index __id =
  let __type = "azurerm_cosmosdb_mongo_collection" in
  let __attrs =
    ({
       account_name = Prop.computed __type __id "account_name";
       analytical_storage_ttl =
         Prop.computed __type __id "analytical_storage_ttl";
       database_name = Prop.computed __type __id "database_name";
       default_ttl_seconds =
         Prop.computed __type __id "default_ttl_seconds";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       shard_key = Prop.computed __type __id "shard_key";
       system_indexes = Prop.computed __type __id "system_indexes";
       throughput = Prop.computed __type __id "throughput";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cosmosdb_mongo_collection
        (azurerm_cosmosdb_mongo_collection ?analytical_storage_ttl
           ?default_ttl_seconds ?id ?shard_key ?throughput ?timeouts
           ~account_name ~database_name ~name ~resource_group_name
           ~autoscale_settings ~index ());
    attrs = __attrs;
  }

let register ?tf_module ?analytical_storage_ttl ?default_ttl_seconds
    ?id ?shard_key ?throughput ?timeouts ~account_name ~database_name
    ~name ~resource_group_name ~autoscale_settings ~index __id =
  let (r : _ Tf_core.resource) =
    make ?analytical_storage_ttl ?default_ttl_seconds ?id ?shard_key
      ?throughput ?timeouts ~account_name ~database_name ~name
      ~resource_group_name ~autoscale_settings ~index __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

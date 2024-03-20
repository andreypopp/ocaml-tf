(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type autoscale_settings = {
  max_throughput : float prop option; [@option]  (** max_throughput *)
}
[@@deriving yojson_of]
(** autoscale_settings *)

type schema__cluster_key = {
  name : string prop;  (** name *)
  order_by : string prop;  (** order_by *)
}
[@@deriving yojson_of]
(** schema__cluster_key *)

type schema__column = {
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** schema__column *)

type schema__partition_key = { name : string prop  (** name *) }
[@@deriving yojson_of]
(** schema__partition_key *)

type schema = {
  cluster_key : schema__cluster_key list;
  column : schema__column list;
  partition_key : schema__partition_key list;
}
[@@deriving yojson_of]
(** schema *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_cosmosdb_cassandra_table = {
  analytical_storage_ttl : float prop option; [@option]
      (** analytical_storage_ttl *)
  cassandra_keyspace_id : string prop;  (** cassandra_keyspace_id *)
  default_ttl : float prop option; [@option]  (** default_ttl *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  throughput : float prop option; [@option]  (** throughput *)
  autoscale_settings : autoscale_settings list;
  schema : schema list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_cassandra_table *)

let autoscale_settings ?max_throughput () : autoscale_settings =
  { max_throughput }

let schema__cluster_key ~name ~order_by () : schema__cluster_key =
  { name; order_by }

let schema__column ~name ~type_ () : schema__column = { name; type_ }
let schema__partition_key ~name () : schema__partition_key = { name }

let schema ~cluster_key ~column ~partition_key () : schema =
  { cluster_key; column; partition_key }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cosmosdb_cassandra_table ?analytical_storage_ttl
    ?default_ttl ?id ?throughput ?timeouts ~cassandra_keyspace_id
    ~name ~autoscale_settings ~schema () :
    azurerm_cosmosdb_cassandra_table =
  {
    analytical_storage_ttl;
    cassandra_keyspace_id;
    default_ttl;
    id;
    name;
    throughput;
    autoscale_settings;
    schema;
    timeouts;
  }

type t = {
  analytical_storage_ttl : float prop;
  cassandra_keyspace_id : string prop;
  default_ttl : float prop;
  id : string prop;
  name : string prop;
  throughput : float prop;
}

let make ?analytical_storage_ttl ?default_ttl ?id ?throughput
    ?timeouts ~cassandra_keyspace_id ~name ~autoscale_settings
    ~schema __id =
  let __type = "azurerm_cosmosdb_cassandra_table" in
  let __attrs =
    ({
       analytical_storage_ttl =
         Prop.computed __type __id "analytical_storage_ttl";
       cassandra_keyspace_id =
         Prop.computed __type __id "cassandra_keyspace_id";
       default_ttl = Prop.computed __type __id "default_ttl";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       throughput = Prop.computed __type __id "throughput";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cosmosdb_cassandra_table
        (azurerm_cosmosdb_cassandra_table ?analytical_storage_ttl
           ?default_ttl ?id ?throughput ?timeouts
           ~cassandra_keyspace_id ~name ~autoscale_settings ~schema
           ());
    attrs = __attrs;
  }

let register ?tf_module ?analytical_storage_ttl ?default_ttl ?id
    ?throughput ?timeouts ~cassandra_keyspace_id ~name
    ~autoscale_settings ~schema __id =
  let (r : _ Tf_core.resource) =
    make ?analytical_storage_ttl ?default_ttl ?id ?throughput
      ?timeouts ~cassandra_keyspace_id ~name ~autoscale_settings
      ~schema __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

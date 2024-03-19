(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

type azurerm_cosmosdb_mongo_database = {
  account_name : string prop;  (** account_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  throughput : float prop option; [@option]  (** throughput *)
  autoscale_settings : autoscale_settings list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_mongo_database *)

let autoscale_settings ?max_throughput () : autoscale_settings =
  { max_throughput }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cosmosdb_mongo_database ?id ?throughput ?timeouts
    ~account_name ~name ~resource_group_name ~autoscale_settings () :
    azurerm_cosmosdb_mongo_database =
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

let register ?tf_module ?id ?throughput ?timeouts ~account_name ~name
    ~resource_group_name ~autoscale_settings __resource_id =
  let __resource_type = "azurerm_cosmosdb_mongo_database" in
  let __resource =
    azurerm_cosmosdb_mongo_database ?id ?throughput ?timeouts
      ~account_name ~name ~resource_group_name ~autoscale_settings ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_mongo_database __resource);
  let __resource_attributes =
    ({
       account_name =
         Prop.computed __resource_type __resource_id "account_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       throughput =
         Prop.computed __resource_type __resource_id "throughput";
     }
      : t)
  in
  __resource_attributes

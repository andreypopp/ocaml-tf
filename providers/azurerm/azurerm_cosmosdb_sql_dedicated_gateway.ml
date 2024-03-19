(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?timeouts ~cosmosdb_account_id
    ~instance_count ~instance_size __resource_id =
  let __resource_type = "azurerm_cosmosdb_sql_dedicated_gateway" in
  let __resource =
    azurerm_cosmosdb_sql_dedicated_gateway ?id ?timeouts
      ~cosmosdb_account_id ~instance_count ~instance_size ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_sql_dedicated_gateway __resource);
  let __resource_attributes =
    ({
       cosmosdb_account_id =
         Prop.computed __resource_type __resource_id
           "cosmosdb_account_id";
       id = Prop.computed __resource_type __resource_id "id";
       instance_count =
         Prop.computed __resource_type __resource_id "instance_count";
       instance_size =
         Prop.computed __resource_type __resource_id "instance_size";
     }
      : t)
  in
  __resource_attributes

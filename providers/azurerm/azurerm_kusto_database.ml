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

type azurerm_kusto_database = {
  cluster_name : string prop;  (** cluster_name *)
  hot_cache_period : string prop option; [@option]
      (** hot_cache_period *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  soft_delete_period : string prop option; [@option]
      (** soft_delete_period *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kusto_database *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_kusto_database ?hot_cache_period ?id ?soft_delete_period
    ?timeouts ~cluster_name ~location ~name ~resource_group_name () :
    azurerm_kusto_database =
  {
    cluster_name;
    hot_cache_period;
    id;
    location;
    name;
    resource_group_name;
    soft_delete_period;
    timeouts;
  }

type t = {
  cluster_name : string prop;
  hot_cache_period : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  size : float prop;
  soft_delete_period : string prop;
}

let register ?tf_module ?hot_cache_period ?id ?soft_delete_period
    ?timeouts ~cluster_name ~location ~name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_kusto_database" in
  let __resource =
    azurerm_kusto_database ?hot_cache_period ?id ?soft_delete_period
      ?timeouts ~cluster_name ~location ~name ~resource_group_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_kusto_database __resource);
  let __resource_attributes =
    ({
       cluster_name =
         Prop.computed __resource_type __resource_id "cluster_name";
       hot_cache_period =
         Prop.computed __resource_type __resource_id
           "hot_cache_period";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       size = Prop.computed __resource_type __resource_id "size";
       soft_delete_period =
         Prop.computed __resource_type __resource_id
           "soft_delete_period";
     }
      : t)
  in
  __resource_attributes

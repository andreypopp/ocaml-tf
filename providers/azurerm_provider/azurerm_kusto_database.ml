(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_kusto_database__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_kusto_database__timeouts *)

type azurerm_kusto_database = {
  cluster_name : string;  (** cluster_name *)
  hot_cache_period : string option; [@option]
      (** hot_cache_period *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  soft_delete_period : string option; [@option]
      (** soft_delete_period *)
  timeouts : azurerm_kusto_database__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kusto_database *)

let azurerm_kusto_database ?hot_cache_period ?soft_delete_period
    ?timeouts ~cluster_name ~location ~name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_kusto_database" in
  let __resource =
    {
      cluster_name;
      hot_cache_period;
      location;
      name;
      resource_group_name;
      soft_delete_period;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_kusto_database __resource);
  ()

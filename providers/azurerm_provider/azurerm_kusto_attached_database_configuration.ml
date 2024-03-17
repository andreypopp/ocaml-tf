(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_kusto_attached_database_configuration__sharing = {
  external_tables_to_exclude : string prop list option; [@option]
      (** external_tables_to_exclude *)
  external_tables_to_include : string prop list option; [@option]
      (** external_tables_to_include *)
  materialized_views_to_exclude : string prop list option; [@option]
      (** materialized_views_to_exclude *)
  materialized_views_to_include : string prop list option; [@option]
      (** materialized_views_to_include *)
  tables_to_exclude : string prop list option; [@option]
      (** tables_to_exclude *)
  tables_to_include : string prop list option; [@option]
      (** tables_to_include *)
}
[@@deriving yojson_of]
(** azurerm_kusto_attached_database_configuration__sharing *)

type azurerm_kusto_attached_database_configuration__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_kusto_attached_database_configuration__timeouts *)

type azurerm_kusto_attached_database_configuration = {
  cluster_name : string prop;  (** cluster_name *)
  cluster_resource_id : string prop;  (** cluster_resource_id *)
  database_name : string prop;  (** database_name *)
  default_principal_modification_kind : string prop option; [@option]
      (** default_principal_modification_kind *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sharing :
    azurerm_kusto_attached_database_configuration__sharing list;
  timeouts :
    azurerm_kusto_attached_database_configuration__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kusto_attached_database_configuration *)

let azurerm_kusto_attached_database_configuration
    ?default_principal_modification_kind ?id ?timeouts ~cluster_name
    ~cluster_resource_id ~database_name ~location ~name
    ~resource_group_name ~sharing __resource_id =
  let __resource_type =
    "azurerm_kusto_attached_database_configuration"
  in
  let __resource =
    {
      cluster_name;
      cluster_resource_id;
      database_name;
      default_principal_modification_kind;
      id;
      location;
      name;
      resource_group_name;
      sharing;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_kusto_attached_database_configuration
       __resource);
  ()

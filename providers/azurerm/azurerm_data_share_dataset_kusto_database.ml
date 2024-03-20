(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_data_share_dataset_kusto_database = {
  id : string prop option; [@option]  (** id *)
  kusto_database_id : string prop;  (** kusto_database_id *)
  name : string prop;  (** name *)
  share_id : string prop;  (** share_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_share_dataset_kusto_database *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_data_share_dataset_kusto_database ?id ?timeouts
    ~kusto_database_id ~name ~share_id () :
    azurerm_data_share_dataset_kusto_database =
  { id; kusto_database_id; name; share_id; timeouts }

type t = {
  display_name : string prop;
  id : string prop;
  kusto_cluster_location : string prop;
  kusto_database_id : string prop;
  name : string prop;
  share_id : string prop;
}

let make ?id ?timeouts ~kusto_database_id ~name ~share_id __id =
  let __type = "azurerm_data_share_dataset_kusto_database" in
  let __attrs =
    ({
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       kusto_cluster_location =
         Prop.computed __type __id "kusto_cluster_location";
       kusto_database_id =
         Prop.computed __type __id "kusto_database_id";
       name = Prop.computed __type __id "name";
       share_id = Prop.computed __type __id "share_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_share_dataset_kusto_database
        (azurerm_data_share_dataset_kusto_database ?id ?timeouts
           ~kusto_database_id ~name ~share_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~kusto_database_id ~name
    ~share_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~kusto_database_id ~name ~share_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

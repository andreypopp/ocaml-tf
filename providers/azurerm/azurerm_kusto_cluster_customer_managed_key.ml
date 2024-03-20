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

type azurerm_kusto_cluster_customer_managed_key = {
  cluster_id : string prop;  (** cluster_id *)
  id : string prop option; [@option]  (** id *)
  key_name : string prop;  (** key_name *)
  key_vault_id : string prop;  (** key_vault_id *)
  key_version : string prop option; [@option]  (** key_version *)
  user_identity : string prop option; [@option]  (** user_identity *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kusto_cluster_customer_managed_key *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_kusto_cluster_customer_managed_key ?id ?key_version
    ?user_identity ?timeouts ~cluster_id ~key_name ~key_vault_id () :
    azurerm_kusto_cluster_customer_managed_key =
  {
    cluster_id;
    id;
    key_name;
    key_vault_id;
    key_version;
    user_identity;
    timeouts;
  }

type t = {
  cluster_id : string prop;
  id : string prop;
  key_name : string prop;
  key_vault_id : string prop;
  key_version : string prop;
  user_identity : string prop;
}

let make ?id ?key_version ?user_identity ?timeouts ~cluster_id
    ~key_name ~key_vault_id __id =
  let __type = "azurerm_kusto_cluster_customer_managed_key" in
  let __attrs =
    ({
       cluster_id = Prop.computed __type __id "cluster_id";
       id = Prop.computed __type __id "id";
       key_name = Prop.computed __type __id "key_name";
       key_vault_id = Prop.computed __type __id "key_vault_id";
       key_version = Prop.computed __type __id "key_version";
       user_identity = Prop.computed __type __id "user_identity";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_kusto_cluster_customer_managed_key
        (azurerm_kusto_cluster_customer_managed_key ?id ?key_version
           ?user_identity ?timeouts ~cluster_id ~key_name
           ~key_vault_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?key_version ?user_identity ?timeouts
    ~cluster_id ~key_name ~key_vault_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?key_version ?user_identity ?timeouts ~cluster_id
      ~key_name ~key_vault_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_netapp_snapshot = {
  account_name : string prop;  (** account_name *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  pool_name : string prop;  (** pool_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  volume_name : string prop;  (** volume_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_netapp_snapshot *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_netapp_snapshot ?id ?timeouts ~account_name ~location
    ~name ~pool_name ~resource_group_name ~volume_name () :
    azurerm_netapp_snapshot =
  {
    account_name;
    id;
    location;
    name;
    pool_name;
    resource_group_name;
    volume_name;
    timeouts;
  }

type t = {
  account_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  pool_name : string prop;
  resource_group_name : string prop;
  volume_name : string prop;
}

let make ?id ?timeouts ~account_name ~location ~name ~pool_name
    ~resource_group_name ~volume_name __id =
  let __type = "azurerm_netapp_snapshot" in
  let __attrs =
    ({
       account_name = Prop.computed __type __id "account_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       pool_name = Prop.computed __type __id "pool_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       volume_name = Prop.computed __type __id "volume_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_netapp_snapshot
        (azurerm_netapp_snapshot ?id ?timeouts ~account_name
           ~location ~name ~pool_name ~resource_group_name
           ~volume_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~account_name ~location ~name
    ~pool_name ~resource_group_name ~volume_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~account_name ~location ~name ~pool_name
      ~resource_group_name ~volume_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

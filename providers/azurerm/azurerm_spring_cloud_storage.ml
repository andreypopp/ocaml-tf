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

type azurerm_spring_cloud_storage = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  spring_cloud_service_id : string prop;
      (** spring_cloud_service_id *)
  storage_account_key : string prop;  (** storage_account_key *)
  storage_account_name : string prop;  (** storage_account_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_storage *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_storage ?id ?timeouts ~name
    ~spring_cloud_service_id ~storage_account_key
    ~storage_account_name () : azurerm_spring_cloud_storage =
  {
    id;
    name;
    spring_cloud_service_id;
    storage_account_key;
    storage_account_name;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  spring_cloud_service_id : string prop;
  storage_account_key : string prop;
  storage_account_name : string prop;
}

let make ?id ?timeouts ~name ~spring_cloud_service_id
    ~storage_account_key ~storage_account_name __id =
  let __type = "azurerm_spring_cloud_storage" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       spring_cloud_service_id =
         Prop.computed __type __id "spring_cloud_service_id";
       storage_account_key =
         Prop.computed __type __id "storage_account_key";
       storage_account_name =
         Prop.computed __type __id "storage_account_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_storage
        (azurerm_spring_cloud_storage ?id ?timeouts ~name
           ~spring_cloud_service_id ~storage_account_key
           ~storage_account_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~spring_cloud_service_id
    ~storage_account_key ~storage_account_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~spring_cloud_service_id
      ~storage_account_key ~storage_account_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

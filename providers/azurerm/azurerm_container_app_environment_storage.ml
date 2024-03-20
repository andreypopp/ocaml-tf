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

type azurerm_container_app_environment_storage = {
  access_key : string prop;  (** The Storage Account Access Key. *)
  access_mode : string prop;
      (** The access mode to connect this storage to the Container App. Possible values include `ReadOnly` and `ReadWrite`. *)
  account_name : string prop;
      (** The Azure Storage Account in which the Share to be used is located. *)
  container_app_environment_id : string prop;
      (** The ID of the Container App Environment to which this storage belongs. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** The name for this Storage. *)
  share_name : string prop;
      (** The name of the Azure Storage Share to use. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_container_app_environment_storage *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_container_app_environment_storage ?id ?timeouts
    ~access_key ~access_mode ~account_name
    ~container_app_environment_id ~name ~share_name () :
    azurerm_container_app_environment_storage =
  {
    access_key;
    access_mode;
    account_name;
    container_app_environment_id;
    id;
    name;
    share_name;
    timeouts;
  }

type t = {
  access_key : string prop;
  access_mode : string prop;
  account_name : string prop;
  container_app_environment_id : string prop;
  id : string prop;
  name : string prop;
  share_name : string prop;
}

let make ?id ?timeouts ~access_key ~access_mode ~account_name
    ~container_app_environment_id ~name ~share_name __id =
  let __type = "azurerm_container_app_environment_storage" in
  let __attrs =
    ({
       access_key = Prop.computed __type __id "access_key";
       access_mode = Prop.computed __type __id "access_mode";
       account_name = Prop.computed __type __id "account_name";
       container_app_environment_id =
         Prop.computed __type __id "container_app_environment_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       share_name = Prop.computed __type __id "share_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_container_app_environment_storage
        (azurerm_container_app_environment_storage ?id ?timeouts
           ~access_key ~access_mode ~account_name
           ~container_app_environment_id ~name ~share_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~access_key ~access_mode
    ~account_name ~container_app_environment_id ~name ~share_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~access_key ~access_mode ~account_name
      ~container_app_environment_id ~name ~share_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

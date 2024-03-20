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

type azurerm_virtual_desktop_host_pool_registration_info = {
  expiration_date : string prop;  (** expiration_date *)
  hostpool_id : string prop;  (** hostpool_id *)
  id : string prop option; [@option]  (** id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_desktop_host_pool_registration_info *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_desktop_host_pool_registration_info ?id ?timeouts
    ~expiration_date ~hostpool_id () :
    azurerm_virtual_desktop_host_pool_registration_info =
  { expiration_date; hostpool_id; id; timeouts }

type t = {
  expiration_date : string prop;
  hostpool_id : string prop;
  id : string prop;
  token : string prop;
}

let make ?id ?timeouts ~expiration_date ~hostpool_id __id =
  let __type =
    "azurerm_virtual_desktop_host_pool_registration_info"
  in
  let __attrs =
    ({
       expiration_date = Prop.computed __type __id "expiration_date";
       hostpool_id = Prop.computed __type __id "hostpool_id";
       id = Prop.computed __type __id "id";
       token = Prop.computed __type __id "token";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_desktop_host_pool_registration_info
        (azurerm_virtual_desktop_host_pool_registration_info ?id
           ?timeouts ~expiration_date ~hostpool_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~expiration_date ~hostpool_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~expiration_date ~hostpool_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

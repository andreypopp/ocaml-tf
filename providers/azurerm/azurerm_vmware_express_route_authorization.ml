(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_vmware_express_route_authorization = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  private_cloud_id : string prop;  (** private_cloud_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_vmware_express_route_authorization *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_vmware_express_route_authorization ?id ?timeouts ~name
    ~private_cloud_id () : azurerm_vmware_express_route_authorization
    =
  { id; name; private_cloud_id; timeouts }

type t = {
  express_route_authorization_id : string prop;
  express_route_authorization_key : string prop;
  id : string prop;
  name : string prop;
  private_cloud_id : string prop;
}

let make ?id ?timeouts ~name ~private_cloud_id __id =
  let __type = "azurerm_vmware_express_route_authorization" in
  let __attrs =
    ({
       express_route_authorization_id =
         Prop.computed __type __id "express_route_authorization_id";
       express_route_authorization_key =
         Prop.computed __type __id "express_route_authorization_key";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       private_cloud_id =
         Prop.computed __type __id "private_cloud_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_vmware_express_route_authorization
        (azurerm_vmware_express_route_authorization ?id ?timeouts
           ~name ~private_cloud_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~private_cloud_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~private_cloud_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

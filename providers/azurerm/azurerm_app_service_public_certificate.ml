(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_app_service_public_certificate = {
  app_service_name : string prop;  (** app_service_name *)
  blob : string prop;  (** blob *)
  certificate_location : string prop;  (** certificate_location *)
  certificate_name : string prop;  (** certificate_name *)
  id : string prop option; [@option]  (** id *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_public_certificate *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_app_service_public_certificate ?id ?timeouts
    ~app_service_name ~blob ~certificate_location ~certificate_name
    ~resource_group_name () : azurerm_app_service_public_certificate
    =
  {
    app_service_name;
    blob;
    certificate_location;
    certificate_name;
    id;
    resource_group_name;
    timeouts;
  }

type t = {
  app_service_name : string prop;
  blob : string prop;
  certificate_location : string prop;
  certificate_name : string prop;
  id : string prop;
  resource_group_name : string prop;
  thumbprint : string prop;
}

let make ?id ?timeouts ~app_service_name ~blob ~certificate_location
    ~certificate_name ~resource_group_name __id =
  let __type = "azurerm_app_service_public_certificate" in
  let __attrs =
    ({
       app_service_name =
         Prop.computed __type __id "app_service_name";
       blob = Prop.computed __type __id "blob";
       certificate_location =
         Prop.computed __type __id "certificate_location";
       certificate_name =
         Prop.computed __type __id "certificate_name";
       id = Prop.computed __type __id "id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       thumbprint = Prop.computed __type __id "thumbprint";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_app_service_public_certificate
        (azurerm_app_service_public_certificate ?id ?timeouts
           ~app_service_name ~blob ~certificate_location
           ~certificate_name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~app_service_name ~blob
    ~certificate_location ~certificate_name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~app_service_name ~blob ~certificate_location
      ~certificate_name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

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

type azurerm_iothub_dps_certificate = {
  certificate_content : string prop;  (** certificate_content *)
  id : string prop option; [@option]  (** id *)
  iot_dps_name : string prop;  (** iot_dps_name *)
  is_verified : bool prop option; [@option]  (** is_verified *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_dps_certificate *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iothub_dps_certificate ?id ?is_verified ?timeouts
    ~certificate_content ~iot_dps_name ~name ~resource_group_name ()
    : azurerm_iothub_dps_certificate =
  {
    certificate_content;
    id;
    iot_dps_name;
    is_verified;
    name;
    resource_group_name;
    timeouts;
  }

type t = {
  certificate_content : string prop;
  id : string prop;
  iot_dps_name : string prop;
  is_verified : bool prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?id ?is_verified ?timeouts ~certificate_content
    ~iot_dps_name ~name ~resource_group_name __id =
  let __type = "azurerm_iothub_dps_certificate" in
  let __attrs =
    ({
       certificate_content =
         Prop.computed __type __id "certificate_content";
       id = Prop.computed __type __id "id";
       iot_dps_name = Prop.computed __type __id "iot_dps_name";
       is_verified = Prop.computed __type __id "is_verified";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iothub_dps_certificate
        (azurerm_iothub_dps_certificate ?id ?is_verified ?timeouts
           ~certificate_content ~iot_dps_name ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?is_verified ?timeouts
    ~certificate_content ~iot_dps_name ~name ~resource_group_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?is_verified ?timeouts ~certificate_content
      ~iot_dps_name ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

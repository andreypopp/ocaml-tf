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

type azurerm_api_management_gateway_certificate_authority = {
  api_management_id : string prop;  (** api_management_id *)
  certificate_name : string prop;  (** certificate_name *)
  gateway_name : string prop;  (** gateway_name *)
  id : string prop option; [@option]  (** id *)
  is_trusted : bool prop option; [@option]  (** is_trusted *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_gateway_certificate_authority *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_gateway_certificate_authority ?id
    ?is_trusted ?timeouts ~api_management_id ~certificate_name
    ~gateway_name () :
    azurerm_api_management_gateway_certificate_authority =
  {
    api_management_id;
    certificate_name;
    gateway_name;
    id;
    is_trusted;
    timeouts;
  }

type t = {
  api_management_id : string prop;
  certificate_name : string prop;
  gateway_name : string prop;
  id : string prop;
  is_trusted : bool prop;
}

let make ?id ?is_trusted ?timeouts ~api_management_id
    ~certificate_name ~gateway_name __id =
  let __type =
    "azurerm_api_management_gateway_certificate_authority"
  in
  let __attrs =
    ({
       api_management_id =
         Prop.computed __type __id "api_management_id";
       certificate_name =
         Prop.computed __type __id "certificate_name";
       gateway_name = Prop.computed __type __id "gateway_name";
       id = Prop.computed __type __id "id";
       is_trusted = Prop.computed __type __id "is_trusted";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_gateway_certificate_authority
        (azurerm_api_management_gateway_certificate_authority ?id
           ?is_trusted ?timeouts ~api_management_id ~certificate_name
           ~gateway_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?is_trusted ?timeouts ~api_management_id
    ~certificate_name ~gateway_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?is_trusted ?timeouts ~api_management_id
      ~certificate_name ~gateway_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

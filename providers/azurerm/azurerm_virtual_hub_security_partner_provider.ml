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

type azurerm_virtual_hub_security_partner_provider = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  security_provider_name : string prop;
      (** security_provider_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  virtual_hub_id : string prop option; [@option]
      (** virtual_hub_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_security_partner_provider *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_hub_security_partner_provider ?id ?tags
    ?virtual_hub_id ?timeouts ~location ~name ~resource_group_name
    ~security_provider_name () :
    azurerm_virtual_hub_security_partner_provider =
  {
    id;
    location;
    name;
    resource_group_name;
    security_provider_name;
    tags;
    virtual_hub_id;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  security_provider_name : string prop;
  tags : (string * string) list prop;
  virtual_hub_id : string prop;
}

let make ?id ?tags ?virtual_hub_id ?timeouts ~location ~name
    ~resource_group_name ~security_provider_name __id =
  let __type = "azurerm_virtual_hub_security_partner_provider" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       security_provider_name =
         Prop.computed __type __id "security_provider_name";
       tags = Prop.computed __type __id "tags";
       virtual_hub_id = Prop.computed __type __id "virtual_hub_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_hub_security_partner_provider
        (azurerm_virtual_hub_security_partner_provider ?id ?tags
           ?virtual_hub_id ?timeouts ~location ~name
           ~resource_group_name ~security_provider_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?virtual_hub_id ?timeouts ~location
    ~name ~resource_group_name ~security_provider_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?virtual_hub_id ?timeouts ~location ~name
      ~resource_group_name ~security_provider_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

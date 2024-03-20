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

type azurerm_cdn_frontdoor_profile = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  response_timeout_seconds : float prop option; [@option]
      (** response_timeout_seconds *)
  sku_name : string prop;  (** sku_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_profile *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cdn_frontdoor_profile ?id ?response_timeout_seconds ?tags
    ?timeouts ~name ~resource_group_name ~sku_name () :
    azurerm_cdn_frontdoor_profile =
  {
    id;
    name;
    resource_group_name;
    response_timeout_seconds;
    sku_name;
    tags;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  resource_guid : string prop;
  response_timeout_seconds : float prop;
  sku_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?response_timeout_seconds ?tags ?timeouts ~name
    ~resource_group_name ~sku_name __id =
  let __type = "azurerm_cdn_frontdoor_profile" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       resource_guid = Prop.computed __type __id "resource_guid";
       response_timeout_seconds =
         Prop.computed __type __id "response_timeout_seconds";
       sku_name = Prop.computed __type __id "sku_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cdn_frontdoor_profile
        (azurerm_cdn_frontdoor_profile ?id ?response_timeout_seconds
           ?tags ?timeouts ~name ~resource_group_name ~sku_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?response_timeout_seconds ?tags ?timeouts
    ~name ~resource_group_name ~sku_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?response_timeout_seconds ?tags ?timeouts ~name
      ~resource_group_name ~sku_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type extension = {
  additional_extension_properties :
    (string * string prop) list option;
      [@option]
      (** additional_extension_properties *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** extension *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_security_center_subscription_pricing = {
  id : string prop option; [@option]  (** id *)
  resource_type : string prop option; [@option]  (** resource_type *)
  subplan : string prop option; [@option]  (** subplan *)
  tier : string prop;  (** tier *)
  extension : extension list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_security_center_subscription_pricing *)

let extension ?additional_extension_properties ~name () : extension =
  { additional_extension_properties; name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_security_center_subscription_pricing ?id ?resource_type
    ?subplan ?timeouts ~tier ~extension () :
    azurerm_security_center_subscription_pricing =
  { id; resource_type; subplan; tier; extension; timeouts }

type t = {
  id : string prop;
  resource_type : string prop;
  subplan : string prop;
  tier : string prop;
}

let make ?id ?resource_type ?subplan ?timeouts ~tier ~extension __id
    =
  let __type = "azurerm_security_center_subscription_pricing" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       resource_type = Prop.computed __type __id "resource_type";
       subplan = Prop.computed __type __id "subplan";
       tier = Prop.computed __type __id "tier";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_security_center_subscription_pricing
        (azurerm_security_center_subscription_pricing ?id
           ?resource_type ?subplan ?timeouts ~tier ~extension ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?resource_type ?subplan ?timeouts ~tier
    ~extension __id =
  let (r : _ Tf_core.resource) =
    make ?id ?resource_type ?subplan ?timeouts ~tier ~extension __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

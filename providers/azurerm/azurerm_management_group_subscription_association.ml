(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_management_group_subscription_association = {
  id : string prop option; [@option]  (** id *)
  management_group_id : string prop;  (** management_group_id *)
  subscription_id : string prop;  (** subscription_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_management_group_subscription_association *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_management_group_subscription_association ?id ?timeouts
    ~management_group_id ~subscription_id () :
    azurerm_management_group_subscription_association =
  { id; management_group_id; subscription_id; timeouts }

type t = {
  id : string prop;
  management_group_id : string prop;
  subscription_id : string prop;
}

let make ?id ?timeouts ~management_group_id ~subscription_id __id =
  let __type = "azurerm_management_group_subscription_association" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       management_group_id =
         Prop.computed __type __id "management_group_id";
       subscription_id = Prop.computed __type __id "subscription_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_management_group_subscription_association
        (azurerm_management_group_subscription_association ?id
           ?timeouts ~management_group_id ~subscription_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~management_group_id
    ~subscription_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~management_group_id ~subscription_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

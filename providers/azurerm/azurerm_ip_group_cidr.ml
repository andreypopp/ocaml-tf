(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_ip_group_cidr = {
  cidr : string prop;  (** cidr *)
  id : string prop option; [@option]  (** id *)
  ip_group_id : string prop;  (** ip_group_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_ip_group_cidr *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_ip_group_cidr ?id ?timeouts ~cidr ~ip_group_id () :
    azurerm_ip_group_cidr =
  { cidr; id; ip_group_id; timeouts }

type t = {
  cidr : string prop;
  id : string prop;
  ip_group_id : string prop;
}

let make ?id ?timeouts ~cidr ~ip_group_id __id =
  let __type = "azurerm_ip_group_cidr" in
  let __attrs =
    ({
       cidr = Prop.computed __type __id "cidr";
       id = Prop.computed __type __id "id";
       ip_group_id = Prop.computed __type __id "ip_group_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_ip_group_cidr
        (azurerm_ip_group_cidr ?id ?timeouts ~cidr ~ip_group_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~cidr ~ip_group_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~cidr ~ip_group_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

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

type azurerm_ip_group = {
  cidrs : string prop list option; [@option]  (** cidrs *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_ip_group *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_ip_group ?cidrs ?id ?tags ?timeouts ~location ~name
    ~resource_group_name () : azurerm_ip_group =
  { cidrs; id; location; name; resource_group_name; tags; timeouts }

type t = {
  cidrs : string list prop;
  firewall_ids : string list prop;
  firewall_policy_ids : string list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?cidrs ?id ?tags ?timeouts ~location ~name
    ~resource_group_name __id =
  let __type = "azurerm_ip_group" in
  let __attrs =
    ({
       cidrs = Prop.computed __type __id "cidrs";
       firewall_ids = Prop.computed __type __id "firewall_ids";
       firewall_policy_ids =
         Prop.computed __type __id "firewall_policy_ids";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_ip_group
        (azurerm_ip_group ?cidrs ?id ?tags ?timeouts ~location ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?cidrs ?id ?tags ?timeouts ~location ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?cidrs ?id ?tags ?timeouts ~location ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

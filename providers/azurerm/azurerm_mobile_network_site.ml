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

type azurerm_mobile_network_site = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  mobile_network_id : string prop;  (** mobile_network_id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mobile_network_site *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mobile_network_site ?id ?tags ?timeouts ~location
    ~mobile_network_id ~name () : azurerm_mobile_network_site =
  { id; location; mobile_network_id; name; tags; timeouts }

type t = {
  id : string prop;
  location : string prop;
  mobile_network_id : string prop;
  name : string prop;
  network_function_ids : string list prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ?timeouts ~location ~mobile_network_id ~name __id
    =
  let __type = "azurerm_mobile_network_site" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       mobile_network_id =
         Prop.computed __type __id "mobile_network_id";
       name = Prop.computed __type __id "name";
       network_function_ids =
         Prop.computed __type __id "network_function_ids";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mobile_network_site
        (azurerm_mobile_network_site ?id ?tags ?timeouts ~location
           ~mobile_network_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~location
    ~mobile_network_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~location ~mobile_network_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

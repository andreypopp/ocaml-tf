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

type azurerm_mobile_network = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  mobile_country_code : string prop;  (** mobile_country_code *)
  mobile_network_code : string prop;  (** mobile_network_code *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mobile_network *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mobile_network ?id ?tags ?timeouts ~location
    ~mobile_country_code ~mobile_network_code ~name
    ~resource_group_name () : azurerm_mobile_network =
  {
    id;
    location;
    mobile_country_code;
    mobile_network_code;
    name;
    resource_group_name;
    tags;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  mobile_country_code : string prop;
  mobile_network_code : string prop;
  name : string prop;
  resource_group_name : string prop;
  service_key : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ?timeouts ~location ~mobile_country_code
    ~mobile_network_code ~name ~resource_group_name __id =
  let __type = "azurerm_mobile_network" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       mobile_country_code =
         Prop.computed __type __id "mobile_country_code";
       mobile_network_code =
         Prop.computed __type __id "mobile_network_code";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       service_key = Prop.computed __type __id "service_key";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mobile_network
        (azurerm_mobile_network ?id ?tags ?timeouts ~location
           ~mobile_country_code ~mobile_network_code ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~location
    ~mobile_country_code ~mobile_network_code ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~location ~mobile_country_code
      ~mobile_network_code ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

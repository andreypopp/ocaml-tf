(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type location_data = {
  city : string prop option; [@option]  (** city *)
  district : string prop option; [@option]  (** district *)
  name : string prop;  (** name *)
  region : string prop option; [@option]  (** region *)
}
[@@deriving yojson_of]
(** location_data *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_api_management_gateway = {
  api_management_id : string prop;  (** api_management_id *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  location_data : location_data list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_gateway *)

let location_data ?city ?district ?region ~name () : location_data =
  { city; district; name; region }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_gateway ?description ?id ?timeouts
    ~api_management_id ~name ~location_data () :
    azurerm_api_management_gateway =
  {
    api_management_id;
    description;
    id;
    name;
    location_data;
    timeouts;
  }

type t = {
  api_management_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
}

let make ?description ?id ?timeouts ~api_management_id ~name
    ~location_data __id =
  let __type = "azurerm_api_management_gateway" in
  let __attrs =
    ({
       api_management_id =
         Prop.computed __type __id "api_management_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_gateway
        (azurerm_api_management_gateway ?description ?id ?timeouts
           ~api_management_id ~name ~location_data ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts ~api_management_id
    ~name ~location_data __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~api_management_id ~name
      ~location_data __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

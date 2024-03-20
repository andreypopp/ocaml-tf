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

type azurerm_api_management_api_version_set = {
  api_management_name : string prop;  (** api_management_name *)
  description : string prop option; [@option]  (** description *)
  display_name : string prop;  (** display_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  version_header_name : string prop option; [@option]
      (** version_header_name *)
  version_query_name : string prop option; [@option]
      (** version_query_name *)
  versioning_scheme : string prop;  (** versioning_scheme *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_api_version_set *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_api_version_set ?description ?id
    ?version_header_name ?version_query_name ?timeouts
    ~api_management_name ~display_name ~name ~resource_group_name
    ~versioning_scheme () : azurerm_api_management_api_version_set =
  {
    api_management_name;
    description;
    display_name;
    id;
    name;
    resource_group_name;
    version_header_name;
    version_query_name;
    versioning_scheme;
    timeouts;
  }

type t = {
  api_management_name : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  version_header_name : string prop;
  version_query_name : string prop;
  versioning_scheme : string prop;
}

let make ?description ?id ?version_header_name ?version_query_name
    ?timeouts ~api_management_name ~display_name ~name
    ~resource_group_name ~versioning_scheme __id =
  let __type = "azurerm_api_management_api_version_set" in
  let __attrs =
    ({
       api_management_name =
         Prop.computed __type __id "api_management_name";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       version_header_name =
         Prop.computed __type __id "version_header_name";
       version_query_name =
         Prop.computed __type __id "version_query_name";
       versioning_scheme =
         Prop.computed __type __id "versioning_scheme";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_api_version_set
        (azurerm_api_management_api_version_set ?description ?id
           ?version_header_name ?version_query_name ?timeouts
           ~api_management_name ~display_name ~name
           ~resource_group_name ~versioning_scheme ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?version_header_name
    ?version_query_name ?timeouts ~api_management_name ~display_name
    ~name ~resource_group_name ~versioning_scheme __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?version_header_name ?version_query_name
      ?timeouts ~api_management_name ~display_name ~name
      ~resource_group_name ~versioning_scheme __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

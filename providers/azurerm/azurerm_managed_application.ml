(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type plan = {
  name : string prop;  (** name *)
  product : string prop;  (** product *)
  promotion_code : string prop option; [@option]
      (** promotion_code *)
  publisher : string prop;  (** publisher *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** plan *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_managed_application = {
  application_definition_id : string prop option; [@option]
      (** application_definition_id *)
  id : string prop option; [@option]  (** id *)
  kind : string prop;  (** kind *)
  location : string prop;  (** location *)
  managed_resource_group_name : string prop;
      (** managed_resource_group_name *)
  name : string prop;  (** name *)
  parameter_values : string prop option; [@option]
      (** parameter_values *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  plan : plan list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_managed_application *)

let plan ?promotion_code ~name ~product ~publisher ~version () : plan
    =
  { name; product; promotion_code; publisher; version }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_managed_application ?application_definition_id ?id
    ?parameter_values ?parameters ?tags ?timeouts ~kind ~location
    ~managed_resource_group_name ~name ~resource_group_name ~plan ()
    : azurerm_managed_application =
  {
    application_definition_id;
    id;
    kind;
    location;
    managed_resource_group_name;
    name;
    parameter_values;
    parameters;
    resource_group_name;
    tags;
    plan;
    timeouts;
  }

type t = {
  application_definition_id : string prop;
  id : string prop;
  kind : string prop;
  location : string prop;
  managed_resource_group_name : string prop;
  name : string prop;
  outputs : (string * string) list prop;
  parameter_values : string prop;
  parameters : (string * string) list prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?application_definition_id ?id ?parameter_values ?parameters
    ?tags ?timeouts ~kind ~location ~managed_resource_group_name
    ~name ~resource_group_name ~plan __id =
  let __type = "azurerm_managed_application" in
  let __attrs =
    ({
       application_definition_id =
         Prop.computed __type __id "application_definition_id";
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       location = Prop.computed __type __id "location";
       managed_resource_group_name =
         Prop.computed __type __id "managed_resource_group_name";
       name = Prop.computed __type __id "name";
       outputs = Prop.computed __type __id "outputs";
       parameter_values =
         Prop.computed __type __id "parameter_values";
       parameters = Prop.computed __type __id "parameters";
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
      yojson_of_azurerm_managed_application
        (azurerm_managed_application ?application_definition_id ?id
           ?parameter_values ?parameters ?tags ?timeouts ~kind
           ~location ~managed_resource_group_name ~name
           ~resource_group_name ~plan ());
    attrs = __attrs;
  }

let register ?tf_module ?application_definition_id ?id
    ?parameter_values ?parameters ?tags ?timeouts ~kind ~location
    ~managed_resource_group_name ~name ~resource_group_name ~plan
    __id =
  let (r : _ Tf_core.resource) =
    make ?application_definition_id ?id ?parameter_values ?parameters
      ?tags ?timeouts ~kind ~location ~managed_resource_group_name
      ~name ~resource_group_name ~plan __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

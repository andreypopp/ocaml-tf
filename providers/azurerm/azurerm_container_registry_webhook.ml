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

type azurerm_container_registry_webhook = {
  actions : string prop list;  (** actions *)
  custom_headers : (string * string prop) list option; [@option]
      (** custom_headers *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  registry_name : string prop;  (** registry_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  scope : string prop option; [@option]  (** scope *)
  service_uri : string prop;  (** service_uri *)
  status : string prop option; [@option]  (** status *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_container_registry_webhook *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_container_registry_webhook ?custom_headers ?id ?scope
    ?status ?tags ?timeouts ~actions ~location ~name ~registry_name
    ~resource_group_name ~service_uri () :
    azurerm_container_registry_webhook =
  {
    actions;
    custom_headers;
    id;
    location;
    name;
    registry_name;
    resource_group_name;
    scope;
    service_uri;
    status;
    tags;
    timeouts;
  }

type t = {
  actions : string list prop;
  custom_headers : (string * string) list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  registry_name : string prop;
  resource_group_name : string prop;
  scope : string prop;
  service_uri : string prop;
  status : string prop;
  tags : (string * string) list prop;
}

let make ?custom_headers ?id ?scope ?status ?tags ?timeouts ~actions
    ~location ~name ~registry_name ~resource_group_name ~service_uri
    __id =
  let __type = "azurerm_container_registry_webhook" in
  let __attrs =
    ({
       actions = Prop.computed __type __id "actions";
       custom_headers = Prop.computed __type __id "custom_headers";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       registry_name = Prop.computed __type __id "registry_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       scope = Prop.computed __type __id "scope";
       service_uri = Prop.computed __type __id "service_uri";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_container_registry_webhook
        (azurerm_container_registry_webhook ?custom_headers ?id
           ?scope ?status ?tags ?timeouts ~actions ~location ~name
           ~registry_name ~resource_group_name ~service_uri ());
    attrs = __attrs;
  }

let register ?tf_module ?custom_headers ?id ?scope ?status ?tags
    ?timeouts ~actions ~location ~name ~registry_name
    ~resource_group_name ~service_uri __id =
  let (r : _ Tf_core.resource) =
    make ?custom_headers ?id ?scope ?status ?tags ?timeouts ~actions
      ~location ~name ~registry_name ~resource_group_name
      ~service_uri __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

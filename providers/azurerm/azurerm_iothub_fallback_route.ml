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

type azurerm_iothub_fallback_route = {
  condition : string prop option; [@option]  (** condition *)
  enabled : bool prop;  (** enabled *)
  endpoint_names : string prop list;  (** endpoint_names *)
  id : string prop option; [@option]  (** id *)
  iothub_name : string prop;  (** iothub_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  source : string prop option; [@option]  (** source *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_fallback_route *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iothub_fallback_route ?condition ?id ?source ?timeouts
    ~enabled ~endpoint_names ~iothub_name ~resource_group_name () :
    azurerm_iothub_fallback_route =
  {
    condition;
    enabled;
    endpoint_names;
    id;
    iothub_name;
    resource_group_name;
    source;
    timeouts;
  }

type t = {
  condition : string prop;
  enabled : bool prop;
  endpoint_names : string list prop;
  id : string prop;
  iothub_name : string prop;
  resource_group_name : string prop;
  source : string prop;
}

let make ?condition ?id ?source ?timeouts ~enabled ~endpoint_names
    ~iothub_name ~resource_group_name __id =
  let __type = "azurerm_iothub_fallback_route" in
  let __attrs =
    ({
       condition = Prop.computed __type __id "condition";
       enabled = Prop.computed __type __id "enabled";
       endpoint_names = Prop.computed __type __id "endpoint_names";
       id = Prop.computed __type __id "id";
       iothub_name = Prop.computed __type __id "iothub_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       source = Prop.computed __type __id "source";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iothub_fallback_route
        (azurerm_iothub_fallback_route ?condition ?id ?source
           ?timeouts ~enabled ~endpoint_names ~iothub_name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?condition ?id ?source ?timeouts ~enabled
    ~endpoint_names ~iothub_name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?condition ?id ?source ?timeouts ~enabled ~endpoint_names
      ~iothub_name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

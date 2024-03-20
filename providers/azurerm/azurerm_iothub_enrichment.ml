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

type azurerm_iothub_enrichment = {
  endpoint_names : string prop list;  (** endpoint_names *)
  id : string prop option; [@option]  (** id *)
  iothub_name : string prop;  (** iothub_name *)
  key : string prop;  (** key *)
  resource_group_name : string prop;  (** resource_group_name *)
  value : string prop;  (** value *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_enrichment *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iothub_enrichment ?id ?timeouts ~endpoint_names
    ~iothub_name ~key ~resource_group_name ~value () :
    azurerm_iothub_enrichment =
  {
    endpoint_names;
    id;
    iothub_name;
    key;
    resource_group_name;
    value;
    timeouts;
  }

type t = {
  endpoint_names : string list prop;
  id : string prop;
  iothub_name : string prop;
  key : string prop;
  resource_group_name : string prop;
  value : string prop;
}

let make ?id ?timeouts ~endpoint_names ~iothub_name ~key
    ~resource_group_name ~value __id =
  let __type = "azurerm_iothub_enrichment" in
  let __attrs =
    ({
       endpoint_names = Prop.computed __type __id "endpoint_names";
       id = Prop.computed __type __id "id";
       iothub_name = Prop.computed __type __id "iothub_name";
       key = Prop.computed __type __id "key";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iothub_enrichment
        (azurerm_iothub_enrichment ?id ?timeouts ~endpoint_names
           ~iothub_name ~key ~resource_group_name ~value ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~endpoint_names ~iothub_name
    ~key ~resource_group_name ~value __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~endpoint_names ~iothub_name ~key
      ~resource_group_name ~value __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

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

type azurerm_application_insights_analytics_item = {
  application_insights_id : string prop;
      (** application_insights_id *)
  content : string prop;  (** content *)
  function_alias : string prop option; [@option]
      (** function_alias *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  scope : string prop;  (** scope *)
  type_ : string prop; [@key "type"]  (** type *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_application_insights_analytics_item *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_application_insights_analytics_item ?function_alias ?id
    ?timeouts ~application_insights_id ~content ~name ~scope ~type_
    () : azurerm_application_insights_analytics_item =
  {
    application_insights_id;
    content;
    function_alias;
    id;
    name;
    scope;
    type_;
    timeouts;
  }

type t = {
  application_insights_id : string prop;
  content : string prop;
  function_alias : string prop;
  id : string prop;
  name : string prop;
  scope : string prop;
  time_created : string prop;
  time_modified : string prop;
  type_ : string prop;
  version : string prop;
}

let make ?function_alias ?id ?timeouts ~application_insights_id
    ~content ~name ~scope ~type_ __id =
  let __type = "azurerm_application_insights_analytics_item" in
  let __attrs =
    ({
       application_insights_id =
         Prop.computed __type __id "application_insights_id";
       content = Prop.computed __type __id "content";
       function_alias = Prop.computed __type __id "function_alias";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       scope = Prop.computed __type __id "scope";
       time_created = Prop.computed __type __id "time_created";
       time_modified = Prop.computed __type __id "time_modified";
       type_ = Prop.computed __type __id "type";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_application_insights_analytics_item
        (azurerm_application_insights_analytics_item ?function_alias
           ?id ?timeouts ~application_insights_id ~content ~name
           ~scope ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?function_alias ?id ?timeouts
    ~application_insights_id ~content ~name ~scope ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?function_alias ?id ?timeouts ~application_insights_id
      ~content ~name ~scope ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

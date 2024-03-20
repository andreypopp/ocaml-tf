(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_video_analyzer_edge_module = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  video_analyzer_name : string prop;  (** video_analyzer_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_video_analyzer_edge_module *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_video_analyzer_edge_module ?id ?timeouts ~name
    ~resource_group_name ~video_analyzer_name () :
    azurerm_video_analyzer_edge_module =
  { id; name; resource_group_name; video_analyzer_name; timeouts }

type t = {
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  video_analyzer_name : string prop;
}

let make ?id ?timeouts ~name ~resource_group_name
    ~video_analyzer_name __id =
  let __type = "azurerm_video_analyzer_edge_module" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       video_analyzer_name =
         Prop.computed __type __id "video_analyzer_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_video_analyzer_edge_module
        (azurerm_video_analyzer_edge_module ?id ?timeouts ~name
           ~resource_group_name ~video_analyzer_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name
    ~video_analyzer_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name
      ~video_analyzer_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?timeouts ~name ~resource_group_name
    ~video_analyzer_name __resource_id =
  let __resource_type = "azurerm_video_analyzer_edge_module" in
  let __resource =
    azurerm_video_analyzer_edge_module ?id ?timeouts ~name
      ~resource_group_name ~video_analyzer_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_video_analyzer_edge_module __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       video_analyzer_name =
         Prop.computed __resource_type __resource_id
           "video_analyzer_name";
     }
      : t)
  in
  __resource_attributes

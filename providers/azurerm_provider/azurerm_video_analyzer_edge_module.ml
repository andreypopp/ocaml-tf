(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_video_analyzer_edge_module__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_video_analyzer_edge_module__timeouts *)

type azurerm_video_analyzer_edge_module = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  video_analyzer_name : string prop;  (** video_analyzer_name *)
  timeouts : azurerm_video_analyzer_edge_module__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_video_analyzer_edge_module *)

let azurerm_video_analyzer_edge_module ?id ?timeouts ~name
    ~resource_group_name ~video_analyzer_name __resource_id =
  let __resource_type = "azurerm_video_analyzer_edge_module" in
  let __resource =
    { id; name; resource_group_name; video_analyzer_name; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_video_analyzer_edge_module __resource);
  ()

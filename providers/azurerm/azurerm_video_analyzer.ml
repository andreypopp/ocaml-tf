(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_video_analyzer__identity = {
  identity_ids : string prop list;  (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_video_analyzer__identity *)

type azurerm_video_analyzer__storage_account = {
  id : string prop;  (** id *)
  user_assigned_identity_id : string prop;
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]
(** azurerm_video_analyzer__storage_account *)

type azurerm_video_analyzer__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_video_analyzer__timeouts *)

type azurerm_video_analyzer = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : azurerm_video_analyzer__identity list;
  storage_account : azurerm_video_analyzer__storage_account list;
  timeouts : azurerm_video_analyzer__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_video_analyzer *)

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let azurerm_video_analyzer ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~identity ~storage_account __resource_id =
  let __resource_type = "azurerm_video_analyzer" in
  let __resource =
    ({
       id;
       location;
       name;
       resource_group_name;
       tags;
       identity;
       storage_account;
       timeouts;
     }
      : azurerm_video_analyzer)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_video_analyzer __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes

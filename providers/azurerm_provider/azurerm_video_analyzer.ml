(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_video_analyzer__identity = {
  identity_ids : string list;  (** identity_ids *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_video_analyzer__identity *)

type azurerm_video_analyzer__storage_account = {
  id : string;  (** id *)
  user_assigned_identity_id : string;
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]
(** azurerm_video_analyzer__storage_account *)

type azurerm_video_analyzer__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_video_analyzer__timeouts *)

type azurerm_video_analyzer = {
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  identity : azurerm_video_analyzer__identity list;
  storage_account : azurerm_video_analyzer__storage_account list;
  timeouts : azurerm_video_analyzer__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_video_analyzer *)

let azurerm_video_analyzer ?tags ?timeouts ~location ~name
    ~resource_group_name ~identity ~storage_account __resource_id =
  let __resource_type = "azurerm_video_analyzer" in
  let __resource =
    {
      location;
      name;
      resource_group_name;
      tags;
      identity;
      storage_account;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_video_analyzer __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_bot_web_app__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_bot_web_app__timeouts *)

type azurerm_bot_web_app = {
  endpoint : string option; [@option]  (** endpoint *)
  location : string;  (** location *)
  luis_app_ids : string list option; [@option]  (** luis_app_ids *)
  luis_key : string option; [@option]  (** luis_key *)
  microsoft_app_id : string;  (** microsoft_app_id *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  sku : string;  (** sku *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_bot_web_app__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_web_app *)

let azurerm_bot_web_app ?endpoint ?luis_app_ids ?luis_key ?tags
    ?timeouts ~location ~microsoft_app_id ~name ~resource_group_name
    ~sku __resource_id =
  let __resource_type = "azurerm_bot_web_app" in
  let __resource =
    {
      endpoint;
      location;
      luis_app_ids;
      luis_key;
      microsoft_app_id;
      name;
      resource_group_name;
      sku;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_bot_web_app __resource);
  ()

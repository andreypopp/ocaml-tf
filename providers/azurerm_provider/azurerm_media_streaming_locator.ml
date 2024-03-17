(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_media_streaming_locator__content_key = {
  content_key_id : string option; [@option]  (** content_key_id *)
  label_reference_in_streaming_policy : string option; [@option]
      (** label_reference_in_streaming_policy *)
  policy_name : string option; [@option]  (** policy_name *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** azurerm_media_streaming_locator__content_key *)

type azurerm_media_streaming_locator__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_media_streaming_locator__timeouts *)

type azurerm_media_streaming_locator = {
  alternative_media_id : string option; [@option]
      (** alternative_media_id *)
  asset_name : string;  (** asset_name *)
  default_content_key_policy_name : string option; [@option]
      (** default_content_key_policy_name *)
  filter_names : string list option; [@option]  (** filter_names *)
  media_services_account_name : string;
      (** media_services_account_name *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  start_time : string option; [@option]  (** start_time *)
  streaming_policy_name : string;  (** streaming_policy_name *)
  content_key : azurerm_media_streaming_locator__content_key list;
  timeouts : azurerm_media_streaming_locator__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_media_streaming_locator *)

let azurerm_media_streaming_locator ?alternative_media_id
    ?default_content_key_policy_name ?filter_names ?start_time
    ?timeouts ~asset_name ~media_services_account_name ~name
    ~resource_group_name ~streaming_policy_name ~content_key
    __resource_id =
  let __resource_type = "azurerm_media_streaming_locator" in
  let __resource =
    {
      alternative_media_id;
      asset_name;
      default_content_key_policy_name;
      filter_names;
      media_services_account_name;
      name;
      resource_group_name;
      start_time;
      streaming_policy_name;
      content_key;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_media_streaming_locator __resource);
  ()

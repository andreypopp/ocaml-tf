(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_media_streaming_locator__content_key = {
  content_key_id : string prop option; [@option]
      (** content_key_id *)
  label_reference_in_streaming_policy : string prop option; [@option]
      (** label_reference_in_streaming_policy *)
  policy_name : string prop option; [@option]  (** policy_name *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** azurerm_media_streaming_locator__content_key *)

type azurerm_media_streaming_locator__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_media_streaming_locator__timeouts *)

type azurerm_media_streaming_locator = {
  alternative_media_id : string prop option; [@option]
      (** alternative_media_id *)
  asset_name : string prop;  (** asset_name *)
  default_content_key_policy_name : string prop option; [@option]
      (** default_content_key_policy_name *)
  end_time : string prop option; [@option]  (** end_time *)
  filter_names : string prop list option; [@option]
      (** filter_names *)
  id : string prop option; [@option]  (** id *)
  media_services_account_name : string prop;
      (** media_services_account_name *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  start_time : string prop option; [@option]  (** start_time *)
  streaming_locator_id : string prop option; [@option]
      (** streaming_locator_id *)
  streaming_policy_name : string prop;  (** streaming_policy_name *)
  content_key : azurerm_media_streaming_locator__content_key list;
  timeouts : azurerm_media_streaming_locator__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_media_streaming_locator *)

let azurerm_media_streaming_locator ?alternative_media_id
    ?default_content_key_policy_name ?end_time ?filter_names ?id
    ?start_time ?streaming_locator_id ?timeouts ~asset_name
    ~media_services_account_name ~name ~resource_group_name
    ~streaming_policy_name ~content_key __resource_id =
  let __resource_type = "azurerm_media_streaming_locator" in
  let __resource =
    {
      alternative_media_id;
      asset_name;
      default_content_key_policy_name;
      end_time;
      filter_names;
      id;
      media_services_account_name;
      name;
      resource_group_name;
      start_time;
      streaming_locator_id;
      streaming_policy_name;
      content_key;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_media_streaming_locator __resource);
  ()

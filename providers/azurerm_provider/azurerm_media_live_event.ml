(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_media_live_event__cross_site_access_policy = {
  client_access_policy : string option; [@option]
      (** client_access_policy *)
  cross_domain_policy : string option; [@option]
      (** cross_domain_policy *)
}
[@@deriving yojson_of]
(** azurerm_media_live_event__cross_site_access_policy *)

type azurerm_media_live_event__encoding = {
  key_frame_interval : string option; [@option]
      (** key_frame_interval *)
  preset_name : string option; [@option]  (** preset_name *)
  stretch_mode : string option; [@option]  (** stretch_mode *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_media_live_event__encoding *)

type azurerm_media_live_event__input__ip_access_control_allow = {
  address : string option; [@option]  (** address *)
  name : string option; [@option]  (** name *)
  subnet_prefix_length : float option; [@option]
      (** subnet_prefix_length *)
}
[@@deriving yojson_of]
(** azurerm_media_live_event__input__ip_access_control_allow *)

type azurerm_media_live_event__input__endpoint = {
  protocol : string;  (** protocol *)
  url : string;  (** url *)
}
[@@deriving yojson_of]

type azurerm_media_live_event__input = {
  access_token : string option; [@option]  (** access_token *)
  endpoint : azurerm_media_live_event__input__endpoint list;
      (** endpoint *)
  key_frame_interval_duration : string option; [@option]
      (** key_frame_interval_duration *)
  streaming_protocol : string option; [@option]
      (** streaming_protocol *)
  ip_access_control_allow :
    azurerm_media_live_event__input__ip_access_control_allow list;
}
[@@deriving yojson_of]
(** azurerm_media_live_event__input *)

type azurerm_media_live_event__preview__ip_access_control_allow = {
  address : string option; [@option]  (** address *)
  name : string option; [@option]  (** name *)
  subnet_prefix_length : float option; [@option]
      (** subnet_prefix_length *)
}
[@@deriving yojson_of]
(** azurerm_media_live_event__preview__ip_access_control_allow *)

type azurerm_media_live_event__preview__endpoint = {
  protocol : string;  (** protocol *)
  url : string;  (** url *)
}
[@@deriving yojson_of]

type azurerm_media_live_event__preview = {
  alternative_media_id : string option; [@option]
      (** alternative_media_id *)
  endpoint : azurerm_media_live_event__preview__endpoint list;
      (** endpoint *)
  preview_locator : string option; [@option]  (** preview_locator *)
  streaming_policy_name : string option; [@option]
      (** streaming_policy_name *)
  ip_access_control_allow :
    azurerm_media_live_event__preview__ip_access_control_allow list;
}
[@@deriving yojson_of]
(** azurerm_media_live_event__preview *)

type azurerm_media_live_event__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_media_live_event__timeouts *)

type azurerm_media_live_event = {
  auto_start_enabled : bool option; [@option]
      (** auto_start_enabled *)
  description : string option; [@option]  (** description *)
  hostname_prefix : string option; [@option]  (** hostname_prefix *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  media_services_account_name : string;
      (** media_services_account_name *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  stream_options : string list option; [@option]
      (** stream_options *)
  tags : (string * string) list option; [@option]  (** tags *)
  transcription_languages : string list option; [@option]
      (** transcription_languages *)
  use_static_hostname : bool option; [@option]
      (** use_static_hostname *)
  cross_site_access_policy :
    azurerm_media_live_event__cross_site_access_policy list;
  encoding : azurerm_media_live_event__encoding list;
  input : azurerm_media_live_event__input list;
  preview : azurerm_media_live_event__preview list;
  timeouts : azurerm_media_live_event__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_media_live_event *)

let azurerm_media_live_event ?auto_start_enabled ?description
    ?hostname_prefix ?id ?stream_options ?tags
    ?transcription_languages ?use_static_hostname ?timeouts ~location
    ~media_services_account_name ~name ~resource_group_name
    ~cross_site_access_policy ~encoding ~input ~preview __resource_id
    =
  let __resource_type = "azurerm_media_live_event" in
  let __resource =
    {
      auto_start_enabled;
      description;
      hostname_prefix;
      id;
      location;
      media_services_account_name;
      name;
      resource_group_name;
      stream_options;
      tags;
      transcription_languages;
      use_static_hostname;
      cross_site_access_policy;
      encoding;
      input;
      preview;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_media_live_event __resource);
  ()

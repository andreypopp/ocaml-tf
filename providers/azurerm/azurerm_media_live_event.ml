(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cross_site_access_policy = {
  client_access_policy : string prop option; [@option]
      (** client_access_policy *)
  cross_domain_policy : string prop option; [@option]
      (** cross_domain_policy *)
}
[@@deriving yojson_of]
(** cross_site_access_policy *)

type encoding = {
  key_frame_interval : string prop option; [@option]
      (** key_frame_interval *)
  preset_name : string prop option; [@option]  (** preset_name *)
  stretch_mode : string prop option; [@option]  (** stretch_mode *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** encoding *)

type input__ip_access_control_allow = {
  address : string prop option; [@option]  (** address *)
  name : string prop option; [@option]  (** name *)
  subnet_prefix_length : float prop option; [@option]
      (** subnet_prefix_length *)
}
[@@deriving yojson_of]
(** input__ip_access_control_allow *)

type input__endpoint = {
  protocol : string prop;  (** protocol *)
  url : string prop;  (** url *)
}
[@@deriving yojson_of]

type input = {
  access_token : string prop option; [@option]  (** access_token *)
  key_frame_interval_duration : string prop option; [@option]
      (** key_frame_interval_duration *)
  streaming_protocol : string prop option; [@option]
      (** streaming_protocol *)
  ip_access_control_allow : input__ip_access_control_allow list;
}
[@@deriving yojson_of]
(** input *)

type preview__ip_access_control_allow = {
  address : string prop option; [@option]  (** address *)
  name : string prop option; [@option]  (** name *)
  subnet_prefix_length : float prop option; [@option]
      (** subnet_prefix_length *)
}
[@@deriving yojson_of]
(** preview__ip_access_control_allow *)

type preview__endpoint = {
  protocol : string prop;  (** protocol *)
  url : string prop;  (** url *)
}
[@@deriving yojson_of]

type preview = {
  alternative_media_id : string prop option; [@option]
      (** alternative_media_id *)
  preview_locator : string prop option; [@option]
      (** preview_locator *)
  streaming_policy_name : string prop option; [@option]
      (** streaming_policy_name *)
  ip_access_control_allow : preview__ip_access_control_allow list;
}
[@@deriving yojson_of]
(** preview *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_media_live_event = {
  auto_start_enabled : bool prop option; [@option]
      (** auto_start_enabled *)
  description : string prop option; [@option]  (** description *)
  hostname_prefix : string prop option; [@option]
      (** hostname_prefix *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  media_services_account_name : string prop;
      (** media_services_account_name *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  stream_options : string prop list option; [@option]
      (** stream_options *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  transcription_languages : string prop list option; [@option]
      (** transcription_languages *)
  use_static_hostname : bool prop option; [@option]
      (** use_static_hostname *)
  cross_site_access_policy : cross_site_access_policy list;
  encoding : encoding list;
  input : input list;
  preview : preview list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_media_live_event *)

let cross_site_access_policy ?client_access_policy
    ?cross_domain_policy () : cross_site_access_policy =
  { client_access_policy; cross_domain_policy }

let encoding ?key_frame_interval ?preset_name ?stretch_mode ?type_ ()
    : encoding =
  { key_frame_interval; preset_name; stretch_mode; type_ }

let input__ip_access_control_allow ?address ?name
    ?subnet_prefix_length () : input__ip_access_control_allow =
  { address; name; subnet_prefix_length }

let input ?access_token ?key_frame_interval_duration
    ?streaming_protocol ~ip_access_control_allow () : input =
  {
    access_token;
    key_frame_interval_duration;
    streaming_protocol;
    ip_access_control_allow;
  }

let preview__ip_access_control_allow ?address ?name
    ?subnet_prefix_length () : preview__ip_access_control_allow =
  { address; name; subnet_prefix_length }

let preview ?alternative_media_id ?preview_locator
    ?streaming_policy_name ~ip_access_control_allow () : preview =
  {
    alternative_media_id;
    preview_locator;
    streaming_policy_name;
    ip_access_control_allow;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_media_live_event ?auto_start_enabled ?description
    ?hostname_prefix ?id ?stream_options ?tags
    ?transcription_languages ?use_static_hostname ?timeouts ~location
    ~media_services_account_name ~name ~resource_group_name
    ~cross_site_access_policy ~encoding ~input ~preview () :
    azurerm_media_live_event =
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

type t = {
  auto_start_enabled : bool prop;
  description : string prop;
  hostname_prefix : string prop;
  id : string prop;
  location : string prop;
  media_services_account_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  stream_options : string list prop;
  tags : (string * string) list prop;
  transcription_languages : string list prop;
  use_static_hostname : bool prop;
}

let register ?tf_module ?auto_start_enabled ?description
    ?hostname_prefix ?id ?stream_options ?tags
    ?transcription_languages ?use_static_hostname ?timeouts ~location
    ~media_services_account_name ~name ~resource_group_name
    ~cross_site_access_policy ~encoding ~input ~preview __resource_id
    =
  let __resource_type = "azurerm_media_live_event" in
  let __resource =
    azurerm_media_live_event ?auto_start_enabled ?description
      ?hostname_prefix ?id ?stream_options ?tags
      ?transcription_languages ?use_static_hostname ?timeouts
      ~location ~media_services_account_name ~name
      ~resource_group_name ~cross_site_access_policy ~encoding ~input
      ~preview ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_media_live_event __resource);
  let __resource_attributes =
    ({
       auto_start_enabled =
         Prop.computed __resource_type __resource_id
           "auto_start_enabled";
       description =
         Prop.computed __resource_type __resource_id "description";
       hostname_prefix =
         Prop.computed __resource_type __resource_id
           "hostname_prefix";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       media_services_account_name =
         Prop.computed __resource_type __resource_id
           "media_services_account_name";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       stream_options =
         Prop.computed __resource_type __resource_id "stream_options";
       tags = Prop.computed __resource_type __resource_id "tags";
       transcription_languages =
         Prop.computed __resource_type __resource_id
           "transcription_languages";
       use_static_hostname =
         Prop.computed __resource_type __resource_id
           "use_static_hostname";
     }
      : t)
  in
  __resource_attributes

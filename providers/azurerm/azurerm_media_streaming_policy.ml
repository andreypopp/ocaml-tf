(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type common_encryption_cbcs__clear_key_encryption = {
  custom_keys_acquisition_url_template : string prop;
      (** custom_keys_acquisition_url_template *)
}
[@@deriving yojson_of]
(** common_encryption_cbcs__clear_key_encryption *)

type common_encryption_cbcs__default_content_key = {
  label : string prop option; [@option]  (** label *)
  policy_name : string prop option; [@option]  (** policy_name *)
}
[@@deriving yojson_of]
(** common_encryption_cbcs__default_content_key *)

type common_encryption_cbcs__drm_fairplay = {
  allow_persistent_license : bool prop option; [@option]
      (** allow_persistent_license *)
  custom_license_acquisition_url_template : string prop option;
      [@option]
      (** custom_license_acquisition_url_template *)
}
[@@deriving yojson_of]
(** common_encryption_cbcs__drm_fairplay *)

type common_encryption_cbcs__enabled_protocols = {
  dash : bool prop option; [@option]  (** dash *)
  download : bool prop option; [@option]  (** download *)
  hls : bool prop option; [@option]  (** hls *)
  smooth_streaming : bool prop option; [@option]
      (** smooth_streaming *)
}
[@@deriving yojson_of]
(** common_encryption_cbcs__enabled_protocols *)

type common_encryption_cbcs = {
  clear_key_encryption :
    common_encryption_cbcs__clear_key_encryption list;
  default_content_key :
    common_encryption_cbcs__default_content_key list;
  drm_fairplay : common_encryption_cbcs__drm_fairplay list;
  enabled_protocols : common_encryption_cbcs__enabled_protocols list;
}
[@@deriving yojson_of]
(** common_encryption_cbcs *)

type common_encryption_cenc__clear_key_encryption = {
  custom_keys_acquisition_url_template : string prop;
      (** custom_keys_acquisition_url_template *)
}
[@@deriving yojson_of]
(** common_encryption_cenc__clear_key_encryption *)

type common_encryption_cenc__clear_track__condition = {
  operation : string prop;  (** operation *)
  property : string prop;  (** property *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** common_encryption_cenc__clear_track__condition *)

type common_encryption_cenc__clear_track = {
  condition : common_encryption_cenc__clear_track__condition list;
}
[@@deriving yojson_of]
(** common_encryption_cenc__clear_track *)

type common_encryption_cenc__content_key_to_track_mapping__track__condition = {
  operation : string prop;  (** operation *)
  property : string prop;  (** property *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** common_encryption_cenc__content_key_to_track_mapping__track__condition *)

type common_encryption_cenc__content_key_to_track_mapping__track = {
  condition :
    common_encryption_cenc__content_key_to_track_mapping__track__condition
    list;
}
[@@deriving yojson_of]
(** common_encryption_cenc__content_key_to_track_mapping__track *)

type common_encryption_cenc__content_key_to_track_mapping = {
  label : string prop option; [@option]  (** label *)
  policy_name : string prop option; [@option]  (** policy_name *)
  track :
    common_encryption_cenc__content_key_to_track_mapping__track list;
}
[@@deriving yojson_of]
(** common_encryption_cenc__content_key_to_track_mapping *)

type common_encryption_cenc__default_content_key = {
  label : string prop option; [@option]  (** label *)
  policy_name : string prop option; [@option]  (** policy_name *)
}
[@@deriving yojson_of]
(** common_encryption_cenc__default_content_key *)

type common_encryption_cenc__drm_playready = {
  custom_attributes : string prop option; [@option]
      (** custom_attributes *)
  custom_license_acquisition_url_template : string prop option;
      [@option]
      (** custom_license_acquisition_url_template *)
}
[@@deriving yojson_of]
(** common_encryption_cenc__drm_playready *)

type common_encryption_cenc__enabled_protocols = {
  dash : bool prop option; [@option]  (** dash *)
  download : bool prop option; [@option]  (** download *)
  hls : bool prop option; [@option]  (** hls *)
  smooth_streaming : bool prop option; [@option]
      (** smooth_streaming *)
}
[@@deriving yojson_of]
(** common_encryption_cenc__enabled_protocols *)

type common_encryption_cenc = {
  drm_widevine_custom_license_acquisition_url_template :
    string prop option;
      [@option]
      (** drm_widevine_custom_license_acquisition_url_template *)
  clear_key_encryption :
    common_encryption_cenc__clear_key_encryption list;
  clear_track : common_encryption_cenc__clear_track list;
  content_key_to_track_mapping :
    common_encryption_cenc__content_key_to_track_mapping list;
  default_content_key :
    common_encryption_cenc__default_content_key list;
  drm_playready : common_encryption_cenc__drm_playready list;
  enabled_protocols : common_encryption_cenc__enabled_protocols list;
}
[@@deriving yojson_of]
(** common_encryption_cenc *)

type envelope_encryption__default_content_key = {
  label : string prop option; [@option]  (** label *)
  policy_name : string prop option; [@option]  (** policy_name *)
}
[@@deriving yojson_of]
(** envelope_encryption__default_content_key *)

type envelope_encryption__enabled_protocols = {
  dash : bool prop option; [@option]  (** dash *)
  download : bool prop option; [@option]  (** download *)
  hls : bool prop option; [@option]  (** hls *)
  smooth_streaming : bool prop option; [@option]
      (** smooth_streaming *)
}
[@@deriving yojson_of]
(** envelope_encryption__enabled_protocols *)

type envelope_encryption = {
  custom_keys_acquisition_url_template : string prop option;
      [@option]
      (** custom_keys_acquisition_url_template *)
  default_content_key :
    envelope_encryption__default_content_key list;
  enabled_protocols : envelope_encryption__enabled_protocols list;
}
[@@deriving yojson_of]
(** envelope_encryption *)

type no_encryption_enabled_protocols = {
  dash : bool prop option; [@option]  (** dash *)
  download : bool prop option; [@option]  (** download *)
  hls : bool prop option; [@option]  (** hls *)
  smooth_streaming : bool prop option; [@option]
      (** smooth_streaming *)
}
[@@deriving yojson_of]
(** no_encryption_enabled_protocols *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_media_streaming_policy = {
  default_content_key_policy_name : string prop option; [@option]
      (** default_content_key_policy_name *)
  id : string prop option; [@option]  (** id *)
  media_services_account_name : string prop;
      (** media_services_account_name *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  common_encryption_cbcs : common_encryption_cbcs list;
  common_encryption_cenc : common_encryption_cenc list;
  envelope_encryption : envelope_encryption list;
  no_encryption_enabled_protocols :
    no_encryption_enabled_protocols list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_media_streaming_policy *)

let common_encryption_cbcs__clear_key_encryption
    ~custom_keys_acquisition_url_template () :
    common_encryption_cbcs__clear_key_encryption =
  { custom_keys_acquisition_url_template }

let common_encryption_cbcs__default_content_key ?label ?policy_name
    () : common_encryption_cbcs__default_content_key =
  { label; policy_name }

let common_encryption_cbcs__drm_fairplay ?allow_persistent_license
    ?custom_license_acquisition_url_template () :
    common_encryption_cbcs__drm_fairplay =
  {
    allow_persistent_license;
    custom_license_acquisition_url_template;
  }

let common_encryption_cbcs__enabled_protocols ?dash ?download ?hls
    ?smooth_streaming () : common_encryption_cbcs__enabled_protocols
    =
  { dash; download; hls; smooth_streaming }

let common_encryption_cbcs ~clear_key_encryption ~default_content_key
    ~drm_fairplay ~enabled_protocols () : common_encryption_cbcs =
  {
    clear_key_encryption;
    default_content_key;
    drm_fairplay;
    enabled_protocols;
  }

let common_encryption_cenc__clear_key_encryption
    ~custom_keys_acquisition_url_template () :
    common_encryption_cenc__clear_key_encryption =
  { custom_keys_acquisition_url_template }

let common_encryption_cenc__clear_track__condition ~operation
    ~property ~value () :
    common_encryption_cenc__clear_track__condition =
  { operation; property; value }

let common_encryption_cenc__clear_track ~condition () :
    common_encryption_cenc__clear_track =
  { condition }

let common_encryption_cenc__content_key_to_track_mapping__track__condition
    ~operation ~property ~value () :
    common_encryption_cenc__content_key_to_track_mapping__track__condition
    =
  { operation; property; value }

let common_encryption_cenc__content_key_to_track_mapping__track
    ~condition () :
    common_encryption_cenc__content_key_to_track_mapping__track =
  { condition }

let common_encryption_cenc__content_key_to_track_mapping ?label
    ?policy_name ~track () :
    common_encryption_cenc__content_key_to_track_mapping =
  { label; policy_name; track }

let common_encryption_cenc__default_content_key ?label ?policy_name
    () : common_encryption_cenc__default_content_key =
  { label; policy_name }

let common_encryption_cenc__drm_playready ?custom_attributes
    ?custom_license_acquisition_url_template () :
    common_encryption_cenc__drm_playready =
  { custom_attributes; custom_license_acquisition_url_template }

let common_encryption_cenc__enabled_protocols ?dash ?download ?hls
    ?smooth_streaming () : common_encryption_cenc__enabled_protocols
    =
  { dash; download; hls; smooth_streaming }

let common_encryption_cenc
    ?drm_widevine_custom_license_acquisition_url_template
    ~clear_key_encryption ~clear_track ~content_key_to_track_mapping
    ~default_content_key ~drm_playready ~enabled_protocols () :
    common_encryption_cenc =
  {
    drm_widevine_custom_license_acquisition_url_template;
    clear_key_encryption;
    clear_track;
    content_key_to_track_mapping;
    default_content_key;
    drm_playready;
    enabled_protocols;
  }

let envelope_encryption__default_content_key ?label ?policy_name () :
    envelope_encryption__default_content_key =
  { label; policy_name }

let envelope_encryption__enabled_protocols ?dash ?download ?hls
    ?smooth_streaming () : envelope_encryption__enabled_protocols =
  { dash; download; hls; smooth_streaming }

let envelope_encryption ?custom_keys_acquisition_url_template
    ~default_content_key ~enabled_protocols () : envelope_encryption
    =
  {
    custom_keys_acquisition_url_template;
    default_content_key;
    enabled_protocols;
  }

let no_encryption_enabled_protocols ?dash ?download ?hls
    ?smooth_streaming () : no_encryption_enabled_protocols =
  { dash; download; hls; smooth_streaming }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_media_streaming_policy ?default_content_key_policy_name
    ?id ?timeouts ~media_services_account_name ~name
    ~resource_group_name ~common_encryption_cbcs
    ~common_encryption_cenc ~envelope_encryption
    ~no_encryption_enabled_protocols () :
    azurerm_media_streaming_policy =
  {
    default_content_key_policy_name;
    id;
    media_services_account_name;
    name;
    resource_group_name;
    common_encryption_cbcs;
    common_encryption_cenc;
    envelope_encryption;
    no_encryption_enabled_protocols;
    timeouts;
  }

type t = {
  default_content_key_policy_name : string prop;
  id : string prop;
  media_services_account_name : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?default_content_key_policy_name ?id ?timeouts
    ~media_services_account_name ~name ~resource_group_name
    ~common_encryption_cbcs ~common_encryption_cenc
    ~envelope_encryption ~no_encryption_enabled_protocols __id =
  let __type = "azurerm_media_streaming_policy" in
  let __attrs =
    ({
       default_content_key_policy_name =
         Prop.computed __type __id "default_content_key_policy_name";
       id = Prop.computed __type __id "id";
       media_services_account_name =
         Prop.computed __type __id "media_services_account_name";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_media_streaming_policy
        (azurerm_media_streaming_policy
           ?default_content_key_policy_name ?id ?timeouts
           ~media_services_account_name ~name ~resource_group_name
           ~common_encryption_cbcs ~common_encryption_cenc
           ~envelope_encryption ~no_encryption_enabled_protocols ());
    attrs = __attrs;
  }

let register ?tf_module ?default_content_key_policy_name ?id
    ?timeouts ~media_services_account_name ~name ~resource_group_name
    ~common_encryption_cbcs ~common_encryption_cenc
    ~envelope_encryption ~no_encryption_enabled_protocols __id =
  let (r : _ Tf_core.resource) =
    make ?default_content_key_policy_name ?id ?timeouts
      ~media_services_account_name ~name ~resource_group_name
      ~common_encryption_cbcs ~common_encryption_cenc
      ~envelope_encryption ~no_encryption_enabled_protocols __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

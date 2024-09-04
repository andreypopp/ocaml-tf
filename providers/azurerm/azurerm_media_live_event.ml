(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cross_site_access_policy = {
  client_access_policy : string prop option; [@option]
  cross_domain_policy : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cross_site_access_policy) -> ()

let yojson_of_cross_site_access_policy =
  (function
   | {
       client_access_policy = v_client_access_policy;
       cross_domain_policy = v_cross_domain_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_cross_domain_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cross_domain_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_access_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_access_policy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cross_site_access_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cross_site_access_policy

[@@@deriving.end]

type encoding = {
  key_frame_interval : string prop option; [@option]
  preset_name : string prop option; [@option]
  stretch_mode : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encoding) -> ()

let yojson_of_encoding =
  (function
   | {
       key_frame_interval = v_key_frame_interval;
       preset_name = v_preset_name;
       stretch_mode = v_stretch_mode;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_stretch_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "stretch_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preset_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preset_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_frame_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_frame_interval", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encoding -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encoding

[@@@deriving.end]

type input__ip_access_control_allow = {
  address : string prop option; [@option]
  name : string prop option; [@option]
  subnet_prefix_length : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : input__ip_access_control_allow) -> ()

let yojson_of_input__ip_access_control_allow =
  (function
   | {
       address = v_address;
       name = v_name;
       subnet_prefix_length = v_subnet_prefix_length;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_subnet_prefix_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "subnet_prefix_length", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : input__ip_access_control_allow ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_input__ip_access_control_allow

[@@@deriving.end]

type input__endpoint = { protocol : string prop; url : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : input__endpoint) -> ()

let yojson_of_input__endpoint =
  (function
   | { protocol = v_protocol; url = v_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       `Assoc bnds
    : input__endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_input__endpoint

[@@@deriving.end]

type input = {
  access_token : string prop option; [@option]
  key_frame_interval_duration : string prop option; [@option]
  streaming_protocol : string prop option; [@option]
  ip_access_control_allow : input__ip_access_control_allow list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : input) -> ()

let yojson_of_input =
  (function
   | {
       access_token = v_access_token;
       key_frame_interval_duration = v_key_frame_interval_duration;
       streaming_protocol = v_streaming_protocol;
       ip_access_control_allow = v_ip_access_control_allow;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_access_control_allow then bnds
         else
           let arg =
             (yojson_of_list yojson_of_input__ip_access_control_allow)
               v_ip_access_control_allow
           in
           let bnd = "ip_access_control_allow", arg in
           bnd :: bnds
       in
       let bnds =
         match v_streaming_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "streaming_protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_frame_interval_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_frame_interval_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_token", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : input -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_input

[@@@deriving.end]

type preview__ip_access_control_allow = {
  address : string prop option; [@option]
  name : string prop option; [@option]
  subnet_prefix_length : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : preview__ip_access_control_allow) -> ()

let yojson_of_preview__ip_access_control_allow =
  (function
   | {
       address = v_address;
       name = v_name;
       subnet_prefix_length = v_subnet_prefix_length;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_subnet_prefix_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "subnet_prefix_length", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : preview__ip_access_control_allow ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_preview__ip_access_control_allow

[@@@deriving.end]

type preview__endpoint = {
  protocol : string prop;
  url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : preview__endpoint) -> ()

let yojson_of_preview__endpoint =
  (function
   | { protocol = v_protocol; url = v_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       `Assoc bnds
    : preview__endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_preview__endpoint

[@@@deriving.end]

type preview = {
  alternative_media_id : string prop option; [@option]
  preview_locator : string prop option; [@option]
  streaming_policy_name : string prop option; [@option]
  ip_access_control_allow : preview__ip_access_control_allow list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : preview) -> ()

let yojson_of_preview =
  (function
   | {
       alternative_media_id = v_alternative_media_id;
       preview_locator = v_preview_locator;
       streaming_policy_name = v_streaming_policy_name;
       ip_access_control_allow = v_ip_access_control_allow;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ip_access_control_allow then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_preview__ip_access_control_allow)
               v_ip_access_control_allow
           in
           let bnd = "ip_access_control_allow", arg in
           bnd :: bnds
       in
       let bnds =
         match v_streaming_policy_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "streaming_policy_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preview_locator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preview_locator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_alternative_media_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "alternative_media_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : preview -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_preview

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_media_live_event = {
  auto_start_enabled : bool prop option; [@option]
  description : string prop option; [@option]
  hostname_prefix : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  media_services_account_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  stream_options : string prop list option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  transcription_languages : string prop list option; [@option]
  use_static_hostname : bool prop option; [@option]
  cross_site_access_policy : cross_site_access_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  encoding : encoding list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  input : input list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  preview : preview list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_media_live_event) -> ()

let yojson_of_azurerm_media_live_event =
  (function
   | {
       auto_start_enabled = v_auto_start_enabled;
       description = v_description;
       hostname_prefix = v_hostname_prefix;
       id = v_id;
       location = v_location;
       media_services_account_name = v_media_services_account_name;
       name = v_name;
       resource_group_name = v_resource_group_name;
       stream_options = v_stream_options;
       tags = v_tags;
       transcription_languages = v_transcription_languages;
       use_static_hostname = v_use_static_hostname;
       cross_site_access_policy = v_cross_site_access_policy;
       encoding = v_encoding;
       input = v_input;
       preview = v_preview;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_preview then bnds
         else
           let arg = (yojson_of_list yojson_of_preview) v_preview in
           let bnd = "preview", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_input then bnds
         else
           let arg = (yojson_of_list yojson_of_input) v_input in
           let bnd = "input", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_encoding then bnds
         else
           let arg =
             (yojson_of_list yojson_of_encoding) v_encoding
           in
           let bnd = "encoding", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cross_site_access_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cross_site_access_policy)
               v_cross_site_access_policy
           in
           let bnd = "cross_site_access_policy", arg in
           bnd :: bnds
       in
       let bnds =
         match v_use_static_hostname with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_static_hostname", arg in
             bnd :: bnds
       in
       let bnds =
         match v_transcription_languages with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "transcription_languages", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_stream_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "stream_options", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_media_services_account_name
         in
         ("media_services_account_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hostname_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hostname_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_start_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_start_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_media_live_event -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_media_live_event

[@@@deriving.end]

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
    ?streaming_protocol ?(ip_access_control_allow = []) () : input =
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
    ?streaming_policy_name ?(ip_access_control_allow = []) () :
    preview =
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
    ?transcription_languages ?use_static_hostname
    ?(cross_site_access_policy = []) ?(encoding = []) ?(preview = [])
    ?timeouts ~location ~media_services_account_name ~name
    ~resource_group_name ~input () : azurerm_media_live_event =
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
  tf_name : string;
  auto_start_enabled : bool prop;
  description : string prop;
  hostname_prefix : string prop;
  id : string prop;
  location : string prop;
  media_services_account_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  stream_options : string list prop;
  tags : string Tf_core.assoc prop;
  transcription_languages : string list prop;
  use_static_hostname : bool prop;
}

let make ?auto_start_enabled ?description ?hostname_prefix ?id
    ?stream_options ?tags ?transcription_languages
    ?use_static_hostname ?(cross_site_access_policy = [])
    ?(encoding = []) ?(preview = []) ?timeouts ~location
    ~media_services_account_name ~name ~resource_group_name ~input
    __id =
  let __type = "azurerm_media_live_event" in
  let __attrs =
    ({
       tf_name = __id;
       auto_start_enabled =
         Prop.computed __type __id "auto_start_enabled";
       description = Prop.computed __type __id "description";
       hostname_prefix = Prop.computed __type __id "hostname_prefix";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       media_services_account_name =
         Prop.computed __type __id "media_services_account_name";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       stream_options = Prop.computed __type __id "stream_options";
       tags = Prop.computed __type __id "tags";
       transcription_languages =
         Prop.computed __type __id "transcription_languages";
       use_static_hostname =
         Prop.computed __type __id "use_static_hostname";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_media_live_event
        (azurerm_media_live_event ?auto_start_enabled ?description
           ?hostname_prefix ?id ?stream_options ?tags
           ?transcription_languages ?use_static_hostname
           ~cross_site_access_policy ~encoding ~preview ?timeouts
           ~location ~media_services_account_name ~name
           ~resource_group_name ~input ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_start_enabled ?description
    ?hostname_prefix ?id ?stream_options ?tags
    ?transcription_languages ?use_static_hostname
    ?(cross_site_access_policy = []) ?(encoding = []) ?(preview = [])
    ?timeouts ~location ~media_services_account_name ~name
    ~resource_group_name ~input __id =
  let (r : _ Tf_core.resource) =
    make ?auto_start_enabled ?description ?hostname_prefix ?id
      ?stream_options ?tags ?transcription_languages
      ?use_static_hostname ~cross_site_access_policy ~encoding
      ~preview ?timeouts ~location ~media_services_account_name ~name
      ~resource_group_name ~input __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

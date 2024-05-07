(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_device_settings_policy = {
  account_id : string prop;
  allow_mode_switch : bool prop option; [@option]
  allow_updates : bool prop option; [@option]
  allowed_to_leave : bool prop option; [@option]
  auto_connect : float prop option; [@option]
  captive_portal : float prop option; [@option]
  default : bool prop option; [@option]
  description : string prop;
  disable_auto_fallback : bool prop option; [@option]
  enabled : bool prop option; [@option]
  exclude_office_ips : bool prop option; [@option]
  id : string prop option; [@option]
  match_ : string prop option; [@option] [@key "match"]
  name : string prop;
  precedence : float prop option; [@option]
  service_mode_v2_mode : string prop option; [@option]
  service_mode_v2_port : float prop option; [@option]
  support_url : string prop option; [@option]
  switch_locked : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_device_settings_policy) -> ()

let yojson_of_cloudflare_device_settings_policy =
  (function
   | {
       account_id = v_account_id;
       allow_mode_switch = v_allow_mode_switch;
       allow_updates = v_allow_updates;
       allowed_to_leave = v_allowed_to_leave;
       auto_connect = v_auto_connect;
       captive_portal = v_captive_portal;
       default = v_default;
       description = v_description;
       disable_auto_fallback = v_disable_auto_fallback;
       enabled = v_enabled;
       exclude_office_ips = v_exclude_office_ips;
       id = v_id;
       match_ = v_match_;
       name = v_name;
       precedence = v_precedence;
       service_mode_v2_mode = v_service_mode_v2_mode;
       service_mode_v2_port = v_service_mode_v2_port;
       support_url = v_support_url;
       switch_locked = v_switch_locked;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_switch_locked with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "switch_locked", arg in
             bnd :: bnds
       in
       let bnds =
         match v_support_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "support_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_mode_v2_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "service_mode_v2_port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_mode_v2_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_mode_v2_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_precedence with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "precedence", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_match_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "match", arg in
             bnd :: bnds
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
         match v_exclude_office_ips with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "exclude_office_ips", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_auto_fallback with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_auto_fallback", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         match v_default with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "default", arg in
             bnd :: bnds
       in
       let bnds =
         match v_captive_portal with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "captive_portal", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_connect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "auto_connect", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_to_leave with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allowed_to_leave", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_updates with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_updates", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_mode_switch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_mode_switch", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_device_settings_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_device_settings_policy

[@@@deriving.end]

let cloudflare_device_settings_policy ?allow_mode_switch
    ?allow_updates ?allowed_to_leave ?auto_connect ?captive_portal
    ?default ?disable_auto_fallback ?enabled ?exclude_office_ips ?id
    ?match_ ?precedence ?service_mode_v2_mode ?service_mode_v2_port
    ?support_url ?switch_locked ~account_id ~description ~name () :
    cloudflare_device_settings_policy =
  {
    account_id;
    allow_mode_switch;
    allow_updates;
    allowed_to_leave;
    auto_connect;
    captive_portal;
    default;
    description;
    disable_auto_fallback;
    enabled;
    exclude_office_ips;
    id;
    match_;
    name;
    precedence;
    service_mode_v2_mode;
    service_mode_v2_port;
    support_url;
    switch_locked;
  }

type t = {
  tf_name : string;
  account_id : string prop;
  allow_mode_switch : bool prop;
  allow_updates : bool prop;
  allowed_to_leave : bool prop;
  auto_connect : float prop;
  captive_portal : float prop;
  default : bool prop;
  description : string prop;
  disable_auto_fallback : bool prop;
  enabled : bool prop;
  exclude_office_ips : bool prop;
  id : string prop;
  match_ : string prop;
  name : string prop;
  precedence : float prop;
  service_mode_v2_mode : string prop;
  service_mode_v2_port : float prop;
  support_url : string prop;
  switch_locked : bool prop;
}

let make ?allow_mode_switch ?allow_updates ?allowed_to_leave
    ?auto_connect ?captive_portal ?default ?disable_auto_fallback
    ?enabled ?exclude_office_ips ?id ?match_ ?precedence
    ?service_mode_v2_mode ?service_mode_v2_port ?support_url
    ?switch_locked ~account_id ~description ~name __id =
  let __type = "cloudflare_device_settings_policy" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       allow_mode_switch =
         Prop.computed __type __id "allow_mode_switch";
       allow_updates = Prop.computed __type __id "allow_updates";
       allowed_to_leave =
         Prop.computed __type __id "allowed_to_leave";
       auto_connect = Prop.computed __type __id "auto_connect";
       captive_portal = Prop.computed __type __id "captive_portal";
       default = Prop.computed __type __id "default";
       description = Prop.computed __type __id "description";
       disable_auto_fallback =
         Prop.computed __type __id "disable_auto_fallback";
       enabled = Prop.computed __type __id "enabled";
       exclude_office_ips =
         Prop.computed __type __id "exclude_office_ips";
       id = Prop.computed __type __id "id";
       match_ = Prop.computed __type __id "match";
       name = Prop.computed __type __id "name";
       precedence = Prop.computed __type __id "precedence";
       service_mode_v2_mode =
         Prop.computed __type __id "service_mode_v2_mode";
       service_mode_v2_port =
         Prop.computed __type __id "service_mode_v2_port";
       support_url = Prop.computed __type __id "support_url";
       switch_locked = Prop.computed __type __id "switch_locked";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_device_settings_policy
        (cloudflare_device_settings_policy ?allow_mode_switch
           ?allow_updates ?allowed_to_leave ?auto_connect
           ?captive_portal ?default ?disable_auto_fallback ?enabled
           ?exclude_office_ips ?id ?match_ ?precedence
           ?service_mode_v2_mode ?service_mode_v2_port ?support_url
           ?switch_locked ~account_id ~description ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_mode_switch ?allow_updates
    ?allowed_to_leave ?auto_connect ?captive_portal ?default
    ?disable_auto_fallback ?enabled ?exclude_office_ips ?id ?match_
    ?precedence ?service_mode_v2_mode ?service_mode_v2_port
    ?support_url ?switch_locked ~account_id ~description ~name __id =
  let (r : _ Tf_core.resource) =
    make ?allow_mode_switch ?allow_updates ?allowed_to_leave
      ?auto_connect ?captive_portal ?default ?disable_auto_fallback
      ?enabled ?exclude_office_ips ?id ?match_ ?precedence
      ?service_mode_v2_mode ?service_mode_v2_port ?support_url
      ?switch_locked ~account_id ~description ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

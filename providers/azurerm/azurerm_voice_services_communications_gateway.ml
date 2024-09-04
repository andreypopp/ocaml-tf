(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type service_location = {
  allowed_media_source_address_prefixes : string prop list option;
      [@option]
  allowed_signaling_source_address_prefixes :
    string prop list option;
      [@option]
  esrp_addresses : string prop list option; [@option]
  location : string prop;
  operator_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_location) -> ()

let yojson_of_service_location =
  (function
   | {
       allowed_media_source_address_prefixes =
         v_allowed_media_source_address_prefixes;
       allowed_signaling_source_address_prefixes =
         v_allowed_signaling_source_address_prefixes;
       esrp_addresses = v_esrp_addresses;
       location = v_location;
       operator_addresses = v_operator_addresses;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_operator_addresses then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_operator_addresses
           in
           let bnd = "operator_addresses", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_esrp_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "esrp_addresses", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_signaling_source_address_prefixes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd =
               "allowed_signaling_source_address_prefixes", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_media_source_address_prefixes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd =
               "allowed_media_source_address_prefixes", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : service_location -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_location

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

type azurerm_voice_services_communications_gateway = {
  api_bridge : string prop option; [@option]
  auto_generated_domain_name_label_scope : string prop option;
      [@option]
  codecs : string prop;
  connectivity : string prop;
  e911_type : string prop;
  emergency_dial_strings : string prop list option; [@option]
  id : string prop option; [@option]
  location : string prop;
  microsoft_teams_voicemail_pilot_number : string prop option;
      [@option]
  name : string prop;
  on_prem_mcp_enabled : bool prop option; [@option]
  platforms : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_group_name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  service_location : service_location list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_voice_services_communications_gateway) -> ()

let yojson_of_azurerm_voice_services_communications_gateway =
  (function
   | {
       api_bridge = v_api_bridge;
       auto_generated_domain_name_label_scope =
         v_auto_generated_domain_name_label_scope;
       codecs = v_codecs;
       connectivity = v_connectivity;
       e911_type = v_e911_type;
       emergency_dial_strings = v_emergency_dial_strings;
       id = v_id;
       location = v_location;
       microsoft_teams_voicemail_pilot_number =
         v_microsoft_teams_voicemail_pilot_number;
       name = v_name;
       on_prem_mcp_enabled = v_on_prem_mcp_enabled;
       platforms = v_platforms;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       service_location = v_service_location;
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
         if Stdlib.( = ) [] v_service_location then bnds
         else
           let arg =
             (yojson_of_list yojson_of_service_location)
               v_service_location
           in
           let bnd = "service_location", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_platforms then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_platforms
           in
           let bnd = "platforms", arg in
           bnd :: bnds
       in
       let bnds =
         match v_on_prem_mcp_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "on_prem_mcp_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_microsoft_teams_voicemail_pilot_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "microsoft_teams_voicemail_pilot_number", arg
             in
             bnd :: bnds
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
         match v_emergency_dial_strings with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "emergency_dial_strings", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_e911_type in
         ("e911_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_connectivity in
         ("connectivity", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_codecs in
         ("codecs", arg) :: bnds
       in
       let bnds =
         match v_auto_generated_domain_name_label_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "auto_generated_domain_name_label_scope", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_api_bridge with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "api_bridge", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_voice_services_communications_gateway ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_voice_services_communications_gateway

[@@@deriving.end]

let service_location ?allowed_media_source_address_prefixes
    ?allowed_signaling_source_address_prefixes ?esrp_addresses
    ~location ~operator_addresses () : service_location =
  {
    allowed_media_source_address_prefixes;
    allowed_signaling_source_address_prefixes;
    esrp_addresses;
    location;
    operator_addresses;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_voice_services_communications_gateway ?api_bridge
    ?auto_generated_domain_name_label_scope ?emergency_dial_strings
    ?id ?microsoft_teams_voicemail_pilot_number ?on_prem_mcp_enabled
    ?tags ?timeouts ~codecs ~connectivity ~e911_type ~location ~name
    ~platforms ~resource_group_name ~service_location () :
    azurerm_voice_services_communications_gateway =
  {
    api_bridge;
    auto_generated_domain_name_label_scope;
    codecs;
    connectivity;
    e911_type;
    emergency_dial_strings;
    id;
    location;
    microsoft_teams_voicemail_pilot_number;
    name;
    on_prem_mcp_enabled;
    platforms;
    resource_group_name;
    tags;
    service_location;
    timeouts;
  }

type t = {
  tf_name : string;
  api_bridge : string prop;
  auto_generated_domain_name_label_scope : string prop;
  codecs : string prop;
  connectivity : string prop;
  e911_type : string prop;
  emergency_dial_strings : string list prop;
  id : string prop;
  location : string prop;
  microsoft_teams_voicemail_pilot_number : string prop;
  name : string prop;
  on_prem_mcp_enabled : bool prop;
  platforms : string list prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?api_bridge ?auto_generated_domain_name_label_scope
    ?emergency_dial_strings ?id
    ?microsoft_teams_voicemail_pilot_number ?on_prem_mcp_enabled
    ?tags ?timeouts ~codecs ~connectivity ~e911_type ~location ~name
    ~platforms ~resource_group_name ~service_location __id =
  let __type = "azurerm_voice_services_communications_gateway" in
  let __attrs =
    ({
       tf_name = __id;
       api_bridge = Prop.computed __type __id "api_bridge";
       auto_generated_domain_name_label_scope =
         Prop.computed __type __id
           "auto_generated_domain_name_label_scope";
       codecs = Prop.computed __type __id "codecs";
       connectivity = Prop.computed __type __id "connectivity";
       e911_type = Prop.computed __type __id "e911_type";
       emergency_dial_strings =
         Prop.computed __type __id "emergency_dial_strings";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       microsoft_teams_voicemail_pilot_number =
         Prop.computed __type __id
           "microsoft_teams_voicemail_pilot_number";
       name = Prop.computed __type __id "name";
       on_prem_mcp_enabled =
         Prop.computed __type __id "on_prem_mcp_enabled";
       platforms = Prop.computed __type __id "platforms";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_voice_services_communications_gateway
        (azurerm_voice_services_communications_gateway ?api_bridge
           ?auto_generated_domain_name_label_scope
           ?emergency_dial_strings ?id
           ?microsoft_teams_voicemail_pilot_number
           ?on_prem_mcp_enabled ?tags ?timeouts ~codecs ~connectivity
           ~e911_type ~location ~name ~platforms ~resource_group_name
           ~service_location ());
    attrs = __attrs;
  }

let register ?tf_module ?api_bridge
    ?auto_generated_domain_name_label_scope ?emergency_dial_strings
    ?id ?microsoft_teams_voicemail_pilot_number ?on_prem_mcp_enabled
    ?tags ?timeouts ~codecs ~connectivity ~e911_type ~location ~name
    ~platforms ~resource_group_name ~service_location __id =
  let (r : _ Tf_core.resource) =
    make ?api_bridge ?auto_generated_domain_name_label_scope
      ?emergency_dial_strings ?id
      ?microsoft_teams_voicemail_pilot_number ?on_prem_mcp_enabled
      ?tags ?timeouts ~codecs ~connectivity ~e911_type ~location
      ~name ~platforms ~resource_group_name ~service_location __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

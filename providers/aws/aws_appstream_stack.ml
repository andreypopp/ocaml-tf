(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type access_endpoints = {
  endpoint_type : string prop;
  vpce_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_endpoints) -> ()

let yojson_of_access_endpoints =
  (function
   | { endpoint_type = v_endpoint_type; vpce_id = v_vpce_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vpce_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpce_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint_type in
         ("endpoint_type", arg) :: bnds
       in
       `Assoc bnds
    : access_endpoints -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_endpoints

[@@@deriving.end]

type application_settings = {
  enabled : bool prop;
  settings_group : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : application_settings) -> ()

let yojson_of_application_settings =
  (function
   | { enabled = v_enabled; settings_group = v_settings_group } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_settings_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "settings_group", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : application_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_application_settings

[@@@deriving.end]

type storage_connectors = {
  connector_type : string prop;
  domains : string prop list option; [@option]
  resource_identifier : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_connectors) -> ()

let yojson_of_storage_connectors =
  (function
   | {
       connector_type = v_connector_type;
       domains = v_domains;
       resource_identifier = v_resource_identifier;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_resource_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_identifier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_domains with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "domains", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_connector_type
         in
         ("connector_type", arg) :: bnds
       in
       `Assoc bnds
    : storage_connectors -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_connectors

[@@@deriving.end]

type streaming_experience_settings = {
  preferred_protocol : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : streaming_experience_settings) -> ()

let yojson_of_streaming_experience_settings =
  (function
   | { preferred_protocol = v_preferred_protocol } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_preferred_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preferred_protocol", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : streaming_experience_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_streaming_experience_settings

[@@@deriving.end]

type user_settings = {
  action : string prop;
  permission : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user_settings) -> ()

let yojson_of_user_settings =
  (function
   | { action = v_action; permission = v_permission } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_permission in
         ("permission", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : user_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user_settings

[@@@deriving.end]

type aws_appstream_stack = {
  description : string prop option; [@option]
  display_name : string prop option; [@option]
  embed_host_domains : string prop list option; [@option]
  feedback_url : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  redirect_url : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  access_endpoints : access_endpoints list;
  application_settings : application_settings list;
  storage_connectors : storage_connectors list;
  streaming_experience_settings : streaming_experience_settings list;
  user_settings : user_settings list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appstream_stack) -> ()

let yojson_of_aws_appstream_stack =
  (function
   | {
       description = v_description;
       display_name = v_display_name;
       embed_host_domains = v_embed_host_domains;
       feedback_url = v_feedback_url;
       id = v_id;
       name = v_name;
       redirect_url = v_redirect_url;
       tags = v_tags;
       tags_all = v_tags_all;
       access_endpoints = v_access_endpoints;
       application_settings = v_application_settings;
       storage_connectors = v_storage_connectors;
       streaming_experience_settings =
         v_streaming_experience_settings;
       user_settings = v_user_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_user_settings v_user_settings
         in
         ("user_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_streaming_experience_settings
             v_streaming_experience_settings
         in
         ("streaming_experience_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_storage_connectors
             v_storage_connectors
         in
         ("storage_connectors", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_application_settings
             v_application_settings
         in
         ("application_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_access_endpoints
             v_access_endpoints
         in
         ("access_endpoints", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_redirect_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redirect_url", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_feedback_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "feedback_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_embed_host_domains with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "embed_host_domains", arg in
             bnd :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
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
       `Assoc bnds
    : aws_appstream_stack -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appstream_stack

[@@@deriving.end]

let access_endpoints ?vpce_id ~endpoint_type () : access_endpoints =
  { endpoint_type; vpce_id }

let application_settings ?settings_group ~enabled () :
    application_settings =
  { enabled; settings_group }

let storage_connectors ?domains ?resource_identifier ~connector_type
    () : storage_connectors =
  { connector_type; domains; resource_identifier }

let streaming_experience_settings ?preferred_protocol () :
    streaming_experience_settings =
  { preferred_protocol }

let user_settings ~action ~permission () : user_settings =
  { action; permission }

let aws_appstream_stack ?description ?display_name
    ?embed_host_domains ?feedback_url ?id ?redirect_url ?tags
    ?tags_all ?(application_settings = [])
    ?(streaming_experience_settings = []) ~name ~access_endpoints
    ~storage_connectors ~user_settings () : aws_appstream_stack =
  {
    description;
    display_name;
    embed_host_domains;
    feedback_url;
    id;
    name;
    redirect_url;
    tags;
    tags_all;
    access_endpoints;
    application_settings;
    storage_connectors;
    streaming_experience_settings;
    user_settings;
  }

type t = {
  arn : string prop;
  created_time : string prop;
  description : string prop;
  display_name : string prop;
  embed_host_domains : string list prop;
  feedback_url : string prop;
  id : string prop;
  name : string prop;
  redirect_url : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?display_name ?embed_host_domains ?feedback_url
    ?id ?redirect_url ?tags ?tags_all ?(application_settings = [])
    ?(streaming_experience_settings = []) ~name ~access_endpoints
    ~storage_connectors ~user_settings __id =
  let __type = "aws_appstream_stack" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       created_time = Prop.computed __type __id "created_time";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       embed_host_domains =
         Prop.computed __type __id "embed_host_domains";
       feedback_url = Prop.computed __type __id "feedback_url";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       redirect_url = Prop.computed __type __id "redirect_url";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appstream_stack
        (aws_appstream_stack ?description ?display_name
           ?embed_host_domains ?feedback_url ?id ?redirect_url ?tags
           ?tags_all ~application_settings
           ~streaming_experience_settings ~name ~access_endpoints
           ~storage_connectors ~user_settings ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?display_name
    ?embed_host_domains ?feedback_url ?id ?redirect_url ?tags
    ?tags_all ?(application_settings = [])
    ?(streaming_experience_settings = []) ~name ~access_endpoints
    ~storage_connectors ~user_settings __id =
  let (r : _ Tf_core.resource) =
    make ?description ?display_name ?embed_host_domains ?feedback_url
      ?id ?redirect_url ?tags ?tags_all ~application_settings
      ~streaming_experience_settings ~name ~access_endpoints
      ~storage_connectors ~user_settings __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

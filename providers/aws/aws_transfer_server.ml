(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type endpoint_details = {
  address_allocation_ids : string prop list option; [@option]
  security_group_ids : string prop list option; [@option]
  subnet_ids : string prop list option; [@option]
  vpc_endpoint_id : string prop option; [@option]
  vpc_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoint_details) -> ()

let yojson_of_endpoint_details =
  (function
   | {
       address_allocation_ids = v_address_allocation_ids;
       security_group_ids = v_security_group_ids;
       subnet_ids = v_subnet_ids;
       vpc_endpoint_id = v_vpc_endpoint_id;
       vpc_id = v_vpc_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vpc_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_vpc_endpoint_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc_endpoint_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subnet_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "subnet_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_group_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address_allocation_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "address_allocation_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : endpoint_details -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoint_details

[@@@deriving.end]

type protocol_details = {
  as2_transports : string prop list option; [@option]
  passive_ip : string prop option; [@option]
  set_stat_option : string prop option; [@option]
  tls_session_resumption_mode : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : protocol_details) -> ()

let yojson_of_protocol_details =
  (function
   | {
       as2_transports = v_as2_transports;
       passive_ip = v_passive_ip;
       set_stat_option = v_set_stat_option;
       tls_session_resumption_mode = v_tls_session_resumption_mode;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tls_session_resumption_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tls_session_resumption_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_set_stat_option with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "set_stat_option", arg in
             bnd :: bnds
       in
       let bnds =
         match v_passive_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "passive_ip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_as2_transports with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "as2_transports", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : protocol_details -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_protocol_details

[@@@deriving.end]

type workflow_details__on_partial_upload = {
  execution_role : string prop;
  workflow_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : workflow_details__on_partial_upload) -> ()

let yojson_of_workflow_details__on_partial_upload =
  (function
   | {
       execution_role = v_execution_role;
       workflow_id = v_workflow_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_workflow_id in
         ("workflow_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_execution_role
         in
         ("execution_role", arg) :: bnds
       in
       `Assoc bnds
    : workflow_details__on_partial_upload ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_workflow_details__on_partial_upload

[@@@deriving.end]

type workflow_details__on_upload = {
  execution_role : string prop;
  workflow_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : workflow_details__on_upload) -> ()

let yojson_of_workflow_details__on_upload =
  (function
   | {
       execution_role = v_execution_role;
       workflow_id = v_workflow_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_workflow_id in
         ("workflow_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_execution_role
         in
         ("execution_role", arg) :: bnds
       in
       `Assoc bnds
    : workflow_details__on_upload ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_workflow_details__on_upload

[@@@deriving.end]

type workflow_details = {
  on_partial_upload : workflow_details__on_partial_upload list;
  on_upload : workflow_details__on_upload list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : workflow_details) -> ()

let yojson_of_workflow_details =
  (function
   | {
       on_partial_upload = v_on_partial_upload;
       on_upload = v_on_upload;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_workflow_details__on_upload
             v_on_upload
         in
         ("on_upload", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_workflow_details__on_partial_upload
             v_on_partial_upload
         in
         ("on_partial_upload", arg) :: bnds
       in
       `Assoc bnds
    : workflow_details -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_workflow_details

[@@@deriving.end]

type aws_transfer_server = {
  certificate : string prop option; [@option]
  directory_id : string prop option; [@option]
  domain : string prop option; [@option]
  endpoint_type : string prop option; [@option]
  force_destroy : bool prop option; [@option]
  function_ : string prop option; [@option] [@key "function"]
  host_key : string prop option; [@option]
  id : string prop option; [@option]
  identity_provider_type : string prop option; [@option]
  invocation_role : string prop option; [@option]
  logging_role : string prop option; [@option]
  post_authentication_login_banner : string prop option; [@option]
  pre_authentication_login_banner : string prop option; [@option]
  protocols : string prop list option; [@option]
  security_policy_name : string prop option; [@option]
  structured_log_destinations : string prop list option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  url : string prop option; [@option]
  endpoint_details : endpoint_details list;
  protocol_details : protocol_details list;
  workflow_details : workflow_details list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_transfer_server) -> ()

let yojson_of_aws_transfer_server =
  (function
   | {
       certificate = v_certificate;
       directory_id = v_directory_id;
       domain = v_domain;
       endpoint_type = v_endpoint_type;
       force_destroy = v_force_destroy;
       function_ = v_function_;
       host_key = v_host_key;
       id = v_id;
       identity_provider_type = v_identity_provider_type;
       invocation_role = v_invocation_role;
       logging_role = v_logging_role;
       post_authentication_login_banner =
         v_post_authentication_login_banner;
       pre_authentication_login_banner =
         v_pre_authentication_login_banner;
       protocols = v_protocols;
       security_policy_name = v_security_policy_name;
       structured_log_destinations = v_structured_log_destinations;
       tags = v_tags;
       tags_all = v_tags_all;
       url = v_url;
       endpoint_details = v_endpoint_details;
       protocol_details = v_protocol_details;
       workflow_details = v_workflow_details;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_workflow_details
             v_workflow_details
         in
         ("workflow_details", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_protocol_details
             v_protocol_details
         in
         ("protocol_details", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_endpoint_details
             v_endpoint_details
         in
         ("endpoint_details", arg) :: bnds
       in
       let bnds =
         match v_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "url", arg in
             bnd :: bnds
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
         match v_structured_log_destinations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "structured_log_destinations", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_policy_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "security_policy_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_protocols with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "protocols", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pre_authentication_login_banner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pre_authentication_login_banner", arg in
             bnd :: bnds
       in
       let bnds =
         match v_post_authentication_login_banner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "post_authentication_login_banner", arg in
             bnd :: bnds
       in
       let bnds =
         match v_logging_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logging_role", arg in
             bnd :: bnds
       in
       let bnds =
         match v_invocation_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "invocation_role", arg in
             bnd :: bnds
       in
       let bnds =
         match v_identity_provider_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_provider_type", arg in
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
         match v_host_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_function_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "function", arg in
             bnd :: bnds
       in
       let bnds =
         match v_force_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_destroy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_endpoint_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain", arg in
             bnd :: bnds
       in
       let bnds =
         match v_directory_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "directory_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_transfer_server -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_transfer_server

[@@@deriving.end]

let endpoint_details ?address_allocation_ids ?security_group_ids
    ?subnet_ids ?vpc_endpoint_id ?vpc_id () : endpoint_details =
  {
    address_allocation_ids;
    security_group_ids;
    subnet_ids;
    vpc_endpoint_id;
    vpc_id;
  }

let protocol_details ?as2_transports ?passive_ip ?set_stat_option
    ?tls_session_resumption_mode () : protocol_details =
  {
    as2_transports;
    passive_ip;
    set_stat_option;
    tls_session_resumption_mode;
  }

let workflow_details__on_partial_upload ~execution_role ~workflow_id
    () : workflow_details__on_partial_upload =
  { execution_role; workflow_id }

let workflow_details__on_upload ~execution_role ~workflow_id () :
    workflow_details__on_upload =
  { execution_role; workflow_id }

let workflow_details ?(on_partial_upload = []) ?(on_upload = []) () :
    workflow_details =
  { on_partial_upload; on_upload }

let aws_transfer_server ?certificate ?directory_id ?domain
    ?endpoint_type ?force_destroy ?function_ ?host_key ?id
    ?identity_provider_type ?invocation_role ?logging_role
    ?post_authentication_login_banner
    ?pre_authentication_login_banner ?protocols ?security_policy_name
    ?structured_log_destinations ?tags ?tags_all ?url
    ?(endpoint_details = []) ?(protocol_details = [])
    ?(workflow_details = []) () : aws_transfer_server =
  {
    certificate;
    directory_id;
    domain;
    endpoint_type;
    force_destroy;
    function_;
    host_key;
    id;
    identity_provider_type;
    invocation_role;
    logging_role;
    post_authentication_login_banner;
    pre_authentication_login_banner;
    protocols;
    security_policy_name;
    structured_log_destinations;
    tags;
    tags_all;
    url;
    endpoint_details;
    protocol_details;
    workflow_details;
  }

type t = {
  tf_name : string;
  arn : string prop;
  certificate : string prop;
  directory_id : string prop;
  domain : string prop;
  endpoint : string prop;
  endpoint_type : string prop;
  force_destroy : bool prop;
  function_ : string prop;
  host_key : string prop;
  host_key_fingerprint : string prop;
  id : string prop;
  identity_provider_type : string prop;
  invocation_role : string prop;
  logging_role : string prop;
  post_authentication_login_banner : string prop;
  pre_authentication_login_banner : string prop;
  protocols : string list prop;
  security_policy_name : string prop;
  structured_log_destinations : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  url : string prop;
}

let make ?certificate ?directory_id ?domain ?endpoint_type
    ?force_destroy ?function_ ?host_key ?id ?identity_provider_type
    ?invocation_role ?logging_role ?post_authentication_login_banner
    ?pre_authentication_login_banner ?protocols ?security_policy_name
    ?structured_log_destinations ?tags ?tags_all ?url
    ?(endpoint_details = []) ?(protocol_details = [])
    ?(workflow_details = []) __id =
  let __type = "aws_transfer_server" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       certificate = Prop.computed __type __id "certificate";
       directory_id = Prop.computed __type __id "directory_id";
       domain = Prop.computed __type __id "domain";
       endpoint = Prop.computed __type __id "endpoint";
       endpoint_type = Prop.computed __type __id "endpoint_type";
       force_destroy = Prop.computed __type __id "force_destroy";
       function_ = Prop.computed __type __id "function";
       host_key = Prop.computed __type __id "host_key";
       host_key_fingerprint =
         Prop.computed __type __id "host_key_fingerprint";
       id = Prop.computed __type __id "id";
       identity_provider_type =
         Prop.computed __type __id "identity_provider_type";
       invocation_role = Prop.computed __type __id "invocation_role";
       logging_role = Prop.computed __type __id "logging_role";
       post_authentication_login_banner =
         Prop.computed __type __id "post_authentication_login_banner";
       pre_authentication_login_banner =
         Prop.computed __type __id "pre_authentication_login_banner";
       protocols = Prop.computed __type __id "protocols";
       security_policy_name =
         Prop.computed __type __id "security_policy_name";
       structured_log_destinations =
         Prop.computed __type __id "structured_log_destinations";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_transfer_server
        (aws_transfer_server ?certificate ?directory_id ?domain
           ?endpoint_type ?force_destroy ?function_ ?host_key ?id
           ?identity_provider_type ?invocation_role ?logging_role
           ?post_authentication_login_banner
           ?pre_authentication_login_banner ?protocols
           ?security_policy_name ?structured_log_destinations ?tags
           ?tags_all ?url ~endpoint_details ~protocol_details
           ~workflow_details ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate ?directory_id ?domain
    ?endpoint_type ?force_destroy ?function_ ?host_key ?id
    ?identity_provider_type ?invocation_role ?logging_role
    ?post_authentication_login_banner
    ?pre_authentication_login_banner ?protocols ?security_policy_name
    ?structured_log_destinations ?tags ?tags_all ?url
    ?(endpoint_details = []) ?(protocol_details = [])
    ?(workflow_details = []) __id =
  let (r : _ Tf_core.resource) =
    make ?certificate ?directory_id ?domain ?endpoint_type
      ?force_destroy ?function_ ?host_key ?id ?identity_provider_type
      ?invocation_role ?logging_role
      ?post_authentication_login_banner
      ?pre_authentication_login_banner ?protocols
      ?security_policy_name ?structured_log_destinations ?tags
      ?tags_all ?url ~endpoint_details ~protocol_details
      ~workflow_details __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

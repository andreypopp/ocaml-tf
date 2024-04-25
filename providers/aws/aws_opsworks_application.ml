(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type app_source = {
  password : string prop option; [@option]
  revision : string prop option; [@option]
  ssh_key : string prop option; [@option]
  type_ : string prop; [@key "type"]
  url : string prop option; [@option]
  username : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : app_source) -> ()

let yojson_of_app_source =
  (function
   | {
       password = v_password;
       revision = v_revision;
       ssh_key = v_ssh_key;
       type_ = v_type_;
       url = v_url;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "username", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_ssh_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssh_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_revision with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "revision", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : app_source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_app_source

[@@@deriving.end]

type environment = {
  key : string prop;
  secure : bool prop option; [@option]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : environment) -> ()

let yojson_of_environment =
  (function
   | { key = v_key; secure = v_secure; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         match v_secure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "secure", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : environment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_environment

[@@@deriving.end]

type ssl_configuration = {
  certificate : string prop;
  chain : string prop option; [@option]
  private_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ssl_configuration) -> ()

let yojson_of_ssl_configuration =
  (function
   | {
       certificate = v_certificate;
       chain = v_chain;
       private_key = v_private_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_private_key in
         ("private_key", arg) :: bnds
       in
       let bnds =
         match v_chain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "chain", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_certificate in
         ("certificate", arg) :: bnds
       in
       `Assoc bnds
    : ssl_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ssl_configuration

[@@@deriving.end]

type aws_opsworks_application = {
  auto_bundle_on_deploy : string prop option; [@option]
  aws_flow_ruby_settings : string prop option; [@option]
  data_source_arn : string prop option; [@option]
  data_source_database_name : string prop option; [@option]
  data_source_type : string prop option; [@option]
  description : string prop option; [@option]
  document_root : string prop option; [@option]
  domains : string prop list option; [@option]
  enable_ssl : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  rails_env : string prop option; [@option]
  short_name : string prop option; [@option]
  stack_id : string prop;
  type_ : string prop; [@key "type"]
  app_source : app_source list;
  environment : environment list;
  ssl_configuration : ssl_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_opsworks_application) -> ()

let yojson_of_aws_opsworks_application =
  (function
   | {
       auto_bundle_on_deploy = v_auto_bundle_on_deploy;
       aws_flow_ruby_settings = v_aws_flow_ruby_settings;
       data_source_arn = v_data_source_arn;
       data_source_database_name = v_data_source_database_name;
       data_source_type = v_data_source_type;
       description = v_description;
       document_root = v_document_root;
       domains = v_domains;
       enable_ssl = v_enable_ssl;
       id = v_id;
       name = v_name;
       rails_env = v_rails_env;
       short_name = v_short_name;
       stack_id = v_stack_id;
       type_ = v_type_;
       app_source = v_app_source;
       environment = v_environment;
       ssl_configuration = v_ssl_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_ssl_configuration
             v_ssl_configuration
         in
         ("ssl_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_environment v_environment
         in
         ("environment", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_app_source v_app_source
         in
         ("app_source", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stack_id in
         ("stack_id", arg) :: bnds
       in
       let bnds =
         match v_short_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "short_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rails_env with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rails_env", arg in
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
         match v_enable_ssl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_ssl", arg in
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
         match v_document_root with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "document_root", arg in
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
         match v_data_source_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_source_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_source_database_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_source_database_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_source_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_source_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_aws_flow_ruby_settings with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "aws_flow_ruby_settings", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_bundle_on_deploy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auto_bundle_on_deploy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_opsworks_application -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_opsworks_application

[@@@deriving.end]

let app_source ?password ?revision ?ssh_key ?url ?username ~type_ ()
    : app_source =
  { password; revision; ssh_key; type_; url; username }

let environment ?secure ~key ~value () : environment =
  { key; secure; value }

let ssl_configuration ?chain ~certificate ~private_key () :
    ssl_configuration =
  { certificate; chain; private_key }

let aws_opsworks_application ?auto_bundle_on_deploy
    ?aws_flow_ruby_settings ?data_source_arn
    ?data_source_database_name ?data_source_type ?description
    ?document_root ?domains ?enable_ssl ?id ?rails_env ?short_name
    ?(app_source = []) ?(ssl_configuration = []) ~name ~stack_id
    ~type_ ~environment () : aws_opsworks_application =
  {
    auto_bundle_on_deploy;
    aws_flow_ruby_settings;
    data_source_arn;
    data_source_database_name;
    data_source_type;
    description;
    document_root;
    domains;
    enable_ssl;
    id;
    name;
    rails_env;
    short_name;
    stack_id;
    type_;
    app_source;
    environment;
    ssl_configuration;
  }

type t = {
  auto_bundle_on_deploy : string prop;
  aws_flow_ruby_settings : string prop;
  data_source_arn : string prop;
  data_source_database_name : string prop;
  data_source_type : string prop;
  description : string prop;
  document_root : string prop;
  domains : string list prop;
  enable_ssl : bool prop;
  id : string prop;
  name : string prop;
  rails_env : string prop;
  short_name : string prop;
  stack_id : string prop;
  type_ : string prop;
}

let make ?auto_bundle_on_deploy ?aws_flow_ruby_settings
    ?data_source_arn ?data_source_database_name ?data_source_type
    ?description ?document_root ?domains ?enable_ssl ?id ?rails_env
    ?short_name ?(app_source = []) ?(ssl_configuration = []) ~name
    ~stack_id ~type_ ~environment __id =
  let __type = "aws_opsworks_application" in
  let __attrs =
    ({
       auto_bundle_on_deploy =
         Prop.computed __type __id "auto_bundle_on_deploy";
       aws_flow_ruby_settings =
         Prop.computed __type __id "aws_flow_ruby_settings";
       data_source_arn = Prop.computed __type __id "data_source_arn";
       data_source_database_name =
         Prop.computed __type __id "data_source_database_name";
       data_source_type =
         Prop.computed __type __id "data_source_type";
       description = Prop.computed __type __id "description";
       document_root = Prop.computed __type __id "document_root";
       domains = Prop.computed __type __id "domains";
       enable_ssl = Prop.computed __type __id "enable_ssl";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       rails_env = Prop.computed __type __id "rails_env";
       short_name = Prop.computed __type __id "short_name";
       stack_id = Prop.computed __type __id "stack_id";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_opsworks_application
        (aws_opsworks_application ?auto_bundle_on_deploy
           ?aws_flow_ruby_settings ?data_source_arn
           ?data_source_database_name ?data_source_type ?description
           ?document_root ?domains ?enable_ssl ?id ?rails_env
           ?short_name ~app_source ~ssl_configuration ~name ~stack_id
           ~type_ ~environment ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_bundle_on_deploy
    ?aws_flow_ruby_settings ?data_source_arn
    ?data_source_database_name ?data_source_type ?description
    ?document_root ?domains ?enable_ssl ?id ?rails_env ?short_name
    ?(app_source = []) ?(ssl_configuration = []) ~name ~stack_id
    ~type_ ~environment __id =
  let (r : _ Tf_core.resource) =
    make ?auto_bundle_on_deploy ?aws_flow_ruby_settings
      ?data_source_arn ?data_source_database_name ?data_source_type
      ?description ?document_root ?domains ?enable_ssl ?id ?rails_env
      ?short_name ~app_source ~ssl_configuration ~name ~stack_id
      ~type_ ~environment __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type app_source = {
  password : string prop option; [@option]  (** password *)
  revision : string prop option; [@option]  (** revision *)
  ssh_key : string prop option; [@option]  (** ssh_key *)
  type_ : string prop; [@key "type"]  (** type *)
  url : string prop option; [@option]  (** url *)
  username : string prop option; [@option]  (** username *)
}
[@@deriving yojson_of]
(** app_source *)

type environment = {
  key : string prop;  (** key *)
  secure : bool prop option; [@option]  (** secure *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** environment *)

type ssl_configuration = {
  certificate : string prop;  (** certificate *)
  chain : string prop option; [@option]  (** chain *)
  private_key : string prop;  (** private_key *)
}
[@@deriving yojson_of]
(** ssl_configuration *)

type aws_opsworks_application = {
  auto_bundle_on_deploy : string prop option; [@option]
      (** auto_bundle_on_deploy *)
  aws_flow_ruby_settings : string prop option; [@option]
      (** aws_flow_ruby_settings *)
  data_source_arn : string prop option; [@option]
      (** data_source_arn *)
  data_source_database_name : string prop option; [@option]
      (** data_source_database_name *)
  data_source_type : string prop option; [@option]
      (** data_source_type *)
  description : string prop option; [@option]  (** description *)
  document_root : string prop option; [@option]  (** document_root *)
  domains : string prop list option; [@option]  (** domains *)
  enable_ssl : bool prop option; [@option]  (** enable_ssl *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  rails_env : string prop option; [@option]  (** rails_env *)
  short_name : string prop option; [@option]  (** short_name *)
  stack_id : string prop;  (** stack_id *)
  type_ : string prop; [@key "type"]  (** type *)
  app_source : app_source list;
  environment : environment list;
  ssl_configuration : ssl_configuration list;
}
[@@deriving yojson_of]
(** aws_opsworks_application *)

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
    ~name ~stack_id ~type_ ~app_source ~environment
    ~ssl_configuration () : aws_opsworks_application =
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
    ?short_name ~name ~stack_id ~type_ ~app_source ~environment
    ~ssl_configuration __id =
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
           ?short_name ~name ~stack_id ~type_ ~app_source
           ~environment ~ssl_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_bundle_on_deploy
    ?aws_flow_ruby_settings ?data_source_arn
    ?data_source_database_name ?data_source_type ?description
    ?document_root ?domains ?enable_ssl ?id ?rails_env ?short_name
    ~name ~stack_id ~type_ ~app_source ~environment
    ~ssl_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?auto_bundle_on_deploy ?aws_flow_ruby_settings
      ?data_source_arn ?data_source_database_name ?data_source_type
      ?description ?document_root ?domains ?enable_ssl ?id ?rails_env
      ?short_name ~name ~stack_id ~type_ ~app_source ~environment
      ~ssl_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

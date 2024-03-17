(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_opsworks_application__app_source = {
  password : string prop option; [@option]  (** password *)
  revision : string prop option; [@option]  (** revision *)
  ssh_key : string prop option; [@option]  (** ssh_key *)
  type_ : string prop; [@key "type"]  (** type *)
  url : string prop option; [@option]  (** url *)
  username : string prop option; [@option]  (** username *)
}
[@@deriving yojson_of]
(** aws_opsworks_application__app_source *)

type aws_opsworks_application__environment = {
  key : string prop;  (** key *)
  secure : bool prop option; [@option]  (** secure *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_opsworks_application__environment *)

type aws_opsworks_application__ssl_configuration = {
  certificate : string prop;  (** certificate *)
  chain : string prop option; [@option]  (** chain *)
  private_key : string prop;  (** private_key *)
}
[@@deriving yojson_of]
(** aws_opsworks_application__ssl_configuration *)

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
  app_source : aws_opsworks_application__app_source list;
  environment : aws_opsworks_application__environment list;
  ssl_configuration :
    aws_opsworks_application__ssl_configuration list;
}
[@@deriving yojson_of]
(** aws_opsworks_application *)

let aws_opsworks_application ?auto_bundle_on_deploy
    ?aws_flow_ruby_settings ?data_source_arn
    ?data_source_database_name ?data_source_type ?description
    ?document_root ?domains ?enable_ssl ?id ?rails_env ?short_name
    ~name ~stack_id ~type_ ~app_source ~environment
    ~ssl_configuration __resource_id =
  let __resource_type = "aws_opsworks_application" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opsworks_application __resource);
  ()

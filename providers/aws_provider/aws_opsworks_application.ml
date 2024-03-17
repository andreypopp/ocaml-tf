(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_opsworks_application__app_source = {
  password : string option; [@option]  (** password *)
  revision : string option; [@option]  (** revision *)
  ssh_key : string option; [@option]  (** ssh_key *)
  type_ : string; [@key "type"]  (** type *)
  url : string option; [@option]  (** url *)
  username : string option; [@option]  (** username *)
}
[@@deriving yojson_of]
(** aws_opsworks_application__app_source *)

type aws_opsworks_application__environment = {
  key : string;  (** key *)
  secure : bool option; [@option]  (** secure *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_opsworks_application__environment *)

type aws_opsworks_application__ssl_configuration = {
  certificate : string;  (** certificate *)
  chain : string option; [@option]  (** chain *)
  private_key : string;  (** private_key *)
}
[@@deriving yojson_of]
(** aws_opsworks_application__ssl_configuration *)

type aws_opsworks_application = {
  auto_bundle_on_deploy : string option; [@option]
      (** auto_bundle_on_deploy *)
  aws_flow_ruby_settings : string option; [@option]
      (** aws_flow_ruby_settings *)
  data_source_arn : string option; [@option]  (** data_source_arn *)
  data_source_database_name : string option; [@option]
      (** data_source_database_name *)
  data_source_type : string option; [@option]
      (** data_source_type *)
  description : string option; [@option]  (** description *)
  document_root : string option; [@option]  (** document_root *)
  domains : string list option; [@option]  (** domains *)
  enable_ssl : bool option; [@option]  (** enable_ssl *)
  name : string;  (** name *)
  rails_env : string option; [@option]  (** rails_env *)
  stack_id : string;  (** stack_id *)
  type_ : string; [@key "type"]  (** type *)
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
    ?document_root ?domains ?enable_ssl ?rails_env ~name ~stack_id
    ~type_ ~app_source ~environment ~ssl_configuration __resource_id
    =
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
      name;
      rails_env;
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

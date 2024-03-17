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

let aws_opsworks_application ?auto_bundle_on_deploy
    ?aws_flow_ruby_settings ?data_source_arn
    ?data_source_database_name ?data_source_type ?description
    ?document_root ?domains ?enable_ssl ?id ?rails_env ?short_name
    ~name ~stack_id ~type_ ~app_source ~environment
    ~ssl_configuration __resource_id =
  let __resource_type = "aws_opsworks_application" in
  let __resource =
    ({
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
      : aws_opsworks_application)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opsworks_application __resource);
  let __resource_attributes =
    ({
       auto_bundle_on_deploy =
         Prop.computed __resource_type __resource_id
           "auto_bundle_on_deploy";
       aws_flow_ruby_settings =
         Prop.computed __resource_type __resource_id
           "aws_flow_ruby_settings";
       data_source_arn =
         Prop.computed __resource_type __resource_id
           "data_source_arn";
       data_source_database_name =
         Prop.computed __resource_type __resource_id
           "data_source_database_name";
       data_source_type =
         Prop.computed __resource_type __resource_id
           "data_source_type";
       description =
         Prop.computed __resource_type __resource_id "description";
       document_root =
         Prop.computed __resource_type __resource_id "document_root";
       domains =
         Prop.computed __resource_type __resource_id "domains";
       enable_ssl =
         Prop.computed __resource_type __resource_id "enable_ssl";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       rails_env =
         Prop.computed __resource_type __resource_id "rails_env";
       short_name =
         Prop.computed __resource_type __resource_id "short_name";
       stack_id =
         Prop.computed __resource_type __resource_id "stack_id";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes

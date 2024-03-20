(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption_configuration = {
  kms_key : string prop;  (** kms_key *)
}
[@@deriving yojson_of]
(** encryption_configuration *)

type health_check_configuration = {
  healthy_threshold : float prop option; [@option]
      (** healthy_threshold *)
  interval : float prop option; [@option]  (** interval *)
  path : string prop option; [@option]  (** path *)
  protocol : string prop option; [@option]  (** protocol *)
  timeout : float prop option; [@option]  (** timeout *)
  unhealthy_threshold : float prop option; [@option]
      (** unhealthy_threshold *)
}
[@@deriving yojson_of]
(** health_check_configuration *)

type instance_configuration = {
  cpu : string prop option; [@option]  (** cpu *)
  instance_role_arn : string prop option; [@option]
      (** instance_role_arn *)
  memory : string prop option; [@option]  (** memory *)
}
[@@deriving yojson_of]
(** instance_configuration *)

type network_configuration__egress_configuration = {
  egress_type : string prop option; [@option]  (** egress_type *)
  vpc_connector_arn : string prop option; [@option]
      (** vpc_connector_arn *)
}
[@@deriving yojson_of]
(** network_configuration__egress_configuration *)

type network_configuration__ingress_configuration = {
  is_publicly_accessible : bool prop option; [@option]
      (** is_publicly_accessible *)
}
[@@deriving yojson_of]
(** network_configuration__ingress_configuration *)

type network_configuration = {
  ip_address_type : string prop option; [@option]
      (** ip_address_type *)
  egress_configuration :
    network_configuration__egress_configuration list;
  ingress_configuration :
    network_configuration__ingress_configuration list;
}
[@@deriving yojson_of]
(** network_configuration *)

type observability_configuration = {
  observability_configuration_arn : string prop option; [@option]
      (** observability_configuration_arn *)
  observability_enabled : bool prop;  (** observability_enabled *)
}
[@@deriving yojson_of]
(** observability_configuration *)

type source_configuration__authentication_configuration = {
  access_role_arn : string prop option; [@option]
      (** access_role_arn *)
  connection_arn : string prop option; [@option]
      (** connection_arn *)
}
[@@deriving yojson_of]
(** source_configuration__authentication_configuration *)

type source_configuration__code_repository__code_configuration__code_configuration_values = {
  build_command : string prop option; [@option]  (** build_command *)
  port : string prop option; [@option]  (** port *)
  runtime : string prop;  (** runtime *)
  runtime_environment_secrets : (string * string prop) list option;
      [@option]
      (** runtime_environment_secrets *)
  runtime_environment_variables : (string * string prop) list option;
      [@option]
      (** runtime_environment_variables *)
  start_command : string prop option; [@option]  (** start_command *)
}
[@@deriving yojson_of]
(** source_configuration__code_repository__code_configuration__code_configuration_values *)

type source_configuration__code_repository__code_configuration = {
  configuration_source : string prop;  (** configuration_source *)
  code_configuration_values :
    source_configuration__code_repository__code_configuration__code_configuration_values
    list;
}
[@@deriving yojson_of]
(** source_configuration__code_repository__code_configuration *)

type source_configuration__code_repository__source_code_version = {
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** source_configuration__code_repository__source_code_version *)

type source_configuration__code_repository = {
  repository_url : string prop;  (** repository_url *)
  source_directory : string prop option; [@option]
      (** source_directory *)
  code_configuration :
    source_configuration__code_repository__code_configuration list;
  source_code_version :
    source_configuration__code_repository__source_code_version list;
}
[@@deriving yojson_of]
(** source_configuration__code_repository *)

type source_configuration__image_repository__image_configuration = {
  port : string prop option; [@option]  (** port *)
  runtime_environment_secrets : (string * string prop) list option;
      [@option]
      (** runtime_environment_secrets *)
  runtime_environment_variables : (string * string prop) list option;
      [@option]
      (** runtime_environment_variables *)
  start_command : string prop option; [@option]  (** start_command *)
}
[@@deriving yojson_of]
(** source_configuration__image_repository__image_configuration *)

type source_configuration__image_repository = {
  image_identifier : string prop;  (** image_identifier *)
  image_repository_type : string prop;  (** image_repository_type *)
  image_configuration :
    source_configuration__image_repository__image_configuration list;
}
[@@deriving yojson_of]
(** source_configuration__image_repository *)

type source_configuration = {
  auto_deployments_enabled : bool prop option; [@option]
      (** auto_deployments_enabled *)
  authentication_configuration :
    source_configuration__authentication_configuration list;
  code_repository : source_configuration__code_repository list;
  image_repository : source_configuration__image_repository list;
}
[@@deriving yojson_of]
(** source_configuration *)

type aws_apprunner_service = {
  auto_scaling_configuration_arn : string prop option; [@option]
      (** auto_scaling_configuration_arn *)
  id : string prop option; [@option]  (** id *)
  service_name : string prop;  (** service_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  encryption_configuration : encryption_configuration list;
  health_check_configuration : health_check_configuration list;
  instance_configuration : instance_configuration list;
  network_configuration : network_configuration list;
  observability_configuration : observability_configuration list;
  source_configuration : source_configuration list;
}
[@@deriving yojson_of]
(** aws_apprunner_service *)

let encryption_configuration ~kms_key () : encryption_configuration =
  { kms_key }

let health_check_configuration ?healthy_threshold ?interval ?path
    ?protocol ?timeout ?unhealthy_threshold () :
    health_check_configuration =
  {
    healthy_threshold;
    interval;
    path;
    protocol;
    timeout;
    unhealthy_threshold;
  }

let instance_configuration ?cpu ?instance_role_arn ?memory () :
    instance_configuration =
  { cpu; instance_role_arn; memory }

let network_configuration__egress_configuration ?egress_type
    ?vpc_connector_arn () :
    network_configuration__egress_configuration =
  { egress_type; vpc_connector_arn }

let network_configuration__ingress_configuration
    ?is_publicly_accessible () :
    network_configuration__ingress_configuration =
  { is_publicly_accessible }

let network_configuration ?ip_address_type ~egress_configuration
    ~ingress_configuration () : network_configuration =
  { ip_address_type; egress_configuration; ingress_configuration }

let observability_configuration ?observability_configuration_arn
    ~observability_enabled () : observability_configuration =
  { observability_configuration_arn; observability_enabled }

let source_configuration__authentication_configuration
    ?access_role_arn ?connection_arn () :
    source_configuration__authentication_configuration =
  { access_role_arn; connection_arn }

let source_configuration__code_repository__code_configuration__code_configuration_values
    ?build_command ?port ?runtime_environment_secrets
    ?runtime_environment_variables ?start_command ~runtime () :
    source_configuration__code_repository__code_configuration__code_configuration_values
    =
  {
    build_command;
    port;
    runtime;
    runtime_environment_secrets;
    runtime_environment_variables;
    start_command;
  }

let source_configuration__code_repository__code_configuration
    ~configuration_source ~code_configuration_values () :
    source_configuration__code_repository__code_configuration =
  { configuration_source; code_configuration_values }

let source_configuration__code_repository__source_code_version ~type_
    ~value () :
    source_configuration__code_repository__source_code_version =
  { type_; value }

let source_configuration__code_repository ?source_directory
    ~repository_url ~code_configuration ~source_code_version () :
    source_configuration__code_repository =
  {
    repository_url;
    source_directory;
    code_configuration;
    source_code_version;
  }

let source_configuration__image_repository__image_configuration ?port
    ?runtime_environment_secrets ?runtime_environment_variables
    ?start_command () :
    source_configuration__image_repository__image_configuration =
  {
    port;
    runtime_environment_secrets;
    runtime_environment_variables;
    start_command;
  }

let source_configuration__image_repository ~image_identifier
    ~image_repository_type ~image_configuration () :
    source_configuration__image_repository =
  { image_identifier; image_repository_type; image_configuration }

let source_configuration ?auto_deployments_enabled
    ~authentication_configuration ~code_repository ~image_repository
    () : source_configuration =
  {
    auto_deployments_enabled;
    authentication_configuration;
    code_repository;
    image_repository;
  }

let aws_apprunner_service ?auto_scaling_configuration_arn ?id ?tags
    ?tags_all ~service_name ~encryption_configuration
    ~health_check_configuration ~instance_configuration
    ~network_configuration ~observability_configuration
    ~source_configuration () : aws_apprunner_service =
  {
    auto_scaling_configuration_arn;
    id;
    service_name;
    tags;
    tags_all;
    encryption_configuration;
    health_check_configuration;
    instance_configuration;
    network_configuration;
    observability_configuration;
    source_configuration;
  }

type t = {
  arn : string prop;
  auto_scaling_configuration_arn : string prop;
  id : string prop;
  service_id : string prop;
  service_name : string prop;
  service_url : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?auto_scaling_configuration_arn ?id ?tags ?tags_all
    ~service_name ~encryption_configuration
    ~health_check_configuration ~instance_configuration
    ~network_configuration ~observability_configuration
    ~source_configuration __id =
  let __type = "aws_apprunner_service" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       auto_scaling_configuration_arn =
         Prop.computed __type __id "auto_scaling_configuration_arn";
       id = Prop.computed __type __id "id";
       service_id = Prop.computed __type __id "service_id";
       service_name = Prop.computed __type __id "service_name";
       service_url = Prop.computed __type __id "service_url";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_apprunner_service
        (aws_apprunner_service ?auto_scaling_configuration_arn ?id
           ?tags ?tags_all ~service_name ~encryption_configuration
           ~health_check_configuration ~instance_configuration
           ~network_configuration ~observability_configuration
           ~source_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_scaling_configuration_arn ?id ?tags
    ?tags_all ~service_name ~encryption_configuration
    ~health_check_configuration ~instance_configuration
    ~network_configuration ~observability_configuration
    ~source_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?auto_scaling_configuration_arn ?id ?tags ?tags_all
      ~service_name ~encryption_configuration
      ~health_check_configuration ~instance_configuration
      ~network_configuration ~observability_configuration
      ~source_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type network_access_control = {
  prefix_list_ids : string prop list;  (** prefix_list_ids *)
  vpce_ids : string prop list;  (** vpce_ids *)
}
[@@deriving yojson_of]
(** network_access_control *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type vpc_configuration = {
  security_group_ids : string prop list;  (** security_group_ids *)
  subnet_ids : string prop list;  (** subnet_ids *)
}
[@@deriving yojson_of]
(** vpc_configuration *)

type aws_grafana_workspace = {
  account_access_type : string prop;  (** account_access_type *)
  authentication_providers : string prop list;
      (** authentication_providers *)
  configuration : string prop option; [@option]  (** configuration *)
  data_sources : string prop list option; [@option]
      (** data_sources *)
  description : string prop option; [@option]  (** description *)
  grafana_version : string prop option; [@option]
      (** grafana_version *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  notification_destinations : string prop list option; [@option]
      (** notification_destinations *)
  organization_role_name : string prop option; [@option]
      (** organization_role_name *)
  organizational_units : string prop list option; [@option]
      (** organizational_units *)
  permission_type : string prop;  (** permission_type *)
  role_arn : string prop option; [@option]  (** role_arn *)
  stack_set_name : string prop option; [@option]
      (** stack_set_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  network_access_control : network_access_control list;
  timeouts : timeouts option;
  vpc_configuration : vpc_configuration list;
}
[@@deriving yojson_of]
(** aws_grafana_workspace *)

let network_access_control ~prefix_list_ids ~vpce_ids () :
    network_access_control =
  { prefix_list_ids; vpce_ids }

let timeouts ?create ?update () : timeouts = { create; update }

let vpc_configuration ~security_group_ids ~subnet_ids () :
    vpc_configuration =
  { security_group_ids; subnet_ids }

let aws_grafana_workspace ?configuration ?data_sources ?description
    ?grafana_version ?id ?name ?notification_destinations
    ?organization_role_name ?organizational_units ?role_arn
    ?stack_set_name ?tags ?tags_all ?timeouts ~account_access_type
    ~authentication_providers ~permission_type
    ~network_access_control ~vpc_configuration () :
    aws_grafana_workspace =
  {
    account_access_type;
    authentication_providers;
    configuration;
    data_sources;
    description;
    grafana_version;
    id;
    name;
    notification_destinations;
    organization_role_name;
    organizational_units;
    permission_type;
    role_arn;
    stack_set_name;
    tags;
    tags_all;
    network_access_control;
    timeouts;
    vpc_configuration;
  }

type t = {
  account_access_type : string prop;
  arn : string prop;
  authentication_providers : string list prop;
  configuration : string prop;
  data_sources : string list prop;
  description : string prop;
  endpoint : string prop;
  grafana_version : string prop;
  id : string prop;
  name : string prop;
  notification_destinations : string list prop;
  organization_role_name : string prop;
  organizational_units : string list prop;
  permission_type : string prop;
  role_arn : string prop;
  saml_configuration_status : string prop;
  stack_set_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?configuration ?data_sources ?description ?grafana_version
    ?id ?name ?notification_destinations ?organization_role_name
    ?organizational_units ?role_arn ?stack_set_name ?tags ?tags_all
    ?timeouts ~account_access_type ~authentication_providers
    ~permission_type ~network_access_control ~vpc_configuration __id
    =
  let __type = "aws_grafana_workspace" in
  let __attrs =
    ({
       account_access_type =
         Prop.computed __type __id "account_access_type";
       arn = Prop.computed __type __id "arn";
       authentication_providers =
         Prop.computed __type __id "authentication_providers";
       configuration = Prop.computed __type __id "configuration";
       data_sources = Prop.computed __type __id "data_sources";
       description = Prop.computed __type __id "description";
       endpoint = Prop.computed __type __id "endpoint";
       grafana_version = Prop.computed __type __id "grafana_version";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       notification_destinations =
         Prop.computed __type __id "notification_destinations";
       organization_role_name =
         Prop.computed __type __id "organization_role_name";
       organizational_units =
         Prop.computed __type __id "organizational_units";
       permission_type = Prop.computed __type __id "permission_type";
       role_arn = Prop.computed __type __id "role_arn";
       saml_configuration_status =
         Prop.computed __type __id "saml_configuration_status";
       stack_set_name = Prop.computed __type __id "stack_set_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_grafana_workspace
        (aws_grafana_workspace ?configuration ?data_sources
           ?description ?grafana_version ?id ?name
           ?notification_destinations ?organization_role_name
           ?organizational_units ?role_arn ?stack_set_name ?tags
           ?tags_all ?timeouts ~account_access_type
           ~authentication_providers ~permission_type
           ~network_access_control ~vpc_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?configuration ?data_sources ?description
    ?grafana_version ?id ?name ?notification_destinations
    ?organization_role_name ?organizational_units ?role_arn
    ?stack_set_name ?tags ?tags_all ?timeouts ~account_access_type
    ~authentication_providers ~permission_type
    ~network_access_control ~vpc_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?configuration ?data_sources ?description ?grafana_version
      ?id ?name ?notification_destinations ?organization_role_name
      ?organizational_units ?role_arn ?stack_set_name ?tags ?tags_all
      ?timeouts ~account_access_type ~authentication_providers
      ~permission_type ~network_access_control ~vpc_configuration
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

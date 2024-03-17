(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_grafana_workspace__network_access_control = {
  prefix_list_ids : string prop list;  (** prefix_list_ids *)
  vpce_ids : string prop list;  (** vpce_ids *)
}
[@@deriving yojson_of]
(** aws_grafana_workspace__network_access_control *)

type aws_grafana_workspace__timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_grafana_workspace__timeouts *)

type aws_grafana_workspace__vpc_configuration = {
  security_group_ids : string prop list;  (** security_group_ids *)
  subnet_ids : string prop list;  (** subnet_ids *)
}
[@@deriving yojson_of]
(** aws_grafana_workspace__vpc_configuration *)

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
  network_access_control :
    aws_grafana_workspace__network_access_control list;
  timeouts : aws_grafana_workspace__timeouts option;
  vpc_configuration : aws_grafana_workspace__vpc_configuration list;
}
[@@deriving yojson_of]
(** aws_grafana_workspace *)

let aws_grafana_workspace ?configuration ?data_sources ?description
    ?grafana_version ?id ?name ?notification_destinations
    ?organization_role_name ?organizational_units ?role_arn
    ?stack_set_name ?tags ?tags_all ?timeouts ~account_access_type
    ~authentication_providers ~permission_type
    ~network_access_control ~vpc_configuration __resource_id =
  let __resource_type = "aws_grafana_workspace" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_grafana_workspace __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_grafana_workspace__network_access_control = {
  prefix_list_ids : string list;  (** prefix_list_ids *)
  vpce_ids : string list;  (** vpce_ids *)
}
[@@deriving yojson_of]
(** aws_grafana_workspace__network_access_control *)

type aws_grafana_workspace__timeouts = {
  create : string option; [@option]  (** create *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_grafana_workspace__timeouts *)

type aws_grafana_workspace__vpc_configuration = {
  security_group_ids : string list;  (** security_group_ids *)
  subnet_ids : string list;  (** subnet_ids *)
}
[@@deriving yojson_of]
(** aws_grafana_workspace__vpc_configuration *)

type aws_grafana_workspace = {
  account_access_type : string;  (** account_access_type *)
  authentication_providers : string list;
      (** authentication_providers *)
  data_sources : string list option; [@option]  (** data_sources *)
  description : string option; [@option]  (** description *)
  notification_destinations : string list option; [@option]
      (** notification_destinations *)
  organization_role_name : string option; [@option]
      (** organization_role_name *)
  organizational_units : string list option; [@option]
      (** organizational_units *)
  permission_type : string;  (** permission_type *)
  role_arn : string option; [@option]  (** role_arn *)
  stack_set_name : string option; [@option]  (** stack_set_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  network_access_control :
    aws_grafana_workspace__network_access_control list;
  timeouts : aws_grafana_workspace__timeouts option;
  vpc_configuration : aws_grafana_workspace__vpc_configuration list;
}
[@@deriving yojson_of]
(** aws_grafana_workspace *)

let aws_grafana_workspace ?data_sources ?description
    ?notification_destinations ?organization_role_name
    ?organizational_units ?role_arn ?stack_set_name ?tags ?timeouts
    ~account_access_type ~authentication_providers ~permission_type
    ~network_access_control ~vpc_configuration __resource_id =
  let __resource_type = "aws_grafana_workspace" in
  let __resource =
    {
      account_access_type;
      authentication_providers;
      data_sources;
      description;
      notification_destinations;
      organization_role_name;
      organizational_units;
      permission_type;
      role_arn;
      stack_set_name;
      tags;
      network_access_control;
      timeouts;
      vpc_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_grafana_workspace __resource);
  ()

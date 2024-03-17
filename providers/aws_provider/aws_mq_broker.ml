(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_mq_broker__configuration = {
  id : string option; [@option]  (** id *)
  revision : float option; [@option]  (** revision *)
}
[@@deriving yojson_of]
(** aws_mq_broker__configuration *)

type aws_mq_broker__encryption_options = {
  kms_key_id : string option; [@option]  (** kms_key_id *)
  use_aws_owned_key : bool option; [@option]  (** use_aws_owned_key *)
}
[@@deriving yojson_of]
(** aws_mq_broker__encryption_options *)

type aws_mq_broker__ldap_server_metadata = {
  hosts : string list option; [@option]  (** hosts *)
  role_base : string option; [@option]  (** role_base *)
  role_name : string option; [@option]  (** role_name *)
  role_search_matching : string option; [@option]
      (** role_search_matching *)
  role_search_subtree : bool option; [@option]
      (** role_search_subtree *)
  service_account_password : string option; [@option]
      (** service_account_password *)
  service_account_username : string option; [@option]
      (** service_account_username *)
  user_base : string option; [@option]  (** user_base *)
  user_role_name : string option; [@option]  (** user_role_name *)
  user_search_matching : string option; [@option]
      (** user_search_matching *)
  user_search_subtree : bool option; [@option]
      (** user_search_subtree *)
}
[@@deriving yojson_of]
(** aws_mq_broker__ldap_server_metadata *)

type aws_mq_broker__logs = {
  audit : string option; [@option]  (** audit *)
  general : bool option; [@option]  (** general *)
}
[@@deriving yojson_of]
(** aws_mq_broker__logs *)

type aws_mq_broker__maintenance_window_start_time = {
  day_of_week : string;  (** day_of_week *)
  time_of_day : string;  (** time_of_day *)
  time_zone : string;  (** time_zone *)
}
[@@deriving yojson_of]
(** aws_mq_broker__maintenance_window_start_time *)

type aws_mq_broker__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_mq_broker__timeouts *)

type aws_mq_broker__user = {
  console_access : bool option; [@option]  (** console_access *)
  groups : string list option; [@option]  (** groups *)
  password : string;  (** password *)
  replication_user : bool option; [@option]  (** replication_user *)
  username : string;  (** username *)
}
[@@deriving yojson_of]
(** aws_mq_broker__user *)

type aws_mq_broker__instances = {
  console_url : string;  (** console_url *)
  endpoints : string list;  (** endpoints *)
  ip_address : string;  (** ip_address *)
}
[@@deriving yojson_of]

type aws_mq_broker = {
  apply_immediately : bool option; [@option]
      (** apply_immediately *)
  auto_minor_version_upgrade : bool option; [@option]
      (** auto_minor_version_upgrade *)
  broker_name : string;  (** broker_name *)
  data_replication_primary_broker_arn : string option; [@option]
      (** data_replication_primary_broker_arn *)
  deployment_mode : string option; [@option]  (** deployment_mode *)
  engine_type : string;  (** engine_type *)
  engine_version : string;  (** engine_version *)
  host_instance_type : string;  (** host_instance_type *)
  publicly_accessible : bool option; [@option]
      (** publicly_accessible *)
  security_groups : string list option; [@option]
      (** security_groups *)
  tags : (string * string) list option; [@option]  (** tags *)
  configuration : aws_mq_broker__configuration list;
  encryption_options : aws_mq_broker__encryption_options list;
  ldap_server_metadata : aws_mq_broker__ldap_server_metadata list;
  logs : aws_mq_broker__logs list;
  maintenance_window_start_time :
    aws_mq_broker__maintenance_window_start_time list;
  timeouts : aws_mq_broker__timeouts option;
  user : aws_mq_broker__user list;
}
[@@deriving yojson_of]
(** aws_mq_broker *)

let aws_mq_broker ?apply_immediately ?auto_minor_version_upgrade
    ?data_replication_primary_broker_arn ?deployment_mode
    ?publicly_accessible ?security_groups ?tags ?timeouts
    ~broker_name ~engine_type ~engine_version ~host_instance_type
    ~configuration ~encryption_options ~ldap_server_metadata ~logs
    ~maintenance_window_start_time ~user __resource_id =
  let __resource_type = "aws_mq_broker" in
  let __resource =
    {
      apply_immediately;
      auto_minor_version_upgrade;
      broker_name;
      data_replication_primary_broker_arn;
      deployment_mode;
      engine_type;
      engine_version;
      host_instance_type;
      publicly_accessible;
      security_groups;
      tags;
      configuration;
      encryption_options;
      ldap_server_metadata;
      logs;
      maintenance_window_start_time;
      timeouts;
      user;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_mq_broker __resource);
  ()

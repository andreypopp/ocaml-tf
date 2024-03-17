(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_transfer_server__endpoint_details = {
  address_allocation_ids : string list option; [@option]
      (** address_allocation_ids *)
  security_group_ids : string list option; [@option]
      (** security_group_ids *)
  subnet_ids : string list option; [@option]  (** subnet_ids *)
  vpc_endpoint_id : string option; [@option]  (** vpc_endpoint_id *)
  vpc_id : string option; [@option]  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_transfer_server__endpoint_details *)

type aws_transfer_server__protocol_details = {
  as2_transports : string list option; [@option]
      (** as2_transports *)
  passive_ip : string option; [@option]  (** passive_ip *)
  set_stat_option : string option; [@option]  (** set_stat_option *)
  tls_session_resumption_mode : string option; [@option]
      (** tls_session_resumption_mode *)
}
[@@deriving yojson_of]
(** aws_transfer_server__protocol_details *)

type aws_transfer_server__workflow_details__on_partial_upload = {
  execution_role : string;  (** execution_role *)
  workflow_id : string;  (** workflow_id *)
}
[@@deriving yojson_of]
(** aws_transfer_server__workflow_details__on_partial_upload *)

type aws_transfer_server__workflow_details__on_upload = {
  execution_role : string;  (** execution_role *)
  workflow_id : string;  (** workflow_id *)
}
[@@deriving yojson_of]
(** aws_transfer_server__workflow_details__on_upload *)

type aws_transfer_server__workflow_details = {
  on_partial_upload :
    aws_transfer_server__workflow_details__on_partial_upload list;
  on_upload : aws_transfer_server__workflow_details__on_upload list;
}
[@@deriving yojson_of]
(** aws_transfer_server__workflow_details *)

type aws_transfer_server = {
  certificate : string option; [@option]  (** certificate *)
  directory_id : string option; [@option]  (** directory_id *)
  domain : string option; [@option]  (** domain *)
  endpoint_type : string option; [@option]  (** endpoint_type *)
  force_destroy : bool option; [@option]  (** force_destroy *)
  function_ : string option; [@option] [@key "function"]
      (** function *)
  host_key : string option; [@option]  (** host_key *)
  identity_provider_type : string option; [@option]
      (** identity_provider_type *)
  invocation_role : string option; [@option]  (** invocation_role *)
  logging_role : string option; [@option]  (** logging_role *)
  post_authentication_login_banner : string option; [@option]
      (** post_authentication_login_banner *)
  pre_authentication_login_banner : string option; [@option]
      (** pre_authentication_login_banner *)
  security_policy_name : string option; [@option]
      (** security_policy_name *)
  structured_log_destinations : string list option; [@option]
      (** This is a set of arns of destinations that will receive structured logs from the transfer server *)
  tags : (string * string) list option; [@option]  (** tags *)
  url : string option; [@option]  (** url *)
  endpoint_details : aws_transfer_server__endpoint_details list;
  protocol_details : aws_transfer_server__protocol_details list;
  workflow_details : aws_transfer_server__workflow_details list;
}
[@@deriving yojson_of]
(** aws_transfer_server *)

let aws_transfer_server ?certificate ?directory_id ?domain
    ?endpoint_type ?force_destroy ?function_ ?host_key
    ?identity_provider_type ?invocation_role ?logging_role
    ?post_authentication_login_banner
    ?pre_authentication_login_banner ?security_policy_name
    ?structured_log_destinations ?tags ?url ~endpoint_details
    ~protocol_details ~workflow_details __resource_id =
  let __resource_type = "aws_transfer_server" in
  let __resource =
    {
      certificate;
      directory_id;
      domain;
      endpoint_type;
      force_destroy;
      function_;
      host_key;
      identity_provider_type;
      invocation_role;
      logging_role;
      post_authentication_login_banner;
      pre_authentication_login_banner;
      security_policy_name;
      structured_log_destinations;
      tags;
      url;
      endpoint_details;
      protocol_details;
      workflow_details;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_transfer_server __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_transfer_server__endpoint_details = {
  address_allocation_ids : string prop list option; [@option]
      (** address_allocation_ids *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  subnet_ids : string prop list option; [@option]  (** subnet_ids *)
  vpc_endpoint_id : string prop option; [@option]
      (** vpc_endpoint_id *)
  vpc_id : string prop option; [@option]  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_transfer_server__endpoint_details *)

type aws_transfer_server__protocol_details = {
  as2_transports : string prop list option; [@option]
      (** as2_transports *)
  passive_ip : string prop option; [@option]  (** passive_ip *)
  set_stat_option : string prop option; [@option]
      (** set_stat_option *)
  tls_session_resumption_mode : string prop option; [@option]
      (** tls_session_resumption_mode *)
}
[@@deriving yojson_of]
(** aws_transfer_server__protocol_details *)

type aws_transfer_server__workflow_details__on_partial_upload = {
  execution_role : string prop;  (** execution_role *)
  workflow_id : string prop;  (** workflow_id *)
}
[@@deriving yojson_of]
(** aws_transfer_server__workflow_details__on_partial_upload *)

type aws_transfer_server__workflow_details__on_upload = {
  execution_role : string prop;  (** execution_role *)
  workflow_id : string prop;  (** workflow_id *)
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
  certificate : string prop option; [@option]  (** certificate *)
  directory_id : string prop option; [@option]  (** directory_id *)
  domain : string prop option; [@option]  (** domain *)
  endpoint_type : string prop option; [@option]  (** endpoint_type *)
  force_destroy : bool prop option; [@option]  (** force_destroy *)
  function_ : string prop option; [@option] [@key "function"]
      (** function *)
  host_key : string prop option; [@option]  (** host_key *)
  id : string prop option; [@option]  (** id *)
  identity_provider_type : string prop option; [@option]
      (** identity_provider_type *)
  invocation_role : string prop option; [@option]
      (** invocation_role *)
  logging_role : string prop option; [@option]  (** logging_role *)
  post_authentication_login_banner : string prop option; [@option]
      (** post_authentication_login_banner *)
  pre_authentication_login_banner : string prop option; [@option]
      (** pre_authentication_login_banner *)
  protocols : string prop list option; [@option]  (** protocols *)
  security_policy_name : string prop option; [@option]
      (** security_policy_name *)
  structured_log_destinations : string prop list option; [@option]
      (** This is a set of arns of destinations that will receive structured logs from the transfer server *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  url : string prop option; [@option]  (** url *)
  endpoint_details : aws_transfer_server__endpoint_details list;
  protocol_details : aws_transfer_server__protocol_details list;
  workflow_details : aws_transfer_server__workflow_details list;
}
[@@deriving yojson_of]
(** aws_transfer_server *)

type t = {
  arn : string prop;
  certificate : string prop;
  directory_id : string prop;
  domain : string prop;
  endpoint : string prop;
  endpoint_type : string prop;
  force_destroy : bool prop;
  function_ : string prop;
  host_key : string prop;
  host_key_fingerprint : string prop;
  id : string prop;
  identity_provider_type : string prop;
  invocation_role : string prop;
  logging_role : string prop;
  post_authentication_login_banner : string prop;
  pre_authentication_login_banner : string prop;
  protocols : string list prop;
  security_policy_name : string prop;
  structured_log_destinations : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  url : string prop;
}

let aws_transfer_server ?certificate ?directory_id ?domain
    ?endpoint_type ?force_destroy ?function_ ?host_key ?id
    ?identity_provider_type ?invocation_role ?logging_role
    ?post_authentication_login_banner
    ?pre_authentication_login_banner ?protocols ?security_policy_name
    ?structured_log_destinations ?tags ?tags_all ?url
    ~endpoint_details ~protocol_details ~workflow_details
    __resource_id =
  let __resource_type = "aws_transfer_server" in
  let __resource =
    ({
       certificate;
       directory_id;
       domain;
       endpoint_type;
       force_destroy;
       function_;
       host_key;
       id;
       identity_provider_type;
       invocation_role;
       logging_role;
       post_authentication_login_banner;
       pre_authentication_login_banner;
       protocols;
       security_policy_name;
       structured_log_destinations;
       tags;
       tags_all;
       url;
       endpoint_details;
       protocol_details;
       workflow_details;
     }
      : aws_transfer_server)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_transfer_server __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       certificate =
         Prop.computed __resource_type __resource_id "certificate";
       directory_id =
         Prop.computed __resource_type __resource_id "directory_id";
       domain = Prop.computed __resource_type __resource_id "domain";
       endpoint =
         Prop.computed __resource_type __resource_id "endpoint";
       endpoint_type =
         Prop.computed __resource_type __resource_id "endpoint_type";
       force_destroy =
         Prop.computed __resource_type __resource_id "force_destroy";
       function_ =
         Prop.computed __resource_type __resource_id "function";
       host_key =
         Prop.computed __resource_type __resource_id "host_key";
       host_key_fingerprint =
         Prop.computed __resource_type __resource_id
           "host_key_fingerprint";
       id = Prop.computed __resource_type __resource_id "id";
       identity_provider_type =
         Prop.computed __resource_type __resource_id
           "identity_provider_type";
       invocation_role =
         Prop.computed __resource_type __resource_id
           "invocation_role";
       logging_role =
         Prop.computed __resource_type __resource_id "logging_role";
       post_authentication_login_banner =
         Prop.computed __resource_type __resource_id
           "post_authentication_login_banner";
       pre_authentication_login_banner =
         Prop.computed __resource_type __resource_id
           "pre_authentication_login_banner";
       protocols =
         Prop.computed __resource_type __resource_id "protocols";
       security_policy_name =
         Prop.computed __resource_type __resource_id
           "security_policy_name";
       structured_log_destinations =
         Prop.computed __resource_type __resource_id
           "structured_log_destinations";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       url = Prop.computed __resource_type __resource_id "url";
     }
      : t)
  in
  __resource_attributes

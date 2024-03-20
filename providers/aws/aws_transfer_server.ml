(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type endpoint_details = {
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
(** endpoint_details *)

type protocol_details = {
  as2_transports : string prop list option; [@option]
      (** as2_transports *)
  passive_ip : string prop option; [@option]  (** passive_ip *)
  set_stat_option : string prop option; [@option]
      (** set_stat_option *)
  tls_session_resumption_mode : string prop option; [@option]
      (** tls_session_resumption_mode *)
}
[@@deriving yojson_of]
(** protocol_details *)

type workflow_details__on_partial_upload = {
  execution_role : string prop;  (** execution_role *)
  workflow_id : string prop;  (** workflow_id *)
}
[@@deriving yojson_of]
(** workflow_details__on_partial_upload *)

type workflow_details__on_upload = {
  execution_role : string prop;  (** execution_role *)
  workflow_id : string prop;  (** workflow_id *)
}
[@@deriving yojson_of]
(** workflow_details__on_upload *)

type workflow_details = {
  on_partial_upload : workflow_details__on_partial_upload list;
  on_upload : workflow_details__on_upload list;
}
[@@deriving yojson_of]
(** workflow_details *)

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
  endpoint_details : endpoint_details list;
  protocol_details : protocol_details list;
  workflow_details : workflow_details list;
}
[@@deriving yojson_of]
(** aws_transfer_server *)

let endpoint_details ?address_allocation_ids ?security_group_ids
    ?subnet_ids ?vpc_endpoint_id ?vpc_id () : endpoint_details =
  {
    address_allocation_ids;
    security_group_ids;
    subnet_ids;
    vpc_endpoint_id;
    vpc_id;
  }

let protocol_details ?as2_transports ?passive_ip ?set_stat_option
    ?tls_session_resumption_mode () : protocol_details =
  {
    as2_transports;
    passive_ip;
    set_stat_option;
    tls_session_resumption_mode;
  }

let workflow_details__on_partial_upload ~execution_role ~workflow_id
    () : workflow_details__on_partial_upload =
  { execution_role; workflow_id }

let workflow_details__on_upload ~execution_role ~workflow_id () :
    workflow_details__on_upload =
  { execution_role; workflow_id }

let workflow_details ~on_partial_upload ~on_upload () :
    workflow_details =
  { on_partial_upload; on_upload }

let aws_transfer_server ?certificate ?directory_id ?domain
    ?endpoint_type ?force_destroy ?function_ ?host_key ?id
    ?identity_provider_type ?invocation_role ?logging_role
    ?post_authentication_login_banner
    ?pre_authentication_login_banner ?protocols ?security_policy_name
    ?structured_log_destinations ?tags ?tags_all ?url
    ~endpoint_details ~protocol_details ~workflow_details () :
    aws_transfer_server =
  {
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

let make ?certificate ?directory_id ?domain ?endpoint_type
    ?force_destroy ?function_ ?host_key ?id ?identity_provider_type
    ?invocation_role ?logging_role ?post_authentication_login_banner
    ?pre_authentication_login_banner ?protocols ?security_policy_name
    ?structured_log_destinations ?tags ?tags_all ?url
    ~endpoint_details ~protocol_details ~workflow_details __id =
  let __type = "aws_transfer_server" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       certificate = Prop.computed __type __id "certificate";
       directory_id = Prop.computed __type __id "directory_id";
       domain = Prop.computed __type __id "domain";
       endpoint = Prop.computed __type __id "endpoint";
       endpoint_type = Prop.computed __type __id "endpoint_type";
       force_destroy = Prop.computed __type __id "force_destroy";
       function_ = Prop.computed __type __id "function";
       host_key = Prop.computed __type __id "host_key";
       host_key_fingerprint =
         Prop.computed __type __id "host_key_fingerprint";
       id = Prop.computed __type __id "id";
       identity_provider_type =
         Prop.computed __type __id "identity_provider_type";
       invocation_role = Prop.computed __type __id "invocation_role";
       logging_role = Prop.computed __type __id "logging_role";
       post_authentication_login_banner =
         Prop.computed __type __id "post_authentication_login_banner";
       pre_authentication_login_banner =
         Prop.computed __type __id "pre_authentication_login_banner";
       protocols = Prop.computed __type __id "protocols";
       security_policy_name =
         Prop.computed __type __id "security_policy_name";
       structured_log_destinations =
         Prop.computed __type __id "structured_log_destinations";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_transfer_server
        (aws_transfer_server ?certificate ?directory_id ?domain
           ?endpoint_type ?force_destroy ?function_ ?host_key ?id
           ?identity_provider_type ?invocation_role ?logging_role
           ?post_authentication_login_banner
           ?pre_authentication_login_banner ?protocols
           ?security_policy_name ?structured_log_destinations ?tags
           ?tags_all ?url ~endpoint_details ~protocol_details
           ~workflow_details ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate ?directory_id ?domain
    ?endpoint_type ?force_destroy ?function_ ?host_key ?id
    ?identity_provider_type ?invocation_role ?logging_role
    ?post_authentication_login_banner
    ?pre_authentication_login_banner ?protocols ?security_policy_name
    ?structured_log_destinations ?tags ?tags_all ?url
    ~endpoint_details ~protocol_details ~workflow_details __id =
  let (r : _ Tf_core.resource) =
    make ?certificate ?directory_id ?domain ?endpoint_type
      ?force_destroy ?function_ ?host_key ?id ?identity_provider_type
      ?invocation_role ?logging_role
      ?post_authentication_login_banner
      ?pre_authentication_login_banner ?protocols
      ?security_policy_name ?structured_log_destinations ?tags
      ?tags_all ?url ~endpoint_details ~protocol_details
      ~workflow_details __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

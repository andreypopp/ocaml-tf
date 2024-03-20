(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type as2_config = {
  compression : string prop;  (** compression *)
  encryption_algorithm : string prop;  (** encryption_algorithm *)
  local_profile_id : string prop;  (** local_profile_id *)
  mdn_response : string prop;  (** mdn_response *)
  mdn_signing_algorithm : string prop option; [@option]
      (** mdn_signing_algorithm *)
  message_subject : string prop option; [@option]
      (** message_subject *)
  partner_profile_id : string prop;  (** partner_profile_id *)
  signing_algorithm : string prop;  (** signing_algorithm *)
}
[@@deriving yojson_of]
(** as2_config *)

type sftp_config = {
  trusted_host_keys : string prop list option; [@option]
      (** trusted_host_keys *)
  user_secret_id : string prop option; [@option]
      (** user_secret_id *)
}
[@@deriving yojson_of]
(** sftp_config *)

type aws_transfer_connector = {
  access_role : string prop;  (** access_role *)
  id : string prop option; [@option]  (** id *)
  logging_role : string prop option; [@option]  (** logging_role *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  url : string prop;  (** url *)
  as2_config : as2_config list;
  sftp_config : sftp_config list;
}
[@@deriving yojson_of]
(** aws_transfer_connector *)

let as2_config ?mdn_signing_algorithm ?message_subject ~compression
    ~encryption_algorithm ~local_profile_id ~mdn_response
    ~partner_profile_id ~signing_algorithm () : as2_config =
  {
    compression;
    encryption_algorithm;
    local_profile_id;
    mdn_response;
    mdn_signing_algorithm;
    message_subject;
    partner_profile_id;
    signing_algorithm;
  }

let sftp_config ?trusted_host_keys ?user_secret_id () : sftp_config =
  { trusted_host_keys; user_secret_id }

let aws_transfer_connector ?id ?logging_role ?tags ?tags_all
    ~access_role ~url ~as2_config ~sftp_config () :
    aws_transfer_connector =
  {
    access_role;
    id;
    logging_role;
    tags;
    tags_all;
    url;
    as2_config;
    sftp_config;
  }

type t = {
  access_role : string prop;
  arn : string prop;
  connector_id : string prop;
  id : string prop;
  logging_role : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  url : string prop;
}

let make ?id ?logging_role ?tags ?tags_all ~access_role ~url
    ~as2_config ~sftp_config __id =
  let __type = "aws_transfer_connector" in
  let __attrs =
    ({
       access_role = Prop.computed __type __id "access_role";
       arn = Prop.computed __type __id "arn";
       connector_id = Prop.computed __type __id "connector_id";
       id = Prop.computed __type __id "id";
       logging_role = Prop.computed __type __id "logging_role";
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
      yojson_of_aws_transfer_connector
        (aws_transfer_connector ?id ?logging_role ?tags ?tags_all
           ~access_role ~url ~as2_config ~sftp_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?logging_role ?tags ?tags_all
    ~access_role ~url ~as2_config ~sftp_config __id =
  let (r : _ Tf_core.resource) =
    make ?id ?logging_role ?tags ?tags_all ~access_role ~url
      ~as2_config ~sftp_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

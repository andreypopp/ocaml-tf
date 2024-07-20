(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type as2_config = {
  compression : string prop;
  encryption_algorithm : string prop;
  local_profile_id : string prop;
  mdn_response : string prop;
  mdn_signing_algorithm : string prop option; [@option]
  message_subject : string prop option; [@option]
  partner_profile_id : string prop;
  signing_algorithm : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : as2_config) -> ()

let yojson_of_as2_config =
  (function
   | {
       compression = v_compression;
       encryption_algorithm = v_encryption_algorithm;
       local_profile_id = v_local_profile_id;
       mdn_response = v_mdn_response;
       mdn_signing_algorithm = v_mdn_signing_algorithm;
       message_subject = v_message_subject;
       partner_profile_id = v_partner_profile_id;
       signing_algorithm = v_signing_algorithm;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_signing_algorithm
         in
         ("signing_algorithm", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_partner_profile_id
         in
         ("partner_profile_id", arg) :: bnds
       in
       let bnds =
         match v_message_subject with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "message_subject", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mdn_signing_algorithm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mdn_signing_algorithm", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mdn_response in
         ("mdn_response", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_local_profile_id
         in
         ("local_profile_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_encryption_algorithm
         in
         ("encryption_algorithm", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_compression in
         ("compression", arg) :: bnds
       in
       `Assoc bnds
    : as2_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_as2_config

[@@@deriving.end]

type sftp_config = {
  trusted_host_keys : string prop list option; [@option]
  user_secret_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sftp_config) -> ()

let yojson_of_sftp_config =
  (function
   | {
       trusted_host_keys = v_trusted_host_keys;
       user_secret_id = v_user_secret_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_secret_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_secret_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_trusted_host_keys with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "trusted_host_keys", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : sftp_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sftp_config

[@@@deriving.end]

type aws_transfer_connector = {
  access_role : string prop;
  id : string prop option; [@option]
  logging_role : string prop option; [@option]
  security_policy_name : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  url : string prop;
  as2_config : as2_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sftp_config : sftp_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_transfer_connector) -> ()

let yojson_of_aws_transfer_connector =
  (function
   | {
       access_role = v_access_role;
       id = v_id;
       logging_role = v_logging_role;
       security_policy_name = v_security_policy_name;
       tags = v_tags;
       tags_all = v_tags_all;
       url = v_url;
       as2_config = v_as2_config;
       sftp_config = v_sftp_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_sftp_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_sftp_config) v_sftp_config
           in
           let bnd = "sftp_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_as2_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_as2_config) v_as2_config
           in
           let bnd = "as2_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_policy_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "security_policy_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_logging_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logging_role", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_access_role in
         ("access_role", arg) :: bnds
       in
       `Assoc bnds
    : aws_transfer_connector -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_transfer_connector

[@@@deriving.end]

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

let aws_transfer_connector ?id ?logging_role ?security_policy_name
    ?tags ?tags_all ?(as2_config = []) ?(sftp_config = [])
    ~access_role ~url () : aws_transfer_connector =
  {
    access_role;
    id;
    logging_role;
    security_policy_name;
    tags;
    tags_all;
    url;
    as2_config;
    sftp_config;
  }

type t = {
  tf_name : string;
  access_role : string prop;
  arn : string prop;
  connector_id : string prop;
  id : string prop;
  logging_role : string prop;
  security_policy_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  url : string prop;
}

let make ?id ?logging_role ?security_policy_name ?tags ?tags_all
    ?(as2_config = []) ?(sftp_config = []) ~access_role ~url __id =
  let __type = "aws_transfer_connector" in
  let __attrs =
    ({
       tf_name = __id;
       access_role = Prop.computed __type __id "access_role";
       arn = Prop.computed __type __id "arn";
       connector_id = Prop.computed __type __id "connector_id";
       id = Prop.computed __type __id "id";
       logging_role = Prop.computed __type __id "logging_role";
       security_policy_name =
         Prop.computed __type __id "security_policy_name";
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
        (aws_transfer_connector ?id ?logging_role
           ?security_policy_name ?tags ?tags_all ~as2_config
           ~sftp_config ~access_role ~url ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?logging_role ?security_policy_name ?tags
    ?tags_all ?(as2_config = []) ?(sftp_config = []) ~access_role
    ~url __id =
  let (r : _ Tf_core.resource) =
    make ?id ?logging_role ?security_policy_name ?tags ?tags_all
      ~as2_config ~sftp_config ~access_role ~url __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

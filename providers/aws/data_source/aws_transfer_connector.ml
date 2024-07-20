(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type as2_config = {
  basic_auth_secret_id : string prop;
  compression : string prop;
  encryption_algorithm : string prop;
  local_profile_id : string prop;
  mdn_response : string prop;
  mdn_signing_algorithm : string prop;
  message_subject : string prop;
  partner_profile_id : string prop;
  singing_algorithm : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : as2_config) -> ()

let yojson_of_as2_config =
  (function
   | {
       basic_auth_secret_id = v_basic_auth_secret_id;
       compression = v_compression;
       encryption_algorithm = v_encryption_algorithm;
       local_profile_id = v_local_profile_id;
       mdn_response = v_mdn_response;
       mdn_signing_algorithm = v_mdn_signing_algorithm;
       message_subject = v_message_subject;
       partner_profile_id = v_partner_profile_id;
       singing_algorithm = v_singing_algorithm;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_singing_algorithm
         in
         ("singing_algorithm", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_partner_profile_id
         in
         ("partner_profile_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_message_subject
         in
         ("message_subject", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_mdn_signing_algorithm
         in
         ("mdn_signing_algorithm", arg) :: bnds
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_basic_auth_secret_id
         in
         ("basic_auth_secret_id", arg) :: bnds
       in
       `Assoc bnds
    : as2_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_as2_config

[@@@deriving.end]

type sftp_config = {
  trusted_host_keys : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  user_secret_id : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_user_secret_id
         in
         ("user_secret_id", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_trusted_host_keys then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_trusted_host_keys
           in
           let bnd = "trusted_host_keys", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : sftp_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sftp_config

[@@@deriving.end]

type aws_transfer_connector = { id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_transfer_connector) -> ()

let yojson_of_aws_transfer_connector =
  (function
   | { id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : aws_transfer_connector -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_transfer_connector

[@@@deriving.end]

let aws_transfer_connector ~id () : aws_transfer_connector = { id }

type t = {
  tf_name : string;
  access_role : string prop;
  arn : string prop;
  as2_config : as2_config list prop;
  id : string prop;
  logging_role : string prop;
  security_policy_name : string prop;
  service_managed_egress_ip_addresses : string list prop;
  sftp_config : sftp_config list prop;
  tags : (string * string) list prop;
  url : string prop;
}

let make ~id __id =
  let __type = "aws_transfer_connector" in
  let __attrs =
    ({
       tf_name = __id;
       access_role = Prop.computed __type __id "access_role";
       arn = Prop.computed __type __id "arn";
       as2_config = Prop.computed __type __id "as2_config";
       id = Prop.computed __type __id "id";
       logging_role = Prop.computed __type __id "logging_role";
       security_policy_name =
         Prop.computed __type __id "security_policy_name";
       service_managed_egress_ip_addresses =
         Prop.computed __type __id
           "service_managed_egress_ip_addresses";
       sftp_config = Prop.computed __type __id "sftp_config";
       tags = Prop.computed __type __id "tags";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_transfer_connector
        (aws_transfer_connector ~id ());
    attrs = __attrs;
  }

let register ?tf_module ~id __id =
  let (r : _ Tf_core.resource) = make ~id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_aws_auth_backend_client = {
  access_key : string prop option; [@option]
  backend : string prop option; [@option]
  disable_automated_rotation : bool prop option; [@option]
  ec2_endpoint : string prop option; [@option]
  iam_endpoint : string prop option; [@option]
  iam_server_id_header_value : string prop option; [@option]
  id : string prop option; [@option]
  identity_token_audience : string prop option; [@option]
  identity_token_ttl : float prop option; [@option]
  max_retries : float prop option; [@option]
  namespace : string prop option; [@option]
  role_arn : string prop option; [@option]
  rotation_period : float prop option; [@option]
  rotation_schedule : string prop option; [@option]
  rotation_window : float prop option; [@option]
  secret_key : string prop option; [@option]
  sts_endpoint : string prop option; [@option]
  sts_region : string prop option; [@option]
  use_sts_region_from_client : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_aws_auth_backend_client) -> ()

let yojson_of_vault_aws_auth_backend_client =
  (function
   | {
       access_key = v_access_key;
       backend = v_backend;
       disable_automated_rotation = v_disable_automated_rotation;
       ec2_endpoint = v_ec2_endpoint;
       iam_endpoint = v_iam_endpoint;
       iam_server_id_header_value = v_iam_server_id_header_value;
       id = v_id;
       identity_token_audience = v_identity_token_audience;
       identity_token_ttl = v_identity_token_ttl;
       max_retries = v_max_retries;
       namespace = v_namespace;
       role_arn = v_role_arn;
       rotation_period = v_rotation_period;
       rotation_schedule = v_rotation_schedule;
       rotation_window = v_rotation_window;
       secret_key = v_secret_key;
       sts_endpoint = v_sts_endpoint;
       sts_region = v_sts_region;
       use_sts_region_from_client = v_use_sts_region_from_client;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_use_sts_region_from_client with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "use_sts_region_from_client", arg in
         bnd :: bnds
     in
     let bnds =
       match v_sts_region with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "sts_region", arg in
         bnd :: bnds
     in
     let bnds =
       match v_sts_endpoint with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "sts_endpoint", arg in
         bnd :: bnds
     in
     let bnds =
       match v_secret_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "secret_key", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_window with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_window", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_schedule with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "rotation_schedule", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_period with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_period", arg in
         bnd :: bnds
     in
     let bnds =
       match v_role_arn with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "role_arn", arg in
         bnd :: bnds
     in
     let bnds =
       match v_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "namespace", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_retries with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_retries", arg in
         bnd :: bnds
     in
     let bnds =
       match v_identity_token_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "identity_token_ttl", arg in
         bnd :: bnds
     in
     let bnds =
       match v_identity_token_audience with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "identity_token_audience", arg in
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
       match v_iam_server_id_header_value with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "iam_server_id_header_value", arg in
         bnd :: bnds
     in
     let bnds =
       match v_iam_endpoint with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "iam_endpoint", arg in
         bnd :: bnds
     in
     let bnds =
       match v_ec2_endpoint with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "ec2_endpoint", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_automated_rotation with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_automated_rotation", arg in
         bnd :: bnds
     in
     let bnds =
       match v_backend with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "backend", arg in
         bnd :: bnds
     in
     let bnds =
       match v_access_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "access_key", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_aws_auth_backend_client -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_aws_auth_backend_client

[@@@deriving.end]

let vault_aws_auth_backend_client ?access_key ?backend ?disable_automated_rotation ?ec2_endpoint ?iam_endpoint
  ?iam_server_id_header_value ?id ?identity_token_audience ?identity_token_ttl ?max_retries ?namespace ?role_arn
  ?rotation_period ?rotation_schedule ?rotation_window ?secret_key ?sts_endpoint ?sts_region ?use_sts_region_from_client
  () =
  ({
     access_key;
     backend;
     disable_automated_rotation;
     ec2_endpoint;
     iam_endpoint;
     iam_server_id_header_value;
     id;
     identity_token_audience;
     identity_token_ttl;
     max_retries;
     namespace;
     role_arn;
     rotation_period;
     rotation_schedule;
     rotation_window;
     secret_key;
     sts_endpoint;
     sts_region;
     use_sts_region_from_client;
   }
    : vault_aws_auth_backend_client)

type t = {
  tf_name : string;
  access_key : string prop;
  backend : string prop;
  disable_automated_rotation : bool prop;
  ec2_endpoint : string prop;
  iam_endpoint : string prop;
  iam_server_id_header_value : string prop;
  id : string prop;
  identity_token_audience : string prop;
  identity_token_ttl : float prop;
  max_retries : float prop;
  namespace : string prop;
  role_arn : string prop;
  rotation_period : float prop;
  rotation_schedule : string prop;
  rotation_window : float prop;
  secret_key : string prop;
  sts_endpoint : string prop;
  sts_region : string prop;
  use_sts_region_from_client : bool prop;
}

let make ?access_key ?backend ?disable_automated_rotation ?ec2_endpoint ?iam_endpoint ?iam_server_id_header_value ?id
  ?identity_token_audience ?identity_token_ttl ?max_retries ?namespace ?role_arn ?rotation_period ?rotation_schedule
  ?rotation_window ?secret_key ?sts_endpoint ?sts_region ?use_sts_region_from_client __id =
  let __type = "vault_aws_auth_backend_client" in
  let __attrs =
    ({
       tf_name = __id;
       access_key = Prop.computed __type __id "access_key";
       backend = Prop.computed __type __id "backend";
       disable_automated_rotation = Prop.computed __type __id "disable_automated_rotation";
       ec2_endpoint = Prop.computed __type __id "ec2_endpoint";
       iam_endpoint = Prop.computed __type __id "iam_endpoint";
       iam_server_id_header_value = Prop.computed __type __id "iam_server_id_header_value";
       id = Prop.computed __type __id "id";
       identity_token_audience = Prop.computed __type __id "identity_token_audience";
       identity_token_ttl = Prop.computed __type __id "identity_token_ttl";
       max_retries = Prop.computed __type __id "max_retries";
       namespace = Prop.computed __type __id "namespace";
       role_arn = Prop.computed __type __id "role_arn";
       rotation_period = Prop.computed __type __id "rotation_period";
       rotation_schedule = Prop.computed __type __id "rotation_schedule";
       rotation_window = Prop.computed __type __id "rotation_window";
       secret_key = Prop.computed __type __id "secret_key";
       sts_endpoint = Prop.computed __type __id "sts_endpoint";
       sts_region = Prop.computed __type __id "sts_region";
       use_sts_region_from_client = Prop.computed __type __id "use_sts_region_from_client";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_aws_auth_backend_client
        (vault_aws_auth_backend_client ?access_key ?backend ?disable_automated_rotation ?ec2_endpoint ?iam_endpoint
           ?iam_server_id_header_value ?id ?identity_token_audience ?identity_token_ttl ?max_retries ?namespace
           ?role_arn ?rotation_period ?rotation_schedule ?rotation_window ?secret_key ?sts_endpoint ?sts_region
           ?use_sts_region_from_client ());
    attrs = __attrs;
  }

let register ?tf_module ?access_key ?backend ?disable_automated_rotation ?ec2_endpoint ?iam_endpoint
  ?iam_server_id_header_value ?id ?identity_token_audience ?identity_token_ttl ?max_retries ?namespace ?role_arn
  ?rotation_period ?rotation_schedule ?rotation_window ?secret_key ?sts_endpoint ?sts_region ?use_sts_region_from_client
  __id =
  let (r : _ Tf_core.resource) =
    make ?access_key ?backend ?disable_automated_rotation ?ec2_endpoint ?iam_endpoint ?iam_server_id_header_value ?id
      ?identity_token_audience ?identity_token_ttl ?max_retries ?namespace ?role_arn ?rotation_period ?rotation_schedule
      ?rotation_window ?secret_key ?sts_endpoint ?sts_region ?use_sts_region_from_client __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

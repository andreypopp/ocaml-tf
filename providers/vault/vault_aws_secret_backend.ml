(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_aws_secret_backend = {
  access_key : string prop option; [@option]
  default_lease_ttl_seconds : float prop option; [@option]
  description : string prop option; [@option]
  disable_automated_rotation : bool prop option; [@option]
  disable_remount : bool prop option; [@option]
  iam_endpoint : string prop option; [@option]
  id : string prop option; [@option]
  identity_token_audience : string prop option; [@option]
  identity_token_key : string prop option; [@option]
  identity_token_ttl : float prop option; [@option]
  local : bool prop option; [@option]
  max_lease_ttl_seconds : float prop option; [@option]
  namespace : string prop option; [@option]
  path : string prop option; [@option]
  region : string prop option; [@option]
  role_arn : string prop option; [@option]
  rotation_period : float prop option; [@option]
  rotation_schedule : string prop option; [@option]
  rotation_window : float prop option; [@option]
  secret_key : string prop option; [@option]
  sts_endpoint : string prop option; [@option]
  sts_fallback_endpoints : string prop list option; [@option]
  sts_fallback_regions : string prop list option; [@option]
  sts_region : string prop option; [@option]
  username_template : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_aws_secret_backend) -> ()

let yojson_of_vault_aws_secret_backend =
  (function
   | {
       access_key = v_access_key;
       default_lease_ttl_seconds = v_default_lease_ttl_seconds;
       description = v_description;
       disable_automated_rotation = v_disable_automated_rotation;
       disable_remount = v_disable_remount;
       iam_endpoint = v_iam_endpoint;
       id = v_id;
       identity_token_audience = v_identity_token_audience;
       identity_token_key = v_identity_token_key;
       identity_token_ttl = v_identity_token_ttl;
       local = v_local;
       max_lease_ttl_seconds = v_max_lease_ttl_seconds;
       namespace = v_namespace;
       path = v_path;
       region = v_region;
       role_arn = v_role_arn;
       rotation_period = v_rotation_period;
       rotation_schedule = v_rotation_schedule;
       rotation_window = v_rotation_window;
       secret_key = v_secret_key;
       sts_endpoint = v_sts_endpoint;
       sts_fallback_endpoints = v_sts_fallback_endpoints;
       sts_fallback_regions = v_sts_fallback_regions;
       sts_region = v_sts_region;
       username_template = v_username_template;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_username_template with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "username_template", arg in
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
       match v_sts_fallback_regions with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "sts_fallback_regions", arg in
         bnd :: bnds
     in
     let bnds =
       match v_sts_fallback_endpoints with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "sts_fallback_endpoints", arg in
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
       match v_region with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "region", arg in
         bnd :: bnds
     in
     let bnds =
       match v_path with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "path", arg in
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
       match v_max_lease_ttl_seconds with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_lease_ttl_seconds", arg in
         bnd :: bnds
     in
     let bnds =
       match v_local with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "local", arg in
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
       match v_identity_token_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "identity_token_key", arg in
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
       match v_iam_endpoint with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "iam_endpoint", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_remount with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_remount", arg in
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
       match v_description with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "description", arg in
         bnd :: bnds
     in
     let bnds =
       match v_default_lease_ttl_seconds with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "default_lease_ttl_seconds", arg in
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
    : vault_aws_secret_backend -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_aws_secret_backend

[@@@deriving.end]

let vault_aws_secret_backend ?access_key ?default_lease_ttl_seconds ?description ?disable_automated_rotation
  ?disable_remount ?iam_endpoint ?id ?identity_token_audience ?identity_token_key ?identity_token_ttl ?local
  ?max_lease_ttl_seconds ?namespace ?path ?region ?role_arn ?rotation_period ?rotation_schedule ?rotation_window
  ?secret_key ?sts_endpoint ?sts_fallback_endpoints ?sts_fallback_regions ?sts_region ?username_template () =
  ({
     access_key;
     default_lease_ttl_seconds;
     description;
     disable_automated_rotation;
     disable_remount;
     iam_endpoint;
     id;
     identity_token_audience;
     identity_token_key;
     identity_token_ttl;
     local;
     max_lease_ttl_seconds;
     namespace;
     path;
     region;
     role_arn;
     rotation_period;
     rotation_schedule;
     rotation_window;
     secret_key;
     sts_endpoint;
     sts_fallback_endpoints;
     sts_fallback_regions;
     sts_region;
     username_template;
   }
    : vault_aws_secret_backend)

type t = {
  tf_name : string;
  access_key : string prop;
  default_lease_ttl_seconds : float prop;
  description : string prop;
  disable_automated_rotation : bool prop;
  disable_remount : bool prop;
  iam_endpoint : string prop;
  id : string prop;
  identity_token_audience : string prop;
  identity_token_key : string prop;
  identity_token_ttl : float prop;
  local : bool prop;
  max_lease_ttl_seconds : float prop;
  namespace : string prop;
  path : string prop;
  region : string prop;
  role_arn : string prop;
  rotation_period : float prop;
  rotation_schedule : string prop;
  rotation_window : float prop;
  secret_key : string prop;
  sts_endpoint : string prop;
  sts_fallback_endpoints : string list prop;
  sts_fallback_regions : string list prop;
  sts_region : string prop;
  username_template : string prop;
}

let make ?access_key ?default_lease_ttl_seconds ?description ?disable_automated_rotation ?disable_remount ?iam_endpoint
  ?id ?identity_token_audience ?identity_token_key ?identity_token_ttl ?local ?max_lease_ttl_seconds ?namespace ?path
  ?region ?role_arn ?rotation_period ?rotation_schedule ?rotation_window ?secret_key ?sts_endpoint
  ?sts_fallback_endpoints ?sts_fallback_regions ?sts_region ?username_template __id =
  let __type = "vault_aws_secret_backend" in
  let __attrs =
    ({
       tf_name = __id;
       access_key = Prop.computed __type __id "access_key";
       default_lease_ttl_seconds = Prop.computed __type __id "default_lease_ttl_seconds";
       description = Prop.computed __type __id "description";
       disable_automated_rotation = Prop.computed __type __id "disable_automated_rotation";
       disable_remount = Prop.computed __type __id "disable_remount";
       iam_endpoint = Prop.computed __type __id "iam_endpoint";
       id = Prop.computed __type __id "id";
       identity_token_audience = Prop.computed __type __id "identity_token_audience";
       identity_token_key = Prop.computed __type __id "identity_token_key";
       identity_token_ttl = Prop.computed __type __id "identity_token_ttl";
       local = Prop.computed __type __id "local";
       max_lease_ttl_seconds = Prop.computed __type __id "max_lease_ttl_seconds";
       namespace = Prop.computed __type __id "namespace";
       path = Prop.computed __type __id "path";
       region = Prop.computed __type __id "region";
       role_arn = Prop.computed __type __id "role_arn";
       rotation_period = Prop.computed __type __id "rotation_period";
       rotation_schedule = Prop.computed __type __id "rotation_schedule";
       rotation_window = Prop.computed __type __id "rotation_window";
       secret_key = Prop.computed __type __id "secret_key";
       sts_endpoint = Prop.computed __type __id "sts_endpoint";
       sts_fallback_endpoints = Prop.computed __type __id "sts_fallback_endpoints";
       sts_fallback_regions = Prop.computed __type __id "sts_fallback_regions";
       sts_region = Prop.computed __type __id "sts_region";
       username_template = Prop.computed __type __id "username_template";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_aws_secret_backend
        (vault_aws_secret_backend ?access_key ?default_lease_ttl_seconds ?description ?disable_automated_rotation
           ?disable_remount ?iam_endpoint ?id ?identity_token_audience ?identity_token_key ?identity_token_ttl ?local
           ?max_lease_ttl_seconds ?namespace ?path ?region ?role_arn ?rotation_period ?rotation_schedule
           ?rotation_window ?secret_key ?sts_endpoint ?sts_fallback_endpoints ?sts_fallback_regions ?sts_region
           ?username_template ());
    attrs = __attrs;
  }

let register ?tf_module ?access_key ?default_lease_ttl_seconds ?description ?disable_automated_rotation ?disable_remount
  ?iam_endpoint ?id ?identity_token_audience ?identity_token_key ?identity_token_ttl ?local ?max_lease_ttl_seconds
  ?namespace ?path ?region ?role_arn ?rotation_period ?rotation_schedule ?rotation_window ?secret_key ?sts_endpoint
  ?sts_fallback_endpoints ?sts_fallback_regions ?sts_region ?username_template __id =
  let (r : _ Tf_core.resource) =
    make ?access_key ?default_lease_ttl_seconds ?description ?disable_automated_rotation ?disable_remount ?iam_endpoint
      ?id ?identity_token_audience ?identity_token_key ?identity_token_ttl ?local ?max_lease_ttl_seconds ?namespace
      ?path ?region ?role_arn ?rotation_period ?rotation_schedule ?rotation_window ?secret_key ?sts_endpoint
      ?sts_fallback_endpoints ?sts_fallback_regions ?sts_region ?username_template __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

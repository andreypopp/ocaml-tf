(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type device_options = { tenant_id : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : device_options) -> ()

let yojson_of_device_options =
  (function
   | { tenant_id = v_tenant_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tenant_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tenant_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : device_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_device_options

[@@@deriving.end]

type oidc_options = {
  authorization_endpoint : string prop option; [@option]
  client_id : string prop option; [@option]
  client_secret : string prop;
  issuer : string prop option; [@option]
  scope : string prop option; [@option]
  token_endpoint : string prop option; [@option]
  user_info_endpoint : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : oidc_options) -> ()

let yojson_of_oidc_options =
  (function
   | {
       authorization_endpoint = v_authorization_endpoint;
       client_id = v_client_id;
       client_secret = v_client_secret;
       issuer = v_issuer;
       scope = v_scope;
       token_endpoint = v_token_endpoint;
       user_info_endpoint = v_user_info_endpoint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_info_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_info_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_token_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "token_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scope", arg in
             bnd :: bnds
       in
       let bnds =
         match v_issuer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "issuer", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_secret in
         ("client_secret", arg) :: bnds
       in
       let bnds =
         match v_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authorization_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authorization_endpoint", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : oidc_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_oidc_options

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_verifiedaccess_trust_provider = {
  description : string prop option; [@option]
  device_trust_provider_type : string prop option; [@option]
  id : string prop option; [@option]
  policy_reference_name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  trust_provider_type : string prop;
  user_trust_provider_type : string prop option; [@option]
  device_options : device_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  oidc_options : oidc_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_verifiedaccess_trust_provider) -> ()

let yojson_of_aws_verifiedaccess_trust_provider =
  (function
   | {
       description = v_description;
       device_trust_provider_type = v_device_trust_provider_type;
       id = v_id;
       policy_reference_name = v_policy_reference_name;
       tags = v_tags;
       tags_all = v_tags_all;
       trust_provider_type = v_trust_provider_type;
       user_trust_provider_type = v_user_trust_provider_type;
       device_options = v_device_options;
       oidc_options = v_oidc_options;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_oidc_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_oidc_options) v_oidc_options
           in
           let bnd = "oidc_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_device_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_device_options)
               v_device_options
           in
           let bnd = "device_options", arg in
           bnd :: bnds
       in
       let bnds =
         match v_user_trust_provider_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_trust_provider_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_trust_provider_type
         in
         ("trust_provider_type", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_policy_reference_name
         in
         ("policy_reference_name", arg) :: bnds
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
         match v_device_trust_provider_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "device_trust_provider_type", arg in
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
       `Assoc bnds
    : aws_verifiedaccess_trust_provider ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_verifiedaccess_trust_provider

[@@@deriving.end]

let device_options ?tenant_id () : device_options = { tenant_id }

let oidc_options ?authorization_endpoint ?client_id ?issuer ?scope
    ?token_endpoint ?user_info_endpoint ~client_secret () :
    oidc_options =
  {
    authorization_endpoint;
    client_id;
    client_secret;
    issuer;
    scope;
    token_endpoint;
    user_info_endpoint;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_verifiedaccess_trust_provider ?description
    ?device_trust_provider_type ?id ?tags ?tags_all
    ?user_trust_provider_type ?(device_options = [])
    ?(oidc_options = []) ?timeouts ~policy_reference_name
    ~trust_provider_type () : aws_verifiedaccess_trust_provider =
  {
    description;
    device_trust_provider_type;
    id;
    policy_reference_name;
    tags;
    tags_all;
    trust_provider_type;
    user_trust_provider_type;
    device_options;
    oidc_options;
    timeouts;
  }

type t = {
  tf_name : string;
  description : string prop;
  device_trust_provider_type : string prop;
  id : string prop;
  policy_reference_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  trust_provider_type : string prop;
  user_trust_provider_type : string prop;
}

let make ?description ?device_trust_provider_type ?id ?tags ?tags_all
    ?user_trust_provider_type ?(device_options = [])
    ?(oidc_options = []) ?timeouts ~policy_reference_name
    ~trust_provider_type __id =
  let __type = "aws_verifiedaccess_trust_provider" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       device_trust_provider_type =
         Prop.computed __type __id "device_trust_provider_type";
       id = Prop.computed __type __id "id";
       policy_reference_name =
         Prop.computed __type __id "policy_reference_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       trust_provider_type =
         Prop.computed __type __id "trust_provider_type";
       user_trust_provider_type =
         Prop.computed __type __id "user_trust_provider_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_verifiedaccess_trust_provider
        (aws_verifiedaccess_trust_provider ?description
           ?device_trust_provider_type ?id ?tags ?tags_all
           ?user_trust_provider_type ~device_options ~oidc_options
           ?timeouts ~policy_reference_name ~trust_provider_type ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?device_trust_provider_type ?id
    ?tags ?tags_all ?user_trust_provider_type ?(device_options = [])
    ?(oidc_options = []) ?timeouts ~policy_reference_name
    ~trust_provider_type __id =
  let (r : _ Tf_core.resource) =
    make ?description ?device_trust_provider_type ?id ?tags ?tags_all
      ?user_trust_provider_type ~device_options ~oidc_options
      ?timeouts ~policy_reference_name ~trust_provider_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

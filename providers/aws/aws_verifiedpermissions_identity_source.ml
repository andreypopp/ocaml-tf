(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration__cognito_user_pool_configuration__group_configuration = {
  group_entity_type : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       configuration__cognito_user_pool_configuration__group_configuration) ->
  ()

let yojson_of_configuration__cognito_user_pool_configuration__group_configuration
    =
  (function
   | { group_entity_type = v_group_entity_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_group_entity_type
         in
         ("group_entity_type", arg) :: bnds
       in
       `Assoc bnds
    : configuration__cognito_user_pool_configuration__group_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_configuration__cognito_user_pool_configuration__group_configuration

[@@@deriving.end]

type configuration__cognito_user_pool_configuration = {
  client_ids : string prop list option; [@option]
  user_pool_arn : string prop;
  group_configuration :
    configuration__cognito_user_pool_configuration__group_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : configuration__cognito_user_pool_configuration) -> ()

let yojson_of_configuration__cognito_user_pool_configuration =
  (function
   | {
       client_ids = v_client_ids;
       user_pool_arn = v_user_pool_arn;
       group_configuration = v_group_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_group_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configuration__cognito_user_pool_configuration__group_configuration)
               v_group_configuration
           in
           let bnd = "group_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_pool_arn in
         ("user_pool_arn", arg) :: bnds
       in
       let bnds =
         match v_client_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "client_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configuration__cognito_user_pool_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__cognito_user_pool_configuration

[@@@deriving.end]

type configuration__open_id_connect_configuration__group_configuration = {
  group_claim : string prop;
  group_entity_type : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       configuration__open_id_connect_configuration__group_configuration) ->
  ()

let yojson_of_configuration__open_id_connect_configuration__group_configuration
    =
  (function
   | {
       group_claim = v_group_claim;
       group_entity_type = v_group_entity_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_group_entity_type
         in
         ("group_entity_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_group_claim in
         ("group_claim", arg) :: bnds
       in
       `Assoc bnds
    : configuration__open_id_connect_configuration__group_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_configuration__open_id_connect_configuration__group_configuration

[@@@deriving.end]

type configuration__open_id_connect_configuration__token_selection__access_token_only = {
  audiences : string prop list option; [@option]
  principal_id_claim : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       configuration__open_id_connect_configuration__token_selection__access_token_only) ->
  ()

let yojson_of_configuration__open_id_connect_configuration__token_selection__access_token_only
    =
  (function
   | {
       audiences = v_audiences;
       principal_id_claim = v_principal_id_claim;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_principal_id_claim with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "principal_id_claim", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audiences with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "audiences", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configuration__open_id_connect_configuration__token_selection__access_token_only ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_configuration__open_id_connect_configuration__token_selection__access_token_only

[@@@deriving.end]

type configuration__open_id_connect_configuration__token_selection__identity_token_only = {
  client_ids : string prop list option; [@option]
  principal_id_claim : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       configuration__open_id_connect_configuration__token_selection__identity_token_only) ->
  ()

let yojson_of_configuration__open_id_connect_configuration__token_selection__identity_token_only
    =
  (function
   | {
       client_ids = v_client_ids;
       principal_id_claim = v_principal_id_claim;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_principal_id_claim with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "principal_id_claim", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "client_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configuration__open_id_connect_configuration__token_selection__identity_token_only ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_configuration__open_id_connect_configuration__token_selection__identity_token_only

[@@@deriving.end]

type configuration__open_id_connect_configuration__token_selection = {
  access_token_only :
    configuration__open_id_connect_configuration__token_selection__access_token_only
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  identity_token_only :
    configuration__open_id_connect_configuration__token_selection__identity_token_only
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       configuration__open_id_connect_configuration__token_selection) ->
  ()

let yojson_of_configuration__open_id_connect_configuration__token_selection
    =
  (function
   | {
       access_token_only = v_access_token_only;
       identity_token_only = v_identity_token_only;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_identity_token_only then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configuration__open_id_connect_configuration__token_selection__identity_token_only)
               v_identity_token_only
           in
           let bnd = "identity_token_only", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_access_token_only then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configuration__open_id_connect_configuration__token_selection__access_token_only)
               v_access_token_only
           in
           let bnd = "access_token_only", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : configuration__open_id_connect_configuration__token_selection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_configuration__open_id_connect_configuration__token_selection

[@@@deriving.end]

type configuration__open_id_connect_configuration = {
  entity_id_prefix : string prop option; [@option]
  issuer : string prop;
  group_configuration :
    configuration__open_id_connect_configuration__group_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  token_selection :
    configuration__open_id_connect_configuration__token_selection
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration__open_id_connect_configuration) -> ()

let yojson_of_configuration__open_id_connect_configuration =
  (function
   | {
       entity_id_prefix = v_entity_id_prefix;
       issuer = v_issuer;
       group_configuration = v_group_configuration;
       token_selection = v_token_selection;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_token_selection then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configuration__open_id_connect_configuration__token_selection)
               v_token_selection
           in
           let bnd = "token_selection", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_group_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configuration__open_id_connect_configuration__group_configuration)
               v_group_configuration
           in
           let bnd = "group_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_issuer in
         ("issuer", arg) :: bnds
       in
       let bnds =
         match v_entity_id_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "entity_id_prefix", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configuration__open_id_connect_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__open_id_connect_configuration

[@@@deriving.end]

type configuration = {
  cognito_user_pool_configuration :
    configuration__cognito_user_pool_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  open_id_connect_configuration :
    configuration__open_id_connect_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration) -> ()

let yojson_of_configuration =
  (function
   | {
       cognito_user_pool_configuration =
         v_cognito_user_pool_configuration;
       open_id_connect_configuration =
         v_open_id_connect_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_open_id_connect_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configuration__open_id_connect_configuration)
               v_open_id_connect_configuration
           in
           let bnd = "open_id_connect_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cognito_user_pool_configuration then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configuration__cognito_user_pool_configuration)
               v_cognito_user_pool_configuration
           in
           let bnd = "cognito_user_pool_configuration", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration

[@@@deriving.end]

type aws_verifiedpermissions_identity_source = {
  policy_store_id : string prop;
  principal_entity_type : string prop option; [@option]
  configuration : configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_verifiedpermissions_identity_source) -> ()

let yojson_of_aws_verifiedpermissions_identity_source =
  (function
   | {
       policy_store_id = v_policy_store_id;
       principal_entity_type = v_principal_entity_type;
       configuration = v_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_configuration) v_configuration
           in
           let bnd = "configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_principal_entity_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "principal_entity_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_policy_store_id
         in
         ("policy_store_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_verifiedpermissions_identity_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_verifiedpermissions_identity_source

[@@@deriving.end]

let configuration__cognito_user_pool_configuration__group_configuration
    ~group_entity_type () :
    configuration__cognito_user_pool_configuration__group_configuration
    =
  { group_entity_type }

let configuration__cognito_user_pool_configuration ?client_ids
    ?(group_configuration = []) ~user_pool_arn () :
    configuration__cognito_user_pool_configuration =
  { client_ids; user_pool_arn; group_configuration }

let configuration__open_id_connect_configuration__group_configuration
    ~group_claim ~group_entity_type () :
    configuration__open_id_connect_configuration__group_configuration
    =
  { group_claim; group_entity_type }

let configuration__open_id_connect_configuration__token_selection__access_token_only
    ?audiences ?principal_id_claim () :
    configuration__open_id_connect_configuration__token_selection__access_token_only
    =
  { audiences; principal_id_claim }

let configuration__open_id_connect_configuration__token_selection__identity_token_only
    ?client_ids ?principal_id_claim () :
    configuration__open_id_connect_configuration__token_selection__identity_token_only
    =
  { client_ids; principal_id_claim }

let configuration__open_id_connect_configuration__token_selection
    ?(access_token_only = []) ?(identity_token_only = []) () :
    configuration__open_id_connect_configuration__token_selection =
  { access_token_only; identity_token_only }

let configuration__open_id_connect_configuration ?entity_id_prefix
    ?(group_configuration = []) ?(token_selection = []) ~issuer () :
    configuration__open_id_connect_configuration =
  { entity_id_prefix; issuer; group_configuration; token_selection }

let configuration ?(cognito_user_pool_configuration = [])
    ?(open_id_connect_configuration = []) () : configuration =
  { cognito_user_pool_configuration; open_id_connect_configuration }

let aws_verifiedpermissions_identity_source ?principal_entity_type
    ?(configuration = []) ~policy_store_id () :
    aws_verifiedpermissions_identity_source =
  { policy_store_id; principal_entity_type; configuration }

type t = {
  tf_name : string;
  id : string prop;
  policy_store_id : string prop;
  principal_entity_type : string prop;
}

let make ?principal_entity_type ?(configuration = [])
    ~policy_store_id __id =
  let __type = "aws_verifiedpermissions_identity_source" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       policy_store_id = Prop.computed __type __id "policy_store_id";
       principal_entity_type =
         Prop.computed __type __id "principal_entity_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_verifiedpermissions_identity_source
        (aws_verifiedpermissions_identity_source
           ?principal_entity_type ~configuration ~policy_store_id ());
    attrs = __attrs;
  }

let register ?tf_module ?principal_entity_type ?(configuration = [])
    ~policy_store_id __id =
  let (r : _ Tf_core.resource) =
    make ?principal_entity_type ~configuration ~policy_store_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

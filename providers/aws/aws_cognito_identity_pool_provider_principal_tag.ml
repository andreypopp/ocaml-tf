(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cognito_identity_pool_provider_principal_tag = {
  id : string prop option; [@option]
  identity_pool_id : string prop;
  identity_provider_name : string prop;
  principal_tags : string prop Tf_core.assoc option; [@option]
  use_defaults : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_cognito_identity_pool_provider_principal_tag) -> ()

let yojson_of_aws_cognito_identity_pool_provider_principal_tag =
  (function
   | {
       id = v_id;
       identity_pool_id = v_identity_pool_id;
       identity_provider_name = v_identity_provider_name;
       principal_tags = v_principal_tags;
       use_defaults = v_use_defaults;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_use_defaults with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_defaults", arg in
             bnd :: bnds
       in
       let bnds =
         match v_principal_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "principal_tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_identity_provider_name
         in
         ("identity_provider_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_identity_pool_id
         in
         ("identity_pool_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cognito_identity_pool_provider_principal_tag ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cognito_identity_pool_provider_principal_tag

[@@@deriving.end]

let aws_cognito_identity_pool_provider_principal_tag ?id
    ?principal_tags ?use_defaults ~identity_pool_id
    ~identity_provider_name () :
    aws_cognito_identity_pool_provider_principal_tag =
  {
    id;
    identity_pool_id;
    identity_provider_name;
    principal_tags;
    use_defaults;
  }

type t = {
  tf_name : string;
  id : string prop;
  identity_pool_id : string prop;
  identity_provider_name : string prop;
  principal_tags : string Tf_core.assoc prop;
  use_defaults : bool prop;
}

let make ?id ?principal_tags ?use_defaults ~identity_pool_id
    ~identity_provider_name __id =
  let __type = "aws_cognito_identity_pool_provider_principal_tag" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       identity_pool_id =
         Prop.computed __type __id "identity_pool_id";
       identity_provider_name =
         Prop.computed __type __id "identity_provider_name";
       principal_tags = Prop.computed __type __id "principal_tags";
       use_defaults = Prop.computed __type __id "use_defaults";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cognito_identity_pool_provider_principal_tag
        (aws_cognito_identity_pool_provider_principal_tag ?id
           ?principal_tags ?use_defaults ~identity_pool_id
           ~identity_provider_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?principal_tags ?use_defaults
    ~identity_pool_id ~identity_provider_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?principal_tags ?use_defaults ~identity_pool_id
      ~identity_provider_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

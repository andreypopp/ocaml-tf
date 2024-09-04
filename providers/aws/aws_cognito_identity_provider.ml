(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cognito_identity_provider = {
  attribute_mapping : string prop Tf_core.assoc option; [@option]
  id : string prop option; [@option]
  idp_identifiers : string prop list option; [@option]
  provider_details : string prop Tf_core.assoc;
  provider_name : string prop;
  provider_type : string prop;
  user_pool_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cognito_identity_provider) -> ()

let yojson_of_aws_cognito_identity_provider =
  (function
   | {
       attribute_mapping = v_attribute_mapping;
       id = v_id;
       idp_identifiers = v_idp_identifiers;
       provider_details = v_provider_details;
       provider_name = v_provider_name;
       provider_type = v_provider_type;
       user_pool_id = v_user_pool_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_pool_id in
         ("user_pool_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_provider_type in
         ("provider_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_provider_name in
         ("provider_name", arg) :: bnds
       in
       let bnds =
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_provider_details
         in
         ("provider_details", arg) :: bnds
       in
       let bnds =
         match v_idp_identifiers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "idp_identifiers", arg in
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
         match v_attribute_mapping with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "attribute_mapping", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cognito_identity_provider ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cognito_identity_provider

[@@@deriving.end]

let aws_cognito_identity_provider ?attribute_mapping ?id
    ?idp_identifiers ~provider_details ~provider_name ~provider_type
    ~user_pool_id () : aws_cognito_identity_provider =
  {
    attribute_mapping;
    id;
    idp_identifiers;
    provider_details;
    provider_name;
    provider_type;
    user_pool_id;
  }

type t = {
  tf_name : string;
  attribute_mapping : string Tf_core.assoc prop;
  id : string prop;
  idp_identifiers : string list prop;
  provider_details : string Tf_core.assoc prop;
  provider_name : string prop;
  provider_type : string prop;
  user_pool_id : string prop;
}

let make ?attribute_mapping ?id ?idp_identifiers ~provider_details
    ~provider_name ~provider_type ~user_pool_id __id =
  let __type = "aws_cognito_identity_provider" in
  let __attrs =
    ({
       tf_name = __id;
       attribute_mapping =
         Prop.computed __type __id "attribute_mapping";
       id = Prop.computed __type __id "id";
       idp_identifiers = Prop.computed __type __id "idp_identifiers";
       provider_details =
         Prop.computed __type __id "provider_details";
       provider_name = Prop.computed __type __id "provider_name";
       provider_type = Prop.computed __type __id "provider_type";
       user_pool_id = Prop.computed __type __id "user_pool_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cognito_identity_provider
        (aws_cognito_identity_provider ?attribute_mapping ?id
           ?idp_identifiers ~provider_details ~provider_name
           ~provider_type ~user_pool_id ());
    attrs = __attrs;
  }

let register ?tf_module ?attribute_mapping ?id ?idp_identifiers
    ~provider_details ~provider_name ~provider_type ~user_pool_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?attribute_mapping ?id ?idp_identifiers ~provider_details
      ~provider_name ~provider_type ~user_pool_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

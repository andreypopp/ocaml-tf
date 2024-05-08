(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type role_mapping__mapping_rule = {
  claim : string prop;
  match_type : string prop;
  role_arn : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : role_mapping__mapping_rule) -> ()

let yojson_of_role_mapping__mapping_rule =
  (function
   | {
       claim = v_claim;
       match_type = v_match_type;
       role_arn = v_role_arn;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_match_type in
         ("match_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_claim in
         ("claim", arg) :: bnds
       in
       `Assoc bnds
    : role_mapping__mapping_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_role_mapping__mapping_rule

[@@@deriving.end]

type role_mapping = {
  ambiguous_role_resolution : string prop option; [@option]
  identity_provider : string prop;
  type_ : string prop; [@key "type"]
  mapping_rule : role_mapping__mapping_rule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : role_mapping) -> ()

let yojson_of_role_mapping =
  (function
   | {
       ambiguous_role_resolution = v_ambiguous_role_resolution;
       identity_provider = v_identity_provider;
       type_ = v_type_;
       mapping_rule = v_mapping_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_mapping_rule then bnds
         else
           let arg =
             (yojson_of_list yojson_of_role_mapping__mapping_rule)
               v_mapping_rule
           in
           let bnd = "mapping_rule", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_identity_provider
         in
         ("identity_provider", arg) :: bnds
       in
       let bnds =
         match v_ambiguous_role_resolution with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ambiguous_role_resolution", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : role_mapping -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_role_mapping

[@@@deriving.end]

type aws_cognito_identity_pool_roles_attachment = {
  id : string prop option; [@option]
  identity_pool_id : string prop;
  roles : (string * string prop) list;
  role_mapping : role_mapping list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cognito_identity_pool_roles_attachment) -> ()

let yojson_of_aws_cognito_identity_pool_roles_attachment =
  (function
   | {
       id = v_id;
       identity_pool_id = v_identity_pool_id;
       roles = v_roles;
       role_mapping = v_role_mapping;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_role_mapping then bnds
         else
           let arg =
             (yojson_of_list yojson_of_role_mapping) v_role_mapping
           in
           let bnd = "role_mapping", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_roles
         in
         ("roles", arg) :: bnds
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
    : aws_cognito_identity_pool_roles_attachment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cognito_identity_pool_roles_attachment

[@@@deriving.end]

let role_mapping__mapping_rule ~claim ~match_type ~role_arn ~value ()
    : role_mapping__mapping_rule =
  { claim; match_type; role_arn; value }

let role_mapping ?ambiguous_role_resolution ?(mapping_rule = [])
    ~identity_provider ~type_ () : role_mapping =
  {
    ambiguous_role_resolution;
    identity_provider;
    type_;
    mapping_rule;
  }

let aws_cognito_identity_pool_roles_attachment ?id ~identity_pool_id
    ~roles ~role_mapping () :
    aws_cognito_identity_pool_roles_attachment =
  { id; identity_pool_id; roles; role_mapping }

type t = {
  tf_name : string;
  id : string prop;
  identity_pool_id : string prop;
  roles : (string * string) list prop;
}

let make ?id ~identity_pool_id ~roles ~role_mapping __id =
  let __type = "aws_cognito_identity_pool_roles_attachment" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       identity_pool_id =
         Prop.computed __type __id "identity_pool_id";
       roles = Prop.computed __type __id "roles";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cognito_identity_pool_roles_attachment
        (aws_cognito_identity_pool_roles_attachment ?id
           ~identity_pool_id ~roles ~role_mapping ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~identity_pool_id ~roles ~role_mapping
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ~identity_pool_id ~roles ~role_mapping __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type role_mapping__mapping_rule = {
  claim : string prop;  (** claim *)
  match_type : string prop;  (** match_type *)
  role_arn : string prop;  (** role_arn *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** role_mapping__mapping_rule *)

type role_mapping = {
  ambiguous_role_resolution : string prop option; [@option]
      (** ambiguous_role_resolution *)
  identity_provider : string prop;  (** identity_provider *)
  type_ : string prop; [@key "type"]  (** type *)
  mapping_rule : role_mapping__mapping_rule list;
}
[@@deriving yojson_of]
(** role_mapping *)

type aws_cognito_identity_pool_roles_attachment = {
  id : string prop option; [@option]  (** id *)
  identity_pool_id : string prop;  (** identity_pool_id *)
  roles : (string * string prop) list;  (** roles *)
  role_mapping : role_mapping list;
}
[@@deriving yojson_of]
(** aws_cognito_identity_pool_roles_attachment *)

let role_mapping__mapping_rule ~claim ~match_type ~role_arn ~value ()
    : role_mapping__mapping_rule =
  { claim; match_type; role_arn; value }

let role_mapping ?ambiguous_role_resolution ~identity_provider ~type_
    ~mapping_rule () : role_mapping =
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
  id : string prop;
  identity_pool_id : string prop;
  roles : (string * string) list prop;
}

let make ?id ~identity_pool_id ~roles ~role_mapping __id =
  let __type = "aws_cognito_identity_pool_roles_attachment" in
  let __attrs =
    ({
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

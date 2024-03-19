(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ~identity_pool_id ~roles ~role_mapping
    __resource_id =
  let __resource_type =
    "aws_cognito_identity_pool_roles_attachment"
  in
  let __resource =
    aws_cognito_identity_pool_roles_attachment ?id ~identity_pool_id
      ~roles ~role_mapping ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cognito_identity_pool_roles_attachment __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       identity_pool_id =
         Prop.computed __resource_type __resource_id
           "identity_pool_id";
       roles = Prop.computed __resource_type __resource_id "roles";
     }
      : t)
  in
  __resource_attributes

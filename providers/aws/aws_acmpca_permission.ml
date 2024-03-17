(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_acmpca_permission = {
  actions : string prop list;  (** actions *)
  certificate_authority_arn : string prop;
      (** certificate_authority_arn *)
  id : string prop option; [@option]  (** id *)
  principal : string prop;  (** principal *)
  source_account : string prop option; [@option]
      (** source_account *)
}
[@@deriving yojson_of]
(** aws_acmpca_permission *)

type t = {
  actions : string list prop;
  certificate_authority_arn : string prop;
  id : string prop;
  policy : string prop;
  principal : string prop;
  source_account : string prop;
}

let aws_acmpca_permission ?id ?source_account ~actions
    ~certificate_authority_arn ~principal __resource_id =
  let __resource_type = "aws_acmpca_permission" in
  let __resource =
    ({
       actions;
       certificate_authority_arn;
       id;
       principal;
       source_account;
     }
      : aws_acmpca_permission)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_acmpca_permission __resource);
  let __resource_attributes =
    ({
       actions =
         Prop.computed __resource_type __resource_id "actions";
       certificate_authority_arn =
         Prop.computed __resource_type __resource_id
           "certificate_authority_arn";
       id = Prop.computed __resource_type __resource_id "id";
       policy = Prop.computed __resource_type __resource_id "policy";
       principal =
         Prop.computed __resource_type __resource_id "principal";
       source_account =
         Prop.computed __resource_type __resource_id "source_account";
     }
      : t)
  in
  __resource_attributes

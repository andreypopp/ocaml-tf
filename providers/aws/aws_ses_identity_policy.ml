(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ses_identity_policy = {
  id : string prop option; [@option]  (** id *)
  identity : string prop;  (** identity *)
  name : string prop;  (** name *)
  policy : string prop;  (** policy *)
}
[@@deriving yojson_of]
(** aws_ses_identity_policy *)

type t = {
  id : string prop;
  identity : string prop;
  name : string prop;
  policy : string prop;
}

let aws_ses_identity_policy ?id ~identity ~name ~policy __resource_id
    =
  let __resource_type = "aws_ses_identity_policy" in
  let __resource =
    ({ id; identity; name; policy } : aws_ses_identity_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ses_identity_policy __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       identity =
         Prop.computed __resource_type __resource_id "identity";
       name = Prop.computed __resource_type __resource_id "name";
       policy = Prop.computed __resource_type __resource_id "policy";
     }
      : t)
  in
  __resource_attributes

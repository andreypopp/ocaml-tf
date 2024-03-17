(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_organizations_policy_attachment = {
  id : string prop option; [@option]  (** id *)
  policy_id : string prop;  (** policy_id *)
  skip_destroy : bool prop option; [@option]  (** skip_destroy *)
  target_id : string prop;  (** target_id *)
}
[@@deriving yojson_of]
(** aws_organizations_policy_attachment *)

type t = {
  id : string prop;
  policy_id : string prop;
  skip_destroy : bool prop;
  target_id : string prop;
}

let aws_organizations_policy_attachment ?id ?skip_destroy ~policy_id
    ~target_id __resource_id =
  let __resource_type = "aws_organizations_policy_attachment" in
  let __resource =
    ({ id; policy_id; skip_destroy; target_id }
      : aws_organizations_policy_attachment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_organizations_policy_attachment __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       policy_id =
         Prop.computed __resource_type __resource_id "policy_id";
       skip_destroy =
         Prop.computed __resource_type __resource_id "skip_destroy";
       target_id =
         Prop.computed __resource_type __resource_id "target_id";
     }
      : t)
  in
  __resource_attributes

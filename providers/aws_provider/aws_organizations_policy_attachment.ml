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

let aws_organizations_policy_attachment ?id ?skip_destroy ~policy_id
    ~target_id __resource_id =
  let __resource_type = "aws_organizations_policy_attachment" in
  let __resource = { id; policy_id; skip_destroy; target_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_organizations_policy_attachment __resource);
  ()

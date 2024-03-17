(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_inspector2_member_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_inspector2_member_association__timeouts *)

type aws_inspector2_member_association = {
  account_id : string prop;  (** account_id *)
  id : string prop option; [@option]  (** id *)
  timeouts : aws_inspector2_member_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_inspector2_member_association *)

let aws_inspector2_member_association ?id ?timeouts ~account_id
    __resource_id =
  let __resource_type = "aws_inspector2_member_association" in
  let __resource = { account_id; id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_inspector2_member_association __resource);
  ()

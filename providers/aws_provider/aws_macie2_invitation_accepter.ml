(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_macie2_invitation_accepter__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_macie2_invitation_accepter__timeouts *)

type aws_macie2_invitation_accepter = {
  administrator_account_id : string;  (** administrator_account_id *)
  timeouts : aws_macie2_invitation_accepter__timeouts option;
}
[@@deriving yojson_of]
(** aws_macie2_invitation_accepter *)

let aws_macie2_invitation_accepter ?timeouts
    ~administrator_account_id __resource_id =
  let __resource_type = "aws_macie2_invitation_accepter" in
  let __resource = { administrator_account_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_macie2_invitation_accepter __resource);
  ()

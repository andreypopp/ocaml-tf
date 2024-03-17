(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_guardduty_invite_accepter__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_guardduty_invite_accepter__timeouts *)

type aws_guardduty_invite_accepter = {
  detector_id : string;  (** detector_id *)
  id : string option; [@option]  (** id *)
  master_account_id : string;  (** master_account_id *)
  timeouts : aws_guardduty_invite_accepter__timeouts option;
}
[@@deriving yojson_of]
(** aws_guardduty_invite_accepter *)

let aws_guardduty_invite_accepter ?id ?timeouts ~detector_id
    ~master_account_id __resource_id =
  let __resource_type = "aws_guardduty_invite_accepter" in
  let __resource =
    { detector_id; id; master_account_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_guardduty_invite_accepter __resource);
  ()

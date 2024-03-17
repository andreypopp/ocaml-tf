(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_securityhub_invite_accepter = {
  id : string option; [@option]  (** id *)
  master_id : string;  (** master_id *)
}
[@@deriving yojson_of]
(** aws_securityhub_invite_accepter *)

let aws_securityhub_invite_accepter ?id ~master_id __resource_id =
  let __resource_type = "aws_securityhub_invite_accepter" in
  let __resource = { id; master_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_securityhub_invite_accepter __resource);
  ()

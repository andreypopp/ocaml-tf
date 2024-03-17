(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_transfer_ssh_key = {
  body : string;  (** body *)
  server_id : string;  (** server_id *)
  user_name : string;  (** user_name *)
}
[@@deriving yojson_of]
(** aws_transfer_ssh_key *)

let aws_transfer_ssh_key ~body ~server_id ~user_name __resource_id =
  let __resource_type = "aws_transfer_ssh_key" in
  let __resource = { body; server_id; user_name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_transfer_ssh_key __resource);
  ()

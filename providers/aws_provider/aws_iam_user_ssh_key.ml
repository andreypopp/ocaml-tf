(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_user_ssh_key = {
  encoding : string;  (** encoding *)
  id : string option; [@option]  (** id *)
  public_key : string;  (** public_key *)
  status : string option; [@option]  (** status *)
  username : string;  (** username *)
}
[@@deriving yojson_of]
(** aws_iam_user_ssh_key *)

let aws_iam_user_ssh_key ?id ?status ~encoding ~public_key ~username
    __resource_id =
  let __resource_type = "aws_iam_user_ssh_key" in
  let __resource = { encoding; id; public_key; status; username } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_user_ssh_key __resource);
  ()

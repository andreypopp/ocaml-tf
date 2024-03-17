(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_user_ssh_key = {
  encoding : string prop;  (** encoding *)
  id : string prop option; [@option]  (** id *)
  public_key : string prop;  (** public_key *)
  status : string prop option; [@option]  (** status *)
  username : string prop;  (** username *)
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

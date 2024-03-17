(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_access_key = {
  id : string prop option; [@option]  (** id *)
  pgp_key : string prop option; [@option]  (** pgp_key *)
  status : string prop option; [@option]  (** status *)
  user : string prop;  (** user *)
}
[@@deriving yojson_of]
(** aws_iam_access_key *)

let aws_iam_access_key ?id ?pgp_key ?status ~user __resource_id =
  let __resource_type = "aws_iam_access_key" in
  let __resource = { id; pgp_key; status; user } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_access_key __resource);
  ()

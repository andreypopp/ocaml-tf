(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_secretsmanager_secret_version = {
  secret_binary : string option; [@option]  (** secret_binary *)
  secret_id : string;  (** secret_id *)
  secret_string : string option; [@option]  (** secret_string *)
}
[@@deriving yojson_of]
(** aws_secretsmanager_secret_version *)

let aws_secretsmanager_secret_version ?secret_binary ?secret_string
    ~secret_id __resource_id =
  let __resource_type = "aws_secretsmanager_secret_version" in
  let __resource = { secret_binary; secret_id; secret_string } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_secretsmanager_secret_version __resource);
  ()

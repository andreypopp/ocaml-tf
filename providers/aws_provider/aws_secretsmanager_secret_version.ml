(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_secretsmanager_secret_version = {
  id : string prop option; [@option]  (** id *)
  secret_binary : string prop option; [@option]  (** secret_binary *)
  secret_id : string prop;  (** secret_id *)
  secret_string : string prop option; [@option]  (** secret_string *)
  version_stages : string prop list option; [@option]
      (** version_stages *)
}
[@@deriving yojson_of]
(** aws_secretsmanager_secret_version *)

let aws_secretsmanager_secret_version ?id ?secret_binary
    ?secret_string ?version_stages ~secret_id __resource_id =
  let __resource_type = "aws_secretsmanager_secret_version" in
  let __resource =
    { id; secret_binary; secret_id; secret_string; version_stages }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_secretsmanager_secret_version __resource);
  ()

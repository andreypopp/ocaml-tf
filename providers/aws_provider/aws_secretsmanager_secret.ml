(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_secretsmanager_secret__replica = {
  kms_key_id : string option; [@option]  (** kms_key_id *)
  last_accessed_date : string;  (** last_accessed_date *)
  region : string;  (** region *)
  status : string;  (** status *)
  status_message : string;  (** status_message *)
}
[@@deriving yojson_of]
(** aws_secretsmanager_secret__replica *)

type aws_secretsmanager_secret = {
  description : string option; [@option]  (** description *)
  force_overwrite_replica_secret : bool option; [@option]
      (** force_overwrite_replica_secret *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
  recovery_window_in_days : float option; [@option]
      (** recovery_window_in_days *)
  tags : (string * string) list option; [@option]  (** tags *)
  replica : aws_secretsmanager_secret__replica list;
}
[@@deriving yojson_of]
(** aws_secretsmanager_secret *)

let aws_secretsmanager_secret ?description
    ?force_overwrite_replica_secret ?kms_key_id
    ?recovery_window_in_days ?tags ~replica __resource_id =
  let __resource_type = "aws_secretsmanager_secret" in
  let __resource =
    {
      description;
      force_overwrite_replica_secret;
      kms_key_id;
      recovery_window_in_days;
      tags;
      replica;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_secretsmanager_secret __resource);
  ()

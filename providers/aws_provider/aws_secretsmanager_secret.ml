(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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
  id : string option; [@option]  (** id *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
  name : string option; [@option]  (** name *)
  name_prefix : string option; [@option]  (** name_prefix *)
  policy : string option; [@option]  (** policy *)
  recovery_window_in_days : float option; [@option]
      (** recovery_window_in_days *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  replica : aws_secretsmanager_secret__replica list;
}
[@@deriving yojson_of]
(** aws_secretsmanager_secret *)

let aws_secretsmanager_secret ?description
    ?force_overwrite_replica_secret ?id ?kms_key_id ?name
    ?name_prefix ?policy ?recovery_window_in_days ?tags ?tags_all
    ~replica __resource_id =
  let __resource_type = "aws_secretsmanager_secret" in
  let __resource =
    {
      description;
      force_overwrite_replica_secret;
      id;
      kms_key_id;
      name;
      name_prefix;
      policy;
      recovery_window_in_days;
      tags;
      tags_all;
      replica;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_secretsmanager_secret __resource);
  ()

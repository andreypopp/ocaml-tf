(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_kms_replica_key = {
  bypass_policy_lockout_safety_check : bool option; [@option]
      (** bypass_policy_lockout_safety_check *)
  deletion_window_in_days : float option; [@option]
      (** deletion_window_in_days *)
  description : string option; [@option]  (** description *)
  enabled : bool option; [@option]  (** enabled *)
  id : string option; [@option]  (** id *)
  policy : string option; [@option]  (** policy *)
  primary_key_arn : string;  (** primary_key_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_kms_replica_key *)

let aws_kms_replica_key ?bypass_policy_lockout_safety_check
    ?deletion_window_in_days ?description ?enabled ?id ?policy ?tags
    ?tags_all ~primary_key_arn __resource_id =
  let __resource_type = "aws_kms_replica_key" in
  let __resource =
    {
      bypass_policy_lockout_safety_check;
      deletion_window_in_days;
      description;
      enabled;
      id;
      policy;
      primary_key_arn;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kms_replica_key __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_kms_replica_key = {
  bypass_policy_lockout_safety_check : bool prop option; [@option]
      (** bypass_policy_lockout_safety_check *)
  deletion_window_in_days : float prop option; [@option]
      (** deletion_window_in_days *)
  description : string prop option; [@option]  (** description *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  policy : string prop option; [@option]  (** policy *)
  primary_key_arn : string prop;  (** primary_key_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
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

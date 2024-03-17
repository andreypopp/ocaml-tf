(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_cloudwatch_log_group = {
  kms_key_id : string option; [@option]  (** kms_key_id *)
  retention_in_days : float option; [@option]
      (** retention_in_days *)
  skip_destroy : bool option; [@option]  (** skip_destroy *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_log_group *)

let aws_cloudwatch_log_group ?kms_key_id ?retention_in_days
    ?skip_destroy ?tags __resource_id =
  let __resource_type = "aws_cloudwatch_log_group" in
  let __resource =
    { kms_key_id; retention_in_days; skip_destroy; tags }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_log_group __resource);
  ()

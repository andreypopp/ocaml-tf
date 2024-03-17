(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshiftserverless_usage_limit = {
  amount : float;  (** amount *)
  breach_action : string option; [@option]  (** breach_action *)
  period : string option; [@option]  (** period *)
  resource_arn : string;  (** resource_arn *)
  usage_type : string;  (** usage_type *)
}
[@@deriving yojson_of]
(** aws_redshiftserverless_usage_limit *)

let aws_redshiftserverless_usage_limit ?breach_action ?period ~amount
    ~resource_arn ~usage_type __resource_id =
  let __resource_type = "aws_redshiftserverless_usage_limit" in
  let __resource =
    { amount; breach_action; period; resource_arn; usage_type }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshiftserverless_usage_limit __resource);
  ()

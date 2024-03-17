(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshiftserverless_usage_limit = {
  amount : float prop;  (** amount *)
  breach_action : string prop option; [@option]  (** breach_action *)
  id : string prop option; [@option]  (** id *)
  period : string prop option; [@option]  (** period *)
  resource_arn : string prop;  (** resource_arn *)
  usage_type : string prop;  (** usage_type *)
}
[@@deriving yojson_of]
(** aws_redshiftserverless_usage_limit *)

let aws_redshiftserverless_usage_limit ?breach_action ?id ?period
    ~amount ~resource_arn ~usage_type __resource_id =
  let __resource_type = "aws_redshiftserverless_usage_limit" in
  let __resource =
    { amount; breach_action; id; period; resource_arn; usage_type }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshiftserverless_usage_limit __resource);
  ()

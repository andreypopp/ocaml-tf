(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_redshift_usage_limit = {
  amount : float;  (** amount *)
  breach_action : string option; [@option]  (** breach_action *)
  cluster_identifier : string;  (** cluster_identifier *)
  feature_type : string;  (** feature_type *)
  limit_type : string;  (** limit_type *)
  period : string option; [@option]  (** period *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_redshift_usage_limit *)

let aws_redshift_usage_limit ?breach_action ?period ?tags ~amount
    ~cluster_identifier ~feature_type ~limit_type __resource_id =
  let __resource_type = "aws_redshift_usage_limit" in
  let __resource =
    {
      amount;
      breach_action;
      cluster_identifier;
      feature_type;
      limit_type;
      period;
      tags;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_usage_limit __resource);
  ()

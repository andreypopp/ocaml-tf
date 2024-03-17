(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshift_usage_limit = {
  amount : float;  (** amount *)
  breach_action : string option; [@option]  (** breach_action *)
  cluster_identifier : string;  (** cluster_identifier *)
  feature_type : string;  (** feature_type *)
  id : string option; [@option]  (** id *)
  limit_type : string;  (** limit_type *)
  period : string option; [@option]  (** period *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_redshift_usage_limit *)

let aws_redshift_usage_limit ?breach_action ?id ?period ?tags
    ?tags_all ~amount ~cluster_identifier ~feature_type ~limit_type
    __resource_id =
  let __resource_type = "aws_redshift_usage_limit" in
  let __resource =
    {
      amount;
      breach_action;
      cluster_identifier;
      feature_type;
      id;
      limit_type;
      period;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_usage_limit __resource);
  ()

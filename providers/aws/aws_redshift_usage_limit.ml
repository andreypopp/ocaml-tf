(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshift_usage_limit = {
  amount : float prop;  (** amount *)
  breach_action : string prop option; [@option]  (** breach_action *)
  cluster_identifier : string prop;  (** cluster_identifier *)
  feature_type : string prop;  (** feature_type *)
  id : string prop option; [@option]  (** id *)
  limit_type : string prop;  (** limit_type *)
  period : string prop option; [@option]  (** period *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_redshift_usage_limit *)

let aws_redshift_usage_limit ?breach_action ?id ?period ?tags
    ?tags_all ~amount ~cluster_identifier ~feature_type ~limit_type
    () : aws_redshift_usage_limit =
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

type t = {
  amount : float prop;
  arn : string prop;
  breach_action : string prop;
  cluster_identifier : string prop;
  feature_type : string prop;
  id : string prop;
  limit_type : string prop;
  period : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?breach_action ?id ?period ?tags ?tags_all
    ~amount ~cluster_identifier ~feature_type ~limit_type
    __resource_id =
  let __resource_type = "aws_redshift_usage_limit" in
  let __resource =
    aws_redshift_usage_limit ?breach_action ?id ?period ?tags
      ?tags_all ~amount ~cluster_identifier ~feature_type ~limit_type
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_usage_limit __resource);
  let __resource_attributes =
    ({
       amount = Prop.computed __resource_type __resource_id "amount";
       arn = Prop.computed __resource_type __resource_id "arn";
       breach_action =
         Prop.computed __resource_type __resource_id "breach_action";
       cluster_identifier =
         Prop.computed __resource_type __resource_id
           "cluster_identifier";
       feature_type =
         Prop.computed __resource_type __resource_id "feature_type";
       id = Prop.computed __resource_type __resource_id "id";
       limit_type =
         Prop.computed __resource_type __resource_id "limit_type";
       period = Prop.computed __resource_type __resource_id "period";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes

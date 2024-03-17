(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_rds_cluster_endpoint = {
  cluster_endpoint_identifier : string prop;
      (** cluster_endpoint_identifier *)
  cluster_identifier : string prop;  (** cluster_identifier *)
  custom_endpoint_type : string prop;  (** custom_endpoint_type *)
  excluded_members : string prop list option; [@option]
      (** excluded_members *)
  id : string prop option; [@option]  (** id *)
  static_members : string prop list option; [@option]
      (** static_members *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_rds_cluster_endpoint *)

type t = {
  arn : string prop;
  cluster_endpoint_identifier : string prop;
  cluster_identifier : string prop;
  custom_endpoint_type : string prop;
  endpoint : string prop;
  excluded_members : string list prop;
  id : string prop;
  static_members : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_rds_cluster_endpoint ?excluded_members ?id ?static_members
    ?tags ?tags_all ~cluster_endpoint_identifier ~cluster_identifier
    ~custom_endpoint_type __resource_id =
  let __resource_type = "aws_rds_cluster_endpoint" in
  let __resource =
    ({
       cluster_endpoint_identifier;
       cluster_identifier;
       custom_endpoint_type;
       excluded_members;
       id;
       static_members;
       tags;
       tags_all;
     }
      : aws_rds_cluster_endpoint)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_rds_cluster_endpoint __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       cluster_endpoint_identifier =
         Prop.computed __resource_type __resource_id
           "cluster_endpoint_identifier";
       cluster_identifier =
         Prop.computed __resource_type __resource_id
           "cluster_identifier";
       custom_endpoint_type =
         Prop.computed __resource_type __resource_id
           "custom_endpoint_type";
       endpoint =
         Prop.computed __resource_type __resource_id "endpoint";
       excluded_members =
         Prop.computed __resource_type __resource_id
           "excluded_members";
       id = Prop.computed __resource_type __resource_id "id";
       static_members =
         Prop.computed __resource_type __resource_id "static_members";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes

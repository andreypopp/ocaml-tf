(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_neptune_cluster_endpoint = {
  cluster_endpoint_identifier : string prop;
      (** cluster_endpoint_identifier *)
  cluster_identifier : string prop;  (** cluster_identifier *)
  endpoint_type : string prop;  (** endpoint_type *)
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
(** aws_neptune_cluster_endpoint *)

let aws_neptune_cluster_endpoint ?excluded_members ?id
    ?static_members ?tags ?tags_all ~cluster_endpoint_identifier
    ~cluster_identifier ~endpoint_type () :
    aws_neptune_cluster_endpoint =
  {
    cluster_endpoint_identifier;
    cluster_identifier;
    endpoint_type;
    excluded_members;
    id;
    static_members;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  cluster_endpoint_identifier : string prop;
  cluster_identifier : string prop;
  endpoint : string prop;
  endpoint_type : string prop;
  excluded_members : string list prop;
  id : string prop;
  static_members : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?excluded_members ?id ?static_members ?tags
    ?tags_all ~cluster_endpoint_identifier ~cluster_identifier
    ~endpoint_type __resource_id =
  let __resource_type = "aws_neptune_cluster_endpoint" in
  let __resource =
    aws_neptune_cluster_endpoint ?excluded_members ?id
      ?static_members ?tags ?tags_all ~cluster_endpoint_identifier
      ~cluster_identifier ~endpoint_type ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_neptune_cluster_endpoint __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       cluster_endpoint_identifier =
         Prop.computed __resource_type __resource_id
           "cluster_endpoint_identifier";
       cluster_identifier =
         Prop.computed __resource_type __resource_id
           "cluster_identifier";
       endpoint =
         Prop.computed __resource_type __resource_id "endpoint";
       endpoint_type =
         Prop.computed __resource_type __resource_id "endpoint_type";
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

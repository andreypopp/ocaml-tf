(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type parameter = {
  apply_method : string prop option; [@option]  (** apply_method *)
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** parameter *)

type aws_rds_cluster_parameter_group = {
  description : string prop option; [@option]  (** description *)
  family : string prop;  (** family *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  parameter : parameter list;
}
[@@deriving yojson_of]
(** aws_rds_cluster_parameter_group *)

let parameter ?apply_method ~name ~value () : parameter =
  { apply_method; name; value }

let aws_rds_cluster_parameter_group ?description ?id ?name
    ?name_prefix ?tags ?tags_all ~family ~parameter () :
    aws_rds_cluster_parameter_group =
  {
    description;
    family;
    id;
    name;
    name_prefix;
    tags;
    tags_all;
    parameter;
  }

type t = {
  arn : string prop;
  description : string prop;
  family : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?description ?id ?name ?name_prefix ?tags
    ?tags_all ~family ~parameter __resource_id =
  let __resource_type = "aws_rds_cluster_parameter_group" in
  let __resource =
    aws_rds_cluster_parameter_group ?description ?id ?name
      ?name_prefix ?tags ?tags_all ~family ~parameter ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_rds_cluster_parameter_group __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       family = Prop.computed __resource_type __resource_id "family";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       name_prefix =
         Prop.computed __resource_type __resource_id "name_prefix";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes

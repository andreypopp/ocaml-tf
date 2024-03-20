(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?description ?id ?name ?name_prefix ?tags ?tags_all ~family
    ~parameter __id =
  let __type = "aws_rds_cluster_parameter_group" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       family = Prop.computed __type __id "family";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_rds_cluster_parameter_group
        (aws_rds_cluster_parameter_group ?description ?id ?name
           ?name_prefix ?tags ?tags_all ~family ~parameter ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?name ?name_prefix ?tags
    ?tags_all ~family ~parameter __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?name ?name_prefix ?tags ?tags_all ~family
      ~parameter __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_detective_graph = {
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_detective_graph *)

type t = {
  created_time : string prop;
  graph_arn : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_detective_graph ?id ?tags ?tags_all __resource_id =
  let __resource_type = "aws_detective_graph" in
  let __resource = ({ id; tags; tags_all } : aws_detective_graph) in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_detective_graph __resource);
  let __resource_attributes =
    ({
       created_time =
         Prop.computed __resource_type __resource_id "created_time";
       graph_arn =
         Prop.computed __resource_type __resource_id "graph_arn";
       id = Prop.computed __resource_type __resource_id "id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes

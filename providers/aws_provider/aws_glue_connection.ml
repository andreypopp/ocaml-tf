(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_glue_connection__physical_connection_requirements = {
  availability_zone : string prop option; [@option]
      (** availability_zone *)
  security_group_id_list : string prop list option; [@option]
      (** security_group_id_list *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
}
[@@deriving yojson_of]
(** aws_glue_connection__physical_connection_requirements *)

type aws_glue_connection = {
  catalog_id : string prop option; [@option]  (** catalog_id *)
  connection_properties : (string * string prop) list option;
      [@option]
      (** connection_properties *)
  connection_type : string prop option; [@option]
      (** connection_type *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  match_criteria : string prop list option; [@option]
      (** match_criteria *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  physical_connection_requirements :
    aws_glue_connection__physical_connection_requirements list;
}
[@@deriving yojson_of]
(** aws_glue_connection *)

let aws_glue_connection ?catalog_id ?connection_properties
    ?connection_type ?description ?id ?match_criteria ?tags ?tags_all
    ~name ~physical_connection_requirements __resource_id =
  let __resource_type = "aws_glue_connection" in
  let __resource =
    {
      catalog_id;
      connection_properties;
      connection_type;
      description;
      id;
      match_criteria;
      name;
      tags;
      tags_all;
      physical_connection_requirements;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_connection __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_glue_connection__physical_connection_requirements = {
  availability_zone : string option; [@option]
      (** availability_zone *)
  security_group_id_list : string list option; [@option]
      (** security_group_id_list *)
  subnet_id : string option; [@option]  (** subnet_id *)
}
[@@deriving yojson_of]
(** aws_glue_connection__physical_connection_requirements *)

type aws_glue_connection = {
  connection_properties : (string * string) list option; [@option]
      (** connection_properties *)
  connection_type : string option; [@option]  (** connection_type *)
  description : string option; [@option]  (** description *)
  match_criteria : string list option; [@option]
      (** match_criteria *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  physical_connection_requirements :
    aws_glue_connection__physical_connection_requirements list;
}
[@@deriving yojson_of]
(** aws_glue_connection *)

let aws_glue_connection ?connection_properties ?connection_type
    ?description ?match_criteria ?tags ~name
    ~physical_connection_requirements __resource_id =
  let __resource_type = "aws_glue_connection" in
  let __resource =
    {
      connection_properties;
      connection_type;
      description;
      match_criteria;
      name;
      tags;
      physical_connection_requirements;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_connection __resource);
  ()

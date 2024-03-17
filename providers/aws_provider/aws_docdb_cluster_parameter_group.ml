(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_docdb_cluster_parameter_group__parameter = {
  apply_method : string option; [@option]  (** apply_method *)
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_docdb_cluster_parameter_group__parameter *)

type aws_docdb_cluster_parameter_group = {
  description : string option; [@option]  (** description *)
  family : string;  (** family *)
  tags : (string * string) list option; [@option]  (** tags *)
  parameter : aws_docdb_cluster_parameter_group__parameter list;
}
[@@deriving yojson_of]
(** aws_docdb_cluster_parameter_group *)

let aws_docdb_cluster_parameter_group ?description ?tags ~family
    ~parameter __resource_id =
  let __resource_type = "aws_docdb_cluster_parameter_group" in
  let __resource = { description; family; tags; parameter } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_docdb_cluster_parameter_group __resource);
  ()

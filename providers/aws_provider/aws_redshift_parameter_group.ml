(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshift_parameter_group__parameter = {
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_redshift_parameter_group__parameter *)

type aws_redshift_parameter_group = {
  description : string option; [@option]  (** description *)
  family : string;  (** family *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  parameter : aws_redshift_parameter_group__parameter list;
}
[@@deriving yojson_of]
(** aws_redshift_parameter_group *)

let aws_redshift_parameter_group ?description ?tags ~family ~name
    ~parameter __resource_id =
  let __resource_type = "aws_redshift_parameter_group" in
  let __resource = { description; family; name; tags; parameter } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_parameter_group __resource);
  ()

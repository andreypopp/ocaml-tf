(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_elasticache_parameter_group__parameter = {
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_elasticache_parameter_group__parameter *)

type aws_elasticache_parameter_group = {
  description : string option; [@option]  (** description *)
  family : string;  (** family *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  parameter : aws_elasticache_parameter_group__parameter list;
}
[@@deriving yojson_of]
(** aws_elasticache_parameter_group *)

let aws_elasticache_parameter_group ?description ?id ?tags ?tags_all
    ~family ~name ~parameter __resource_id =
  let __resource_type = "aws_elasticache_parameter_group" in
  let __resource =
    { description; family; id; name; tags; tags_all; parameter }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elasticache_parameter_group __resource);
  ()

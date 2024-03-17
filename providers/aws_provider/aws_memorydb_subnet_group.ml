(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_memorydb_subnet_group = {
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  name : string option; [@option]  (** name *)
  name_prefix : string option; [@option]  (** name_prefix *)
  subnet_ids : string list;  (** subnet_ids *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_memorydb_subnet_group *)

let aws_memorydb_subnet_group ?description ?id ?name ?name_prefix
    ?tags ?tags_all ~subnet_ids __resource_id =
  let __resource_type = "aws_memorydb_subnet_group" in
  let __resource =
    {
      description;
      id;
      name;
      name_prefix;
      subnet_ids;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_memorydb_subnet_group __resource);
  ()

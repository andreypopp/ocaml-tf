(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_placement_group = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  partition_count : float prop option; [@option]
      (** partition_count *)
  spread_level : string prop option; [@option]  (** spread_level *)
  strategy : string prop;  (** strategy *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_placement_group *)

let aws_placement_group ?id ?partition_count ?spread_level ?tags
    ?tags_all ~name ~strategy __resource_id =
  let __resource_type = "aws_placement_group" in
  let __resource =
    {
      id;
      name;
      partition_count;
      spread_level;
      strategy;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_placement_group __resource);
  ()

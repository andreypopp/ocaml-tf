(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_evidently_feature__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_evidently_feature__timeouts *)

type aws_evidently_feature__variations__value = {
  bool_value : string option; [@option]  (** bool_value *)
  double_value : string option; [@option]  (** double_value *)
  long_value : string option; [@option]  (** long_value *)
  string_value : string option; [@option]  (** string_value *)
}
[@@deriving yojson_of]
(** aws_evidently_feature__variations__value *)

type aws_evidently_feature__variations = {
  name : string;  (** name *)
  value : aws_evidently_feature__variations__value list;
}
[@@deriving yojson_of]
(** aws_evidently_feature__variations *)

type aws_evidently_feature__evaluation_rules = {
  name : string;  (** name *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type aws_evidently_feature = {
  default_variation : string option; [@option]
      (** default_variation *)
  description : string option; [@option]  (** description *)
  entity_overrides : (string * string) list option; [@option]
      (** entity_overrides *)
  evaluation_strategy : string option; [@option]
      (** evaluation_strategy *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  project : string;  (** project *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  timeouts : aws_evidently_feature__timeouts option;
  variations : aws_evidently_feature__variations list;
}
[@@deriving yojson_of]
(** aws_evidently_feature *)

let aws_evidently_feature ?default_variation ?description
    ?entity_overrides ?evaluation_strategy ?id ?tags ?tags_all
    ?timeouts ~name ~project ~variations __resource_id =
  let __resource_type = "aws_evidently_feature" in
  let __resource =
    {
      default_variation;
      description;
      entity_overrides;
      evaluation_strategy;
      id;
      name;
      project;
      tags;
      tags_all;
      timeouts;
      variations;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_evidently_feature __resource);
  ()

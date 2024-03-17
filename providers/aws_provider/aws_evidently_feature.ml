(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_evidently_feature__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_evidently_feature__timeouts *)

type aws_evidently_feature__variations__value = {
  bool_value : string prop option; [@option]  (** bool_value *)
  double_value : string prop option; [@option]  (** double_value *)
  long_value : string prop option; [@option]  (** long_value *)
  string_value : string prop option; [@option]  (** string_value *)
}
[@@deriving yojson_of]
(** aws_evidently_feature__variations__value *)

type aws_evidently_feature__variations = {
  name : string prop;  (** name *)
  value : aws_evidently_feature__variations__value list;
}
[@@deriving yojson_of]
(** aws_evidently_feature__variations *)

type aws_evidently_feature__evaluation_rules = {
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type aws_evidently_feature = {
  default_variation : string prop option; [@option]
      (** default_variation *)
  description : string prop option; [@option]  (** description *)
  entity_overrides : (string * string prop) list option; [@option]
      (** entity_overrides *)
  evaluation_strategy : string prop option; [@option]
      (** evaluation_strategy *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  project : string prop;  (** project *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
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

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_accessanalyzer_analyzer__configuration__unused_access = {
  unused_access_age : float prop option; [@option]
      (** unused_access_age *)
}
[@@deriving yojson_of]
(** aws_accessanalyzer_analyzer__configuration__unused_access *)

type aws_accessanalyzer_analyzer__configuration = {
  unused_access :
    aws_accessanalyzer_analyzer__configuration__unused_access list;
}
[@@deriving yojson_of]
(** aws_accessanalyzer_analyzer__configuration *)

type aws_accessanalyzer_analyzer = {
  analyzer_name : string prop;  (** analyzer_name *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  configuration : aws_accessanalyzer_analyzer__configuration list;
}
[@@deriving yojson_of]
(** aws_accessanalyzer_analyzer *)

type t = {
  analyzer_name : string prop;
  arn : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let aws_accessanalyzer_analyzer ?id ?tags ?tags_all ?type_
    ~analyzer_name ~configuration __resource_id =
  let __resource_type = "aws_accessanalyzer_analyzer" in
  let __resource =
    ({ analyzer_name; id; tags; tags_all; type_; configuration }
      : aws_accessanalyzer_analyzer)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_accessanalyzer_analyzer __resource);
  let __resource_attributes =
    ({
       analyzer_name =
         Prop.computed __resource_type __resource_id "analyzer_name";
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes

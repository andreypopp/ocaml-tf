(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_resourceexplorer2_view__filters = {
  filter_string : string prop;  (** filter_string *)
}
[@@deriving yojson_of]
(** aws_resourceexplorer2_view__filters *)

type aws_resourceexplorer2_view__included_property = {
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_resourceexplorer2_view__included_property *)

type aws_resourceexplorer2_view = {
  default_view : bool prop option; [@option]  (** default_view *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  filters : aws_resourceexplorer2_view__filters list;
  included_property :
    aws_resourceexplorer2_view__included_property list;
}
[@@deriving yojson_of]
(** aws_resourceexplorer2_view *)

type t = {
  arn : string prop;
  default_view : bool prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_resourceexplorer2_view ?default_view ?tags ~name ~filters
    ~included_property __resource_id =
  let __resource_type = "aws_resourceexplorer2_view" in
  let __resource =
    ({ default_view; name; tags; filters; included_property }
      : aws_resourceexplorer2_view)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_resourceexplorer2_view __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       default_view =
         Prop.computed __resource_type __resource_id "default_view";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes

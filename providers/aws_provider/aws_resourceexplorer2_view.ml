(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_resourceexplorer2_view__filters = {
  filter_string : string;  (** filter_string *)
}
[@@deriving yojson_of]
(** aws_resourceexplorer2_view__filters *)

type aws_resourceexplorer2_view__included_property = {
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** aws_resourceexplorer2_view__included_property *)

type aws_resourceexplorer2_view = {
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  filters : aws_resourceexplorer2_view__filters list;
  included_property :
    aws_resourceexplorer2_view__included_property list;
}
[@@deriving yojson_of]
(** aws_resourceexplorer2_view *)

let aws_resourceexplorer2_view ?tags ~name ~filters
    ~included_property __resource_id =
  let __resource_type = "aws_resourceexplorer2_view" in
  let __resource = { name; tags; filters; included_property } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_resourceexplorer2_view __resource);
  ()

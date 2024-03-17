(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codecatalyst_source_repository__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_codecatalyst_source_repository__timeouts *)

type aws_codecatalyst_source_repository = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  project_name : string;  (** project_name *)
  space_name : string;  (** space_name *)
  timeouts : aws_codecatalyst_source_repository__timeouts option;
}
[@@deriving yojson_of]
(** aws_codecatalyst_source_repository *)

let aws_codecatalyst_source_repository ?description ?timeouts ~name
    ~project_name ~space_name __resource_id =
  let __resource_type = "aws_codecatalyst_source_repository" in
  let __resource =
    { description; name; project_name; space_name; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codecatalyst_source_repository __resource);
  ()

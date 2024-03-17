(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codecatalyst_source_repository__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_codecatalyst_source_repository__timeouts *)

type aws_codecatalyst_source_repository = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  project_name : string prop;  (** project_name *)
  space_name : string prop;  (** space_name *)
  timeouts : aws_codecatalyst_source_repository__timeouts option;
}
[@@deriving yojson_of]
(** aws_codecatalyst_source_repository *)

type t = {
  description : string prop;
  id : string prop;
  name : string prop;
  project_name : string prop;
  space_name : string prop;
}

let aws_codecatalyst_source_repository ?description ?id ?timeouts
    ~name ~project_name ~space_name __resource_id =
  let __resource_type = "aws_codecatalyst_source_repository" in
  let __resource =
    ({ description; id; name; project_name; space_name; timeouts }
      : aws_codecatalyst_source_repository)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codecatalyst_source_repository __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       project_name =
         Prop.computed __resource_type __resource_id "project_name";
       space_name =
         Prop.computed __resource_type __resource_id "space_name";
     }
      : t)
  in
  __resource_attributes

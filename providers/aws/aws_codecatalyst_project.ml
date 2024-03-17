(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codecatalyst_project__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_codecatalyst_project__timeouts *)

type aws_codecatalyst_project = {
  description : string prop option; [@option]  (** description *)
  display_name : string prop;  (** display_name *)
  id : string prop option; [@option]  (** id *)
  space_name : string prop;  (** space_name *)
  timeouts : aws_codecatalyst_project__timeouts option;
}
[@@deriving yojson_of]
(** aws_codecatalyst_project *)

type t = {
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  space_name : string prop;
}

let aws_codecatalyst_project ?description ?id ?timeouts ~display_name
    ~space_name __resource_id =
  let __resource_type = "aws_codecatalyst_project" in
  let __resource =
    ({ description; display_name; id; space_name; timeouts }
      : aws_codecatalyst_project)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codecatalyst_project __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       space_name =
         Prop.computed __resource_type __resource_id "space_name";
     }
      : t)
  in
  __resource_attributes

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_athena_named_query = {
  database : string prop;  (** database *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  query : string prop;  (** query *)
  workgroup : string prop option; [@option]  (** workgroup *)
}
[@@deriving yojson_of]
(** aws_athena_named_query *)

type t = {
  database : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  query : string prop;
  workgroup : string prop;
}

let aws_athena_named_query ?description ?id ?workgroup ~database
    ~name ~query __resource_id =
  let __resource_type = "aws_athena_named_query" in
  let __resource =
    ({ database; description; id; name; query; workgroup }
      : aws_athena_named_query)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_athena_named_query __resource);
  let __resource_attributes =
    ({
       database =
         Prop.computed __resource_type __resource_id "database";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       query = Prop.computed __resource_type __resource_id "query";
       workgroup =
         Prop.computed __resource_type __resource_id "workgroup";
     }
      : t)
  in
  __resource_attributes

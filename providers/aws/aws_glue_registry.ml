(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_glue_registry = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  registry_name : string prop;  (** registry_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_glue_registry *)

let aws_glue_registry ?description ?id ?tags ?tags_all ~registry_name
    () : aws_glue_registry =
  { description; id; registry_name; tags; tags_all }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  registry_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?description ?id ?tags ?tags_all
    ~registry_name __resource_id =
  let __resource_type = "aws_glue_registry" in
  let __resource =
    aws_glue_registry ?description ?id ?tags ?tags_all ~registry_name
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_registry __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       registry_name =
         Prop.computed __resource_type __resource_id "registry_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes

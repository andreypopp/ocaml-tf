(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_schemas_discoverer = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  source_arn : string prop;  (** source_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_schemas_discoverer *)

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  source_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_schemas_discoverer ?description ?id ?tags ?tags_all
    ~source_arn __resource_id =
  let __resource_type = "aws_schemas_discoverer" in
  let __resource =
    ({ description; id; source_arn; tags; tags_all }
      : aws_schemas_discoverer)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_schemas_discoverer __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       source_arn =
         Prop.computed __resource_type __resource_id "source_arn";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_organizations_policy = {
  content : string prop;  (** content *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  skip_destroy : bool prop option; [@option]  (** skip_destroy *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_organizations_policy *)

let aws_organizations_policy ?description ?id ?skip_destroy ?tags
    ?tags_all ?type_ ~content ~name () : aws_organizations_policy =
  {
    content;
    description;
    id;
    name;
    skip_destroy;
    tags;
    tags_all;
    type_;
  }

type t = {
  arn : string prop;
  content : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  skip_destroy : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let register ?tf_module ?description ?id ?skip_destroy ?tags
    ?tags_all ?type_ ~content ~name __resource_id =
  let __resource_type = "aws_organizations_policy" in
  let __resource =
    aws_organizations_policy ?description ?id ?skip_destroy ?tags
      ?tags_all ?type_ ~content ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_organizations_policy __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       content =
         Prop.computed __resource_type __resource_id "content";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       skip_destroy =
         Prop.computed __resource_type __resource_id "skip_destroy";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes

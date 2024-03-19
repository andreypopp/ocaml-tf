(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type properties = {
  description : string prop option; [@option]  (** description *)
  searchable_attributes : string prop list option; [@option]
      (** searchable_attributes *)
}
[@@deriving yojson_of]
(** properties *)

type aws_iot_thing_type = {
  deprecated : bool prop option; [@option]  (** deprecated *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  properties : properties list;
}
[@@deriving yojson_of]
(** aws_iot_thing_type *)

let properties ?description ?searchable_attributes () : properties =
  { description; searchable_attributes }

let aws_iot_thing_type ?deprecated ?id ?tags ?tags_all ~name
    ~properties () : aws_iot_thing_type =
  { deprecated; id; name; tags; tags_all; properties }

type t = {
  arn : string prop;
  deprecated : bool prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?deprecated ?id ?tags ?tags_all ~name
    ~properties __resource_id =
  let __resource_type = "aws_iot_thing_type" in
  let __resource =
    aws_iot_thing_type ?deprecated ?id ?tags ?tags_all ~name
      ~properties ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iot_thing_type __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       deprecated =
         Prop.computed __resource_type __resource_id "deprecated";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes

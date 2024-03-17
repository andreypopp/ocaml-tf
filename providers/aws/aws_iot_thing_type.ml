(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iot_thing_type__properties = {
  description : string prop option; [@option]  (** description *)
  searchable_attributes : string prop list option; [@option]
      (** searchable_attributes *)
}
[@@deriving yojson_of]
(** aws_iot_thing_type__properties *)

type aws_iot_thing_type = {
  deprecated : bool prop option; [@option]  (** deprecated *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  properties : aws_iot_thing_type__properties list;
}
[@@deriving yojson_of]
(** aws_iot_thing_type *)

type t = {
  arn : string prop;
  deprecated : bool prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_iot_thing_type ?deprecated ?id ?tags ?tags_all ~name
    ~properties __resource_id =
  let __resource_type = "aws_iot_thing_type" in
  let __resource =
    ({ deprecated; id; name; tags; tags_all; properties }
      : aws_iot_thing_type)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
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

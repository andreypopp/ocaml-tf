(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_imagebuilder_workflow = {
  change_description : string prop option; [@option]
      (** change_description *)
  data : string prop option; [@option]  (** data *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop; [@key "type"]  (** type *)
  uri : string prop option; [@option]  (** uri *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_workflow *)

type t = {
  arn : string prop;
  change_description : string prop;
  data : string prop;
  date_created : string prop;
  description : string prop;
  id : string prop;
  kms_key_id : string prop;
  name : string prop;
  owner : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
  uri : string prop;
  version : string prop;
}

let aws_imagebuilder_workflow ?change_description ?data ?description
    ?id ?kms_key_id ?tags ?tags_all ?uri ~name ~type_ ~version
    __resource_id =
  let __resource_type = "aws_imagebuilder_workflow" in
  let __resource =
    ({
       change_description;
       data;
       description;
       id;
       kms_key_id;
       name;
       tags;
       tags_all;
       type_;
       uri;
       version;
     }
      : aws_imagebuilder_workflow)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_imagebuilder_workflow __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       change_description =
         Prop.computed __resource_type __resource_id
           "change_description";
       data = Prop.computed __resource_type __resource_id "data";
       date_created =
         Prop.computed __resource_type __resource_id "date_created";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_id =
         Prop.computed __resource_type __resource_id "kms_key_id";
       name = Prop.computed __resource_type __resource_id "name";
       owner = Prop.computed __resource_type __resource_id "owner";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       type_ = Prop.computed __resource_type __resource_id "type";
       uri = Prop.computed __resource_type __resource_id "uri";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes

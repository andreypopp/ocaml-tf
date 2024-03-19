(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_connect_contact_flow = {
  content : string prop option; [@option]  (** content *)
  content_hash : string prop option; [@option]  (** content_hash *)
  description : string prop option; [@option]  (** description *)
  filename : string prop option; [@option]  (** filename *)
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;  (** instance_id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_connect_contact_flow *)

let aws_connect_contact_flow ?content ?content_hash ?description
    ?filename ?id ?tags ?tags_all ?type_ ~instance_id ~name () :
    aws_connect_contact_flow =
  {
    content;
    content_hash;
    description;
    filename;
    id;
    instance_id;
    name;
    tags;
    tags_all;
    type_;
  }

type t = {
  arn : string prop;
  contact_flow_id : string prop;
  content : string prop;
  content_hash : string prop;
  description : string prop;
  filename : string prop;
  id : string prop;
  instance_id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let register ?tf_module ?content ?content_hash ?description ?filename
    ?id ?tags ?tags_all ?type_ ~instance_id ~name __resource_id =
  let __resource_type = "aws_connect_contact_flow" in
  let __resource =
    aws_connect_contact_flow ?content ?content_hash ?description
      ?filename ?id ?tags ?tags_all ?type_ ~instance_id ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_connect_contact_flow __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       contact_flow_id =
         Prop.computed __resource_type __resource_id
           "contact_flow_id";
       content =
         Prop.computed __resource_type __resource_id "content";
       content_hash =
         Prop.computed __resource_type __resource_id "content_hash";
       description =
         Prop.computed __resource_type __resource_id "description";
       filename =
         Prop.computed __resource_type __resource_id "filename";
       id = Prop.computed __resource_type __resource_id "id";
       instance_id =
         Prop.computed __resource_type __resource_id "instance_id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes

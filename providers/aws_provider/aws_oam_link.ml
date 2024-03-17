(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_oam_link__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_oam_link__timeouts *)

type aws_oam_link = {
  id : string prop option; [@option]  (** id *)
  label_template : string prop;  (** label_template *)
  resource_types : string prop list;  (** resource_types *)
  sink_identifier : string prop;  (** sink_identifier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : aws_oam_link__timeouts option;
}
[@@deriving yojson_of]
(** aws_oam_link *)

type t = {
  arn : string prop;
  id : string prop;
  label : string prop;
  label_template : string prop;
  link_id : string prop;
  resource_types : string list prop;
  sink_arn : string prop;
  sink_identifier : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_oam_link ?id ?tags ?tags_all ?timeouts ~label_template
    ~resource_types ~sink_identifier __resource_id =
  let __resource_type = "aws_oam_link" in
  let __resource =
    ({
       id;
       label_template;
       resource_types;
       sink_identifier;
       tags;
       tags_all;
       timeouts;
     }
      : aws_oam_link)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_oam_link __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       label = Prop.computed __resource_type __resource_id "label";
       label_template =
         Prop.computed __resource_type __resource_id "label_template";
       link_id =
         Prop.computed __resource_type __resource_id "link_id";
       resource_types =
         Prop.computed __resource_type __resource_id "resource_types";
       sink_arn =
         Prop.computed __resource_type __resource_id "sink_arn";
       sink_identifier =
         Prop.computed __resource_type __resource_id
           "sink_identifier";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes

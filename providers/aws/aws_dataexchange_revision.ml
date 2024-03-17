(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dataexchange_revision = {
  comment : string prop option; [@option]  (** comment *)
  data_set_id : string prop;  (** data_set_id *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_dataexchange_revision *)

type t = {
  arn : string prop;
  comment : string prop;
  data_set_id : string prop;
  id : string prop;
  revision_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_dataexchange_revision ?comment ?id ?tags ?tags_all
    ~data_set_id __resource_id =
  let __resource_type = "aws_dataexchange_revision" in
  let __resource =
    ({ comment; data_set_id; id; tags; tags_all }
      : aws_dataexchange_revision)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dataexchange_revision __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       comment =
         Prop.computed __resource_type __resource_id "comment";
       data_set_id =
         Prop.computed __resource_type __resource_id "data_set_id";
       id = Prop.computed __resource_type __resource_id "id";
       revision_id =
         Prop.computed __resource_type __resource_id "revision_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes

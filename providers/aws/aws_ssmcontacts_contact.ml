(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssmcontacts_contact = {
  alias : string prop;  (** alias *)
  display_name : string prop option; [@option]  (** display_name *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_ssmcontacts_contact *)

let aws_ssmcontacts_contact ?display_name ?id ?tags ?tags_all ~alias
    ~type_ () : aws_ssmcontacts_contact =
  { alias; display_name; id; tags; tags_all; type_ }

type t = {
  alias : string prop;
  arn : string prop;
  display_name : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let register ?tf_module ?display_name ?id ?tags ?tags_all ~alias
    ~type_ __resource_id =
  let __resource_type = "aws_ssmcontacts_contact" in
  let __resource =
    aws_ssmcontacts_contact ?display_name ?id ?tags ?tags_all ~alias
      ~type_ ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssmcontacts_contact __resource);
  let __resource_attributes =
    ({
       alias = Prop.computed __resource_type __resource_id "alias";
       arn = Prop.computed __resource_type __resource_id "arn";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
